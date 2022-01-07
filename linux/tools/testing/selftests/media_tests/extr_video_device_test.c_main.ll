; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/media_tests/extr_video_device_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/media_tests/extr_video_device_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_tuner = type { i8*, i32, i32, i32 }
%struct.v4l2_capability = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [-d </dev/videoX>]\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"d:\00", align 1
@optarg = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Video Device open errno %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [227 x i8] c"\0ANote:\0AWhile test is running, remove the device or unbind\0Adriver and ensure there are no use after free errors\0Aand other Oops in the dmesg. When possible, enable KaSan\0Akernel config option for use-after-free error detection.\0A\0A\00", align 1
@VIDIOC_QUERYCAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"VIDIOC_QUERYCAP errno %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Video device driver %s\0A\00", align 1
@VIDIOC_G_TUNER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"VIDIOC_G_TUNER, errno %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"type %d rangelow %d rangehigh %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_tuner, align 8
  %10 = alloca %struct.v4l2_capability, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 -1) #3
  unreachable

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %34 [
    i32 100, label %29
  ]

29:                                               ; preds = %27
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %31 = load i32, i32* @optarg, align 4
  %32 = call i32 @strncpy(i8* %30, i32 %31, i32 255)
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255
  store i8 0, i8* %33, align 1
  br label %40

34:                                               ; preds = %27
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = call i32 @exit(i32 -1) #3
  unreachable

40:                                               ; preds = %29
  br label %22

41:                                               ; preds = %22
  %42 = call i64 @time(i32* null)
  %43 = trunc i64 %42 to i32
  %44 = call i32 @srand(i32 %43)
  %45 = call i32 (...) @rand()
  store i32 %45, i32* %8, align 4
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %47 = load i32, i32* @O_RDWR, align 4
  %48 = call i32 @open(i8* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load i32, i32* @errno, align 4
  %53 = call i8* @strerror(i32 %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = call i32 @exit(i32 -1) #3
  unreachable

56:                                               ; preds = %41
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([227 x i8], [227 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %94, %56
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @VIDIOC_QUERYCAP, align 4
  %64 = bitcast %struct.v4l2_capability* %10 to %struct.v4l2_tuner*
  %65 = call i32 @ioctl(i32 %62, i32 %63, %struct.v4l2_tuner* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @errno, align 4
  %70 = call i8* @strerror(i32 %69)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  br label %76

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %10, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @VIDIOC_G_TUNER, align 4
  %79 = call i32 @ioctl(i32 %77, i32 %78, %struct.v4l2_tuner* %9)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @errno, align 4
  %84 = call i8* @strerror(i32 %83)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  br label %94

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %9, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %9, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %9, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %88, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %86, %82
  %95 = call i32 @sleep(i32 10)
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %8, align 4
  br label %58

98:                                               ; preds = %58
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.v4l2_tuner*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
