; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_wait_timeout.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_wait_timeout.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@FUTEX_INITIALIZER = common dso_local global i32 0, align 4
@RET_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cht:v:\00", align 1
@optarg = common dso_local global i32 0, align 4
@timeout_ns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: Block on a futex and wait for timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\09Arguments: timeout=%ldns\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Calling futex_wait on f1: %u @ %p\0A\00", align 1
@FUTEX_PRIVATE_FLAG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"futex_wait returned %d\0A\00", align 1
@RET_FAIL = common dso_local global i32 0, align 4
@TEST_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @FUTEX_INITIALIZER, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @RET_PASS, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %43, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %10, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %36 [
    i32 99, label %20
    i32 104, label %22
    i32 116, label %29
    i32 118, label %32
  ]

20:                                               ; preds = %18
  %21 = call i32 @log_color(i32 1)
  br label %43

22:                                               ; preds = %18
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @basename(i8* %25)
  %27 = call i32 @usage(i32 %26)
  %28 = call i32 @exit(i32 0) #3
  unreachable

29:                                               ; preds = %18
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @atoi(i32 %30)
  store i32 %31, i32* @timeout_ns, align 4
  br label %43

32:                                               ; preds = %18
  %33 = load i32, i32* @optarg, align 4
  %34 = call i32 @atoi(i32 %33)
  %35 = call i32 @log_verbosity(i32 %34)
  br label %43

36:                                               ; preds = %18
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @basename(i8* %39)
  %41 = call i32 @usage(i32 %40)
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %32, %29, %20
  br label %13

44:                                               ; preds = %13
  %45 = call i32 (...) @ksft_print_header()
  %46 = call i32 @ksft_set_plan(i32 1)
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @basename(i8* %49)
  %51 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @timeout_ns, align 4
  %53 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @timeout_ns, align 4
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32* %6)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  %61 = call i32 @futex_wait(i32* %6, i32 %59, %struct.timespec* %7, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %44
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @ETIMEDOUT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64, %44
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i64, i64* @errno, align 8
  br label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi i64 [ %72, %71 ], [ %75, %73 ]
  %78 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @RET_FAIL, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %76, %64
  %81 = load i32, i32* @TEST_NAME, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @print_result(i32 %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @log_color(i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @basename(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @log_verbosity(i32) #1

declare dso_local i32 @ksft_print_header(...) #1

declare dso_local i32 @ksft_set_plan(i32) #1

declare dso_local i32 @ksft_print_msg(i8*, i32) #1

declare dso_local i32 @info(i8*, i32, i32*) #1

declare dso_local i32 @futex_wait(i32*, i32, %struct.timespec*, i32) #1

declare dso_local i32 @fail(i8*, i64) #1

declare dso_local i32 @print_result(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
