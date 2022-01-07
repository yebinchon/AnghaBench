; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_locking-selftest.c_dotest.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_locking-selftest.c_dotest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FAILURE = common dso_local global i32 0, align 4
@debug_locks = common dso_local global i32 0, align 4
@expected_testcase_failures = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"failed|\00", align 1
@unexpected_testcase_failures = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FAILED|\00", align 1
@testcase_successes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"  ok  |\00", align 1
@testcase_total = common dso_local global i32 0, align 4
@debug_locks_verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c" lockclass mask: %x, debug_locks: %d, expected: %d\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void ()*, i32, i32)* @dotest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dotest(void ()* %0, i32 %1, i32 %2) #0 {
  %4 = alloca void ()*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store void ()* %0, void ()** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i64 (...) @preempt_count()
  store i64 %8, i64* %7, align 8
  %9 = call i32 (...) @irqs_disabled()
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load void ()*, void ()** %4, align 8
  call void %11()
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @FAILURE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32, i32* @debug_locks, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @expected_testcase_failures, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @expected_testcase_failures, align 4
  %21 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %35

22:                                               ; preds = %15, %3
  %23 = load i32, i32* @debug_locks, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @unexpected_testcase_failures, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @unexpected_testcase_failures, align 4
  %29 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @testcase_successes, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @testcase_successes, align 4
  %33 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* @testcase_total, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @testcase_total, align 4
  %38 = load i64, i64* @debug_locks_verbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @debug_locks, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @preempt_count_set(i64 %46)
  %48 = call i32 (...) @reset_locks()
  ret void
}

declare dso_local i64 @preempt_count(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @preempt_count_set(i64) #1

declare dso_local i32 @reset_locks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
