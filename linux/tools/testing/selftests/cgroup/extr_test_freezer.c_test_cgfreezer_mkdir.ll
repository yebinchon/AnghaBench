; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cg_test_mkdir_A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"cg_test_mkdir_B\00", align 1
@child_fn = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgfreezer_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgfreezer_mkdir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %7, i32* %3, align 4
  store i8* null, i8** %5, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @cg_name(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %58

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @cg_name(i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %58

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @cg_create(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %58

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @cg_freeze_wait(i8* %25, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %58

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @cg_create(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %58

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @child_fn, align 4
  %37 = call i32 @cg_run_nowait(i8* %35, i32 %36, i32* null)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %58

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @cg_wait_for_proc_count(i8* %42, i32 1)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %58

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @cg_check_frozen(i8* %47, i32 1)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %58

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = call i64 @cg_check_frozen(i8* %52, i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @KSFT_PASS, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %55, %50, %45, %40, %33, %28, %23, %18, %12
  %59 = load i8*, i8** %5, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @cg_destroy(i8* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i8*, i8** %4, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @cg_destroy(i8* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @cg_freeze_wait(i8*, i32) #1

declare dso_local i32 @cg_run_nowait(i8*, i32, i32*) #1

declare dso_local i64 @cg_wait_for_proc_count(i8*, i32) #1

declare dso_local i64 @cg_check_frozen(i8*, i32) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
