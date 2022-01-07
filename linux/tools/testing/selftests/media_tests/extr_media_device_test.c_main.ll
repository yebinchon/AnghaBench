; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/media_tests/extr_media_device_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/media_tests/extr_media_device_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_device_info = type { i8*, i8* }

@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [-d </dev/mediaX>]\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"d:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Please run the test as root - Exiting.\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Media Device open errno %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [195 x i8] c"\0ANote:\0AWhile test is running, remove the device and\0Aensure there are no use after free errors and\0Aother Oops in the dmesg. Enable KaSan kernel\0Aconfig option for use-after-free error detection.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Running test for %d iterations\0A\00", align 1
@MEDIA_IOC_DEVICE_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Media Device Info errno %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Media device model %s driver %s - count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.media_device_info, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 @exit(i32 -1) #3
  unreachable

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %33 [
    i32 100, label %28
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @strncpy(i8* %29, i32 %30, i32 255)
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255
  store i8 0, i8* %32, align 1
  br label %39

33:                                               ; preds = %26
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = call i32 @exit(i32 -1) #3
  unreachable

39:                                               ; preds = %28
  br label %21

40:                                               ; preds = %21
  %41 = call i64 (...) @getuid()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  %46 = call i64 @time(i32* null)
  %47 = trunc i64 %46 to i32
  %48 = call i32 @srand(i32 %47)
  %49 = call i32 (...) @rand()
  store i32 %49, i32* %8, align 4
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %51 = load i32, i32* @O_RDWR, align 4
  %52 = call i32 @open(i8* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load i32, i32* @errno, align 4
  %57 = call i8* @strerror(i32 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = call i32 @exit(i32 -1) #3
  unreachable

60:                                               ; preds = %45
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %84, %60
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @MEDIA_IOC_DEVICE_INFO, align 4
  %70 = call i32 @ioctl(i32 %68, i32 %69, %struct.media_device_info* %9)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @errno, align 4
  %75 = call i8* @strerror(i32 %74)
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  br label %84

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.media_device_info, %struct.media_device_info* %9, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct.media_device_info, %struct.media_device_info* %9, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %79, i8* %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %73
  %85 = call i32 @sleep(i32 10)
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %8, align 4
  br label %64

88:                                               ; preds = %64
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @ksft_exit_skip(i8*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.media_device_info*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
