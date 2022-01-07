; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_ptraced.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_ptraced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cg_test_ptraced\00", align 1
@child_fn = common dso_local global i32 0, align 4
@PTRACE_SEIZE = common dso_local global i32 0, align 4
@PTRACE_INTERRUPT = common dso_local global i32 0, align 4
@PTRACE_GETSIGINFO = common dso_local global i32 0, align 4
@PTRACE_DETACH = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgfreezer_ptraced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgfreezer_ptraced(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %7, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @cg_name(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %69

13:                                               ; preds = %1
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @cg_create(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %69

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @child_fn, align 4
  %21 = call i32 @cg_run_nowait(i8* %19, i32 %20, i32* null)
  store i32 %21, i32* %3, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @cg_wait_for_proc_count(i8* %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %69

26:                                               ; preds = %18
  %27 = load i32, i32* @PTRACE_SEIZE, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @ptrace(i32 %27, i32 %28, i32* null, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %69

32:                                               ; preds = %26
  %33 = load i32, i32* @PTRACE_INTERRUPT, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @ptrace(i32 %33, i32 %34, i32* null, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %69

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @waitpid(i32 %39, i32* null, i32 0)
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @cg_check_frozen(i8* %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %69

45:                                               ; preds = %38
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @cg_freeze_wait(i8* %46, i32 1)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %69

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @cg_freeze_wait(i8* %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %69

55:                                               ; preds = %50
  %56 = load i32, i32* @PTRACE_GETSIGINFO, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i64 @ptrace(i32 %56, i32 %57, i32* null, i32* %6)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %69

61:                                               ; preds = %55
  %62 = load i32, i32* @PTRACE_DETACH, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @ptrace(i32 %62, i32 %63, i32* null, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @KSFT_PASS, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %66, %60, %54, %49, %44, %37, %31, %25, %17, %12
  %70 = load i8*, i8** %5, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @cg_destroy(i8* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i32 @cg_run_nowait(i8*, i32, i32*) #1

declare dso_local i64 @cg_wait_for_proc_count(i8*, i32) #1

declare dso_local i64 @ptrace(i32, i32, i32*, i32*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

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
