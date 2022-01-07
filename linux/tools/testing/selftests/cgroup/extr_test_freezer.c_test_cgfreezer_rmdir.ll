; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cg_test_rmdir_A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"cg_test_rmdir_B\00", align 1
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgfreezer_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgfreezer_rmdir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %6, i32* %3, align 4
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @cg_name(i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %55

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @cg_name(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %55

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @cg_create(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %55

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @cg_create(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %55

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @cg_freeze_wait(i8* %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %55

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @cg_destroy(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %55

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @cg_check_frozen(i8* %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %55

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @cg_create(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %55

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @cg_check_frozen(i8* %49, i32 1)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @KSFT_PASS, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %52, %47, %42, %37, %32, %27, %22, %17, %11
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @cg_destroy(i8* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i8*, i8** %4, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @cg_destroy(i8* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @cg_freeze_wait(i8*, i32) #1

declare dso_local i64 @cg_destroy(i8*) #1

declare dso_local i64 @cg_check_frozen(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
