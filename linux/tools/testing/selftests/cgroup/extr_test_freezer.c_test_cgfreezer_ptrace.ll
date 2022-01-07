; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_ptrace.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cg_test_ptrace\00", align 1
@child_fn = common dso_local global i32 0, align 4
@PTRACE_SEIZE = common dso_local global i32 0, align 4
@PTRACE_INTERRUPT = common dso_local global i32 0, align 4
@PTRACE_GETSIGINFO = common dso_local global i32 0, align 4
@PTRACE_DETACH = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgfreezer_ptrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgfreezer_ptrace(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %7, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @cg_name(i8* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %73

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @cg_create(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %73

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @child_fn, align 4
  %21 = call i32 @cg_run_nowait(i8* %19, i32 %20, i32* null)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %73

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @cg_wait_for_proc_count(i8* %26, i32 1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %73

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @cg_freeze_wait(i8* %31, i32 1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %73

35:                                               ; preds = %30
  %36 = load i32, i32* @PTRACE_SEIZE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @ptrace(i32 %36, i32 %37, i32* null, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %73

41:                                               ; preds = %35
  %42 = load i32, i32* @PTRACE_INTERRUPT, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @ptrace(i32 %42, i32 %43, i32* null, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %73

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @waitpid(i32 %48, i32* null, i32 0)
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @cg_check_frozen(i8* %50, i32 1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %73

54:                                               ; preds = %47
  %55 = load i32, i32* @PTRACE_GETSIGINFO, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @ptrace(i32 %55, i32 %56, i32* null, i32* %5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %73

60:                                               ; preds = %54
  %61 = load i32, i32* @PTRACE_DETACH, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @ptrace(i32 %61, i32 %62, i32* null, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %73

66:                                               ; preds = %60
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @cg_check_frozen(i8* %67, i32 1)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @KSFT_PASS, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %70, %65, %59, %53, %46, %40, %34, %29, %24, %17, %12
  %74 = load i8*, i8** %4, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @cg_destroy(i8* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i32 @cg_run_nowait(i8*, i32, i32*) #1

declare dso_local i64 @cg_wait_for_proc_count(i8*, i32) #1

declare dso_local i64 @cg_freeze_wait(i8*, i32) #1

declare dso_local i64 @ptrace(i32, i32, i32*, i32*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @cg_check_frozen(i8*, i32) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
