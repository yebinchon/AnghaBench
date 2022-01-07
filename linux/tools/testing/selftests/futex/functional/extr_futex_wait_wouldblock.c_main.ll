; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_wait_wouldblock.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_wait_wouldblock.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@timeout_ns = common dso_local global i32 0, align 4
@FUTEX_INITIALIZER = common dso_local global i64 0, align 8
@RET_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cht:v:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: Test the unexpected futex value in FUTEX_WAIT\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Calling futex_wait on f1: %u @ %p with val=%u\0A\00", align 1
@FUTEX_PRIVATE_FLAG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"futex_wait returned: %d %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RET_FAIL = common dso_local global i32 0, align 4
@TEST_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %12 = load i32, i32* @timeout_ns, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* @FUTEX_INITIALIZER, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @RET_PASS, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %43, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %10, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %36 [
    i32 99, label %23
    i32 104, label %25
    i32 118, label %32
  ]

23:                                               ; preds = %21
  %24 = call i32 @log_color(i32 1)
  br label %43

25:                                               ; preds = %21
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @basename(i8* %28)
  %30 = call i32 @usage(i32 %29)
  %31 = call i32 @exit(i32 0) #3
  unreachable

32:                                               ; preds = %21
  %33 = load i32, i32* @optarg, align 4
  %34 = call i32 @atoi(i32 %33)
  %35 = call i32 @log_verbosity(i32 %34)
  br label %43

36:                                               ; preds = %21
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @basename(i8* %39)
  %41 = call i32 @usage(i32 %40)
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %32, %23
  br label %16

44:                                               ; preds = %16
  %45 = call i32 (...) @ksft_print_header()
  %46 = call i32 @ksft_set_plan(i32 1)
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @basename(i8* %49)
  %51 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %52, i64* %7, i64 %54)
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, 1
  %58 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  %59 = call i32 @futex_wait(i64* %7, i64 %57, %struct.timespec* %6, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %44
  %63 = load i64, i64* @errno, align 8
  %64 = load i64, i64* @EWOULDBLOCK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62, %44
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i64, i64* @errno, align 8
  br label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i64 [ %70, %69 ], [ %73, %71 ]
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i64, i64* @errno, align 8
  %80 = call i8* @strerror(i64 %79)
  br label %82

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i8* [ %80, %78 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %81 ]
  %84 = call i32 @fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %75, i8* %83)
  %85 = load i32, i32* @RET_FAIL, align 4
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %82, %62
  %87 = load i32, i32* @TEST_NAME, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @print_result(i32 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @log_color(i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @basename(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @log_verbosity(i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @ksft_print_header(...) #1

declare dso_local i32 @ksft_set_plan(i32) #1

declare dso_local i32 @ksft_print_msg(i8*, i32) #1

declare dso_local i32 @info(i8*, i64, i64*, i64) #1

declare dso_local i32 @futex_wait(i64*, i64, %struct.timespec*, i32) #1

declare dso_local i32 @fail(i8*, i64, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @print_result(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
