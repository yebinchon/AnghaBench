; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_oom_group_parent_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_oom_group_parent_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"memcg_test_0\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"memcg_test_0/memcg_test_1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"memory.max\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"80M\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"memory.swap.max\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"memory.oom.group\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@alloc_anon_noexit = common dso_local global i32 0, align 4
@alloc_anon = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_memcg_oom_group_parent_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_memcg_oom_group_parent_events(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @cg_name(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @cg_name(i8* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %1
  br label %77

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @cg_create(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %77

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @cg_create(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %77

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @cg_write(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %77

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @cg_write(i8* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %77

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @cg_write(i8* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %77

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* @alloc_anon_noexit, align 4
  %45 = call i64 @MB(i32 60)
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @cg_run_nowait(i8* %43, i32 %44, i8* %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @alloc_anon_noexit, align 4
  %50 = call i64 @MB(i32 1)
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @cg_run_nowait(i8* %48, i32 %49, i8* %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @alloc_anon_noexit, align 4
  %55 = call i64 @MB(i32 1)
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @cg_run_nowait(i8* %53, i32 %54, i8* %56)
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* @alloc_anon, align 4
  %60 = call i64 @MB(i32 100)
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @cg_run(i8* %58, i32 %59, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %42
  br label %77

65:                                               ; preds = %42
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @cg_test_proc_killed(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %77

70:                                               ; preds = %65
  %71 = load i8*, i8** %4, align 8
  %72 = call i64 @cg_test_proc_killed(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @KSFT_PASS, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %74, %69, %64, %41, %36, %31, %26, %21, %16
  %78 = load i8*, i8** %5, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @cg_destroy(i8* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i8*, i8** %4, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @cg_destroy(i8* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @cg_write(i8*, i8*, i8*) #1

declare dso_local i32 @cg_run_nowait(i8*, i32, i8*) #1

declare dso_local i64 @MB(i32) #1

declare dso_local i32 @cg_run(i8*, i32, i8*) #1

declare dso_local i64 @cg_test_proc_killed(i8*) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
