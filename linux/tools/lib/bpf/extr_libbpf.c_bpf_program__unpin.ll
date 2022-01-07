; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__unpin.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid program pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"no instances of prog %s to pin\0A\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_program__unpin(%struct.bpf_program* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_program*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @check_path(i8* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %103

18:                                               ; preds = %2
  %19 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %20 = icmp eq %struct.bpf_program* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %103

25:                                               ; preds = %18
  %26 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %27 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %33 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %103

38:                                               ; preds = %25
  %39 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %40 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @bpf_program__unpin_instance(%struct.bpf_program* %45, i8* %46, i32 0)
  store i32 %47, i32* %3, align 4
  br label %103

48:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %91, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %52 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %49
  %57 = load i32, i32* @PATH_MAX, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %8, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %9, align 8
  %61 = load i32, i32* @PATH_MAX, align 4
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @snprintf(i8* %60, i32 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %87

70:                                               ; preds = %56
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @PATH_MAX, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @ENAMETOOLONG, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %87

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @bpf_program__unpin_instance(%struct.bpf_program* %79, i8* %60, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %87

86:                                               ; preds = %78
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %84, %74, %67
  %88 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %11, align 4
  switch i32 %89, label %105 [
    i32 0, label %90
    i32 1, label %103
  ]

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %49

94:                                               ; preds = %49
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @rmdir(i8* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @errno, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %103

102:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %99, %87, %44, %31, %21, %16
  %104 = load i32, i32* %3, align 4
  ret i32 %104

105:                                              ; preds = %87
  unreachable
}

declare dso_local i32 @check_path(i8*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @bpf_program__unpin_instance(%struct.bpf_program*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
