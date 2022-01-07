; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_stopped.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cg_test_stopped\00", align 1
@child_fn = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgfreezer_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgfreezer_stopped(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %6, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @cg_name(i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %53

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @cg_create(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %53

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @child_fn, align 4
  %20 = call i32 @cg_run_nowait(i8* %18, i32 %19, i32* null)
  store i32 %20, i32* %3, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @cg_wait_for_proc_count(i8* %21, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %53

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SIGSTOP, align 4
  %28 = call i64 @kill(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %53

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @cg_check_frozen(i8* %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %53

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @cg_freeze_wait(i8* %37, i32 1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %53

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @cg_freeze_wait(i8* %42, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %53

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = call i64 @proc_check_stopped(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @KSFT_PASS, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %50, %45, %40, %35, %30, %24, %16, %11
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @cg_destroy(i8* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i32 @cg_run_nowait(i8*, i32, i32*) #1

declare dso_local i64 @cg_wait_for_proc_count(i8*, i32) #1

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i64 @cg_check_frozen(i8*, i32) #1

declare dso_local i64 @cg_freeze_wait(i8*, i32) #1

declare dso_local i64 @proc_check_stopped(i32) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
