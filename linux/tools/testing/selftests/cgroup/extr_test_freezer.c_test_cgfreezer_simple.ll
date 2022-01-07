; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_simple.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cg_test_simple\00", align 1
@child_fn = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgfreezer_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgfreezer_simple(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %6, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @cg_name(i8* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %50

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @cg_create(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %50

17:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %25, %17
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 100
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @child_fn, align 4
  %24 = call i32 @cg_run_nowait(i8* %22, i32 %23, i32* null)
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %18

28:                                               ; preds = %18
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @cg_wait_for_proc_count(i8* %29, i32 100)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %50

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @cg_check_frozen(i8* %34, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %50

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @cg_freeze_wait(i8* %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %50

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = call i64 @cg_freeze_wait(i8* %44, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @KSFT_PASS, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %47, %42, %37, %32, %16, %11
  %51 = load i8*, i8** %4, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @cg_destroy(i8* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i32 @cg_run_nowait(i8*, i32, i32*) #1

declare dso_local i64 @cg_wait_for_proc_count(i8*, i32) #1

declare dso_local i64 @cg_check_frozen(i8*, i32) #1

declare dso_local i64 @cg_freeze_wait(i8*, i32) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
