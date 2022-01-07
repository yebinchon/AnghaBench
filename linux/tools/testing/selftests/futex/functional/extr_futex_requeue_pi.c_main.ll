; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"bchlot:v:\00", align 1
@broadcast = common dso_local global i32 0, align 4
@locked = common dso_local global i32 0, align 4
@owner = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@timeout_ns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: Test requeue functionality\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"\09Arguments: broadcast=%d locked=%d owner=%d timeout=%ldns\0A\00", align 1
@TEST_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %34 [
    i32 98, label %15
    i32 99, label %16
    i32 104, label %18
    i32 108, label %25
    i32 111, label %26
    i32 116, label %27
    i32 118, label %30
  ]

15:                                               ; preds = %13
  store i32 1, i32* @broadcast, align 4
  br label %41

16:                                               ; preds = %13
  %17 = call i32 @log_color(i32 1)
  br label %41

18:                                               ; preds = %13
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @basename(i8* %21)
  %23 = call i32 @usage(i32 %22)
  %24 = call i32 @exit(i32 0) #3
  unreachable

25:                                               ; preds = %13
  store i32 1, i32* @locked, align 4
  br label %41

26:                                               ; preds = %13
  store i32 1, i32* @owner, align 4
  store i32 0, i32* @locked, align 4
  br label %41

27:                                               ; preds = %13
  %28 = load i32, i32* @optarg, align 4
  %29 = call i32 @atoi(i32 %28)
  store i32 %29, i32* @timeout_ns, align 4
  br label %41

30:                                               ; preds = %13
  %31 = load i32, i32* @optarg, align 4
  %32 = call i32 @atoi(i32 %31)
  %33 = call i32 @log_verbosity(i32 %32)
  br label %41

34:                                               ; preds = %13
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @basename(i8* %37)
  %39 = call i32 @usage(i32 %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %30, %27, %26, %25, %16, %15
  br label %8

42:                                               ; preds = %8
  %43 = call i32 (...) @ksft_print_header()
  %44 = call i32 @ksft_set_plan(i32 1)
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @basename(i8* %47)
  %49 = call i32 (i8*, i32, ...) @ksft_print_msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @broadcast, align 4
  %51 = load i32, i32* @locked, align 4
  %52 = load i32, i32* @owner, align 4
  %53 = load i32, i32* @timeout_ns, align 4
  %54 = call i32 (i8*, i32, ...) @ksft_print_msg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @broadcast, align 4
  %56 = load i32, i32* @locked, align 4
  %57 = load i32, i32* @owner, align 4
  %58 = load i32, i32* @timeout_ns, align 4
  %59 = call i32 @unit_test(i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @TEST_NAME, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @print_result(i32 %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
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

declare dso_local i32 @ksft_print_msg(i8*, i32, ...) #1

declare dso_local i32 @unit_test(i32, i32, i32, i32) #1

declare dso_local i32 @print_result(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
