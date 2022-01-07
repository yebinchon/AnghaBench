; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__pin.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__pin.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_program__pin(%struct.bpf_program* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_program*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @check_path(i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %143

21:                                               ; preds = %2
  %22 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %23 = icmp eq %struct.bpf_program* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %143

28:                                               ; preds = %21
  %29 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %30 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %36 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %143

41:                                               ; preds = %28
  %42 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %43 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @bpf_program__pin_instance(%struct.bpf_program* %48, i8* %49, i32 0)
  store i32 %50, i32* %3, align 4
  br label %143

51:                                               ; preds = %41
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @make_dir(i8* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %143

58:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %100, %58
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %62 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %59
  %67 = load i32, i32* @PATH_MAX, align 4
  %68 = zext i32 %67 to i64
  %69 = call i8* @llvm.stacksave()
  store i8* %69, i8** %8, align 8
  %70 = alloca i8, i64 %68, align 16
  store i64 %68, i64* %9, align 8
  %71 = load i32, i32* @PATH_MAX, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @snprintf(i8* %70, i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  store i32 5, i32* %11, align 4
  br label %96

80:                                               ; preds = %66
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @PATH_MAX, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @ENAMETOOLONG, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  store i32 5, i32* %11, align 4
  br label %96

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @bpf_program__pin_instance(%struct.bpf_program* %89, i8* %70, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 5, i32* %11, align 4
  br label %96

95:                                               ; preds = %88
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %94, %84, %77, %95
  %97 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %11, align 4
  switch i32 %98, label %145 [
    i32 0, label %99
    i32 5, label %104
  ]

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %59

103:                                              ; preds = %59
  store i32 0, i32* %3, align 4
  br label %143

104:                                              ; preds = %96
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %136, %104
  %108 = load i32, i32* %6, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %107
  %111 = load i32, i32* @PATH_MAX, align 4
  %112 = zext i32 %111 to i64
  %113 = call i8* @llvm.stacksave()
  store i8* %113, i8** %12, align 8
  %114 = alloca i8, i64 %112, align 16
  store i64 %112, i64* %13, align 8
  %115 = load i32, i32* @PATH_MAX, align 4
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @snprintf(i8* %114, i32 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %116, i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  store i32 8, i32* %11, align 4
  br label %132

122:                                              ; preds = %110
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @PATH_MAX, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 8, i32* %11, align 4
  br label %132

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @bpf_program__unpin_instance(%struct.bpf_program* %129, i8* %114, i32 %130)
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %128, %126, %121
  %133 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %11, align 4
  switch i32 %134, label %145 [
    i32 0, label %135
    i32 8, label %136
  ]

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %135, %132
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %6, align 4
  br label %107

139:                                              ; preds = %107
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @rmdir(i8* %140)
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %103, %56, %47, %34, %24, %19
  %144 = load i32, i32* %3, align 4
  ret i32 %144

145:                                              ; preds = %132, %96
  unreachable
}

declare dso_local i32 @check_path(i8*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @bpf_program__pin_instance(%struct.bpf_program*, i8*, i32) #1

declare dso_local i32 @make_dir(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @bpf_program__unpin_instance(%struct.bpf_program*, i8*, i32) #1

declare dso_local i32 @rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
