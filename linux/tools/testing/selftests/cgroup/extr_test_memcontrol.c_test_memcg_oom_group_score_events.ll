; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_oom_group_score_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_oom_group_score_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"memcg_test_0\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"memory.max\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"50M\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"memory.swap.max\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"memory.oom.group\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@alloc_anon_noexit = common dso_local global i32 0, align 4
@OOM_SCORE_ADJ_MIN = common dso_local global i32 0, align 4
@alloc_anon = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"memory.events\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"oom_kill \00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_memcg_oom_group_score_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_memcg_oom_group_score_events(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @cg_name(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %69

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @cg_create(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %69

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @cg_write(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %69

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @cg_write(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %69

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @cg_write(i8* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %69

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @alloc_anon_noexit, align 4
  %35 = call i64 @MB(i32 1)
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @cg_run_nowait(i8* %33, i32 %34, i8* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @OOM_SCORE_ADJ_MIN, align 4
  %40 = call i64 @set_oom_adj_score(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %69

43:                                               ; preds = %32
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @alloc_anon_noexit, align 4
  %46 = call i64 @MB(i32 1)
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @cg_run_nowait(i8* %44, i32 %45, i8* %47)
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @alloc_anon, align 4
  %51 = call i64 @MB(i32 100)
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @cg_run(i8* %49, i32 %50, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %43
  br label %69

56:                                               ; preds = %43
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @cg_read_key_long(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %59 = icmp ne i32 %58, 3
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %69

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @SIGKILL, align 4
  %64 = call i64 @kill(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @KSFT_PASS, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %66, %60, %55, %42, %31, %26, %21, %16, %11
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @cg_destroy(i8* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @cg_write(i8*, i8*, i8*) #1

declare dso_local i32 @cg_run_nowait(i8*, i32, i8*) #1

declare dso_local i64 @MB(i32) #1

declare dso_local i64 @set_oom_adj_score(i32, i32) #1

declare dso_local i32 @cg_run(i8*, i32, i8*) #1

declare dso_local i32 @cg_read_key_long(i8*, i8*, i8*) #1

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
