; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__pin_instance.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__pin_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid program pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"invalid prog instance %d of prog %s (max %d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to pin program: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"pinned program '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_program__pin_instance(%struct.bpf_program* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @STRERR_BUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @check_path(i8* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

23:                                               ; preds = %3
  %24 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %25 = icmp eq %struct.bpf_program* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %36 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %34, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %33, %30
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %43 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %46 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

52:                                               ; preds = %33
  %53 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %54 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @bpf_obj_pin(i32 %60, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %52
  %65 = load i32, i32* @errno, align 4
  %66 = trunc i64 %14 to i32
  %67 = call i8* @libbpf_strerror_r(i32 %65, i8* %16, i32 %66)
  store i8* %67, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @errno, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

72:                                               ; preds = %52
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %64, %40, %26, %21
  %76 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_path(i8*) #2

declare dso_local i32 @pr_warning(i8*, ...) #2

declare dso_local i64 @bpf_obj_pin(i32, i8*) #2

declare dso_local i8* @libbpf_strerror_r(i32, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
