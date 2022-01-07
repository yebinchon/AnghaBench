; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_swap_max.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_swap_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@KSFT_SKIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"memcg_test\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"memory.swap.current\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"memory.max\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"max\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"memory.swap.max\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"30M\00", align 1
@alloc_anon = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"memory.events\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"oom \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"oom_kill \00", align 1
@alloc_anon_50M_check_swap = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"max \00", align 1
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_memcg_swap_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_memcg_swap_max(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 (...) @is_swap_enabled()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @KSFT_SKIP, align 4
  store i32 %11, i32* %2, align 4
  br label %90

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @cg_name(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %84

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @cg_create(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %84

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @cg_read_long(i8* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @KSFT_SKIP, align 4
  store i32 %28, i32* %4, align 4
  br label %84

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @cg_read_strcmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %84

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @cg_read_strcmp(i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %84

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @cg_write(i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %84

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @cg_write(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %84

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* @alloc_anon, align 4
  %52 = call i64 @MB(i32 100)
  %53 = inttoptr i64 %52 to i8*
  %54 = call i64 @cg_run(i8* %50, i32 %51, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %84

57:                                               ; preds = %49
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @cg_read_key_long(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %84

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @cg_read_key_long(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %84

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @alloc_anon_50M_check_swap, align 4
  %70 = call i64 @MB(i32 30)
  %71 = inttoptr i64 %70 to i8*
  %72 = call i64 @cg_run(i8* %68, i32 %69, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %84

75:                                               ; preds = %67
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @cg_read_key_long(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @KSFT_PASS, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %81, %74, %66, %61, %56, %48, %43, %38, %33, %27, %22, %17
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @cg_destroy(i8* %85)
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %84, %10
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @is_swap_enabled(...) #1

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @cg_read_long(i8*, i8*) #1

declare dso_local i64 @cg_read_strcmp(i8*, i8*, i8*) #1

declare dso_local i64 @cg_write(i8*, i8*, i8*) #1

declare dso_local i64 @cg_run(i8*, i32, i8*) #1

declare dso_local i64 @MB(i32) #1

declare dso_local i32 @cg_read_key_long(i8*, i8*, i8*) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
