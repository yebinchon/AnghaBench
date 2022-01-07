; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_test_kprobes.c_init_test_probes.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_test_kprobes.c_init_test_probes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kprobe_target = common dso_local global i32 0, align 4
@target = common dso_local global i32 0, align 4
@kprobe_target2 = common dso_local global i32 0, align 4
@target2 = common dso_local global i32 0, align 4
@rand1 = common dso_local global i64 0, align 8
@div_factor = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"started\0A\00", align 1
@num_tests = common dso_local global i32 0, align 4
@errors = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"BUG: %d out of %d tests failed\0A\00", align 1
@handler_errors = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"BUG: %d error(s) running handlers\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"passed successfully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_test_probes() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @kprobe_target, align 4
  store i32 %2, i32* @target, align 4
  %3 = load i32, i32* @kprobe_target2, align 4
  store i32 %3, i32* @target2, align 4
  br label %4

4:                                                ; preds = %6, %0
  %5 = call i64 (...) @prandom_u32()
  store i64 %5, i64* @rand1, align 8
  br label %6

6:                                                ; preds = %4
  %7 = load i64, i64* @rand1, align 8
  %8 = load i64, i64* @div_factor, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %4, label %10

10:                                               ; preds = %6
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @num_tests, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @num_tests, align 4
  %14 = call i32 (...) @test_kprobe()
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i64, i64* @errors, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @errors, align 8
  br label %20

20:                                               ; preds = %17, %10
  %21 = load i32, i32* @num_tests, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @num_tests, align 4
  %23 = call i32 (...) @test_kprobes()
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i64, i64* @errors, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* @errors, align 8
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i64, i64* @errors, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* @errors, align 8
  %34 = load i32, i32* @num_tests, align 4
  %35 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %33, i32 %34)
  br label %45

36:                                               ; preds = %29
  %37 = load i64, i64* @handler_errors, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* @handler_errors, align 8
  %41 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  br label %44

42:                                               ; preds = %36
  %43 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  br label %45

45:                                               ; preds = %44, %32
  ret i32 0
}

declare dso_local i64 @prandom_u32(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @test_kprobe(...) #1

declare dso_local i32 @test_kprobes(...) #1

declare dso_local i32 @pr_err(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
