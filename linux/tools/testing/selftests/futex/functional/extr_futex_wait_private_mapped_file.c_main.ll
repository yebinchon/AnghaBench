; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_wait_private_mapped_file.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_wait_private_mapped_file.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"chv:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"%s: Test the futex value of private file mappings in FUTEX_WAIT\0A\00", align 1
@thr_futex_wait = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"pthread_create error\0A\00", align 1
@RET_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"wait a while\0A\00", align 1
@WAKE_WAIT_US = common dso_local global i32 0, align 4
@val = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"futex_wake %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"FUTEX_WAKE didn't find the waiting thread.\0A\00", align 1
@RET_FAIL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"join\0A\00", align 1
@TEST_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @RET_PASS, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %31 [
    i32 99, label %18
    i32 104, label %20
    i32 118, label %27
  ]

18:                                               ; preds = %16
  %19 = call i32 @log_color(i32 1)
  br label %38

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @basename(i8* %23)
  %25 = call i32 @usage(i32 %24)
  %26 = call i32 @exit(i32 0) #3
  unreachable

27:                                               ; preds = %16
  %28 = load i32, i32* @optarg, align 4
  %29 = call i32 @atoi(i32 %28)
  %30 = call i32 @log_verbosity(i32 %29)
  br label %38

31:                                               ; preds = %16
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @basename(i8* %34)
  %36 = call i32 @usage(i32 %35)
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %27, %18
  br label %11

39:                                               ; preds = %11
  %40 = call i32 (...) @ksft_print_header()
  %41 = call i32 @ksft_set_plan(i32 1)
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @basename(i8* %44)
  %46 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @thr_futex_wait, align 4
  %48 = call i32 @pthread_create(i32* %6, i32* null, i32 %47, i32* null)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @RET_ERROR, align 4
  store i32 %54, i32* %7, align 4
  br label %71

55:                                               ; preds = %39
  %56 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @WAKE_WAIT_US, align 4
  %58 = call i32 @usleep(i32 %57)
  store i32 2, i32* @val, align 4
  %59 = call i32 @futex_wake(i32* @val, i32 1, i32 0)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = call i32 @fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i32, i32* @RET_FAIL, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %55
  %68 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @pthread_join(i32 %69, i32* null)
  br label %71

71:                                               ; preds = %67, %51
  %72 = load i32, i32* @TEST_NAME, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @print_result(i32 %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  ret i32 %75
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

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @futex_wake(i32*, i32, i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @print_result(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
