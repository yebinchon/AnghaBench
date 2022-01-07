; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_high.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"memcg_test\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"memory.high\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"max\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"memory.swap.max\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"30M\00", align 1
@alloc_anon = common dso_local global i32 0, align 4
@alloc_pagecache_50M_check = common dso_local global i32 0, align 4
@alloc_pagecache_max_30M = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"memory.events\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"high \00", align 1
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_memcg_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_memcg_high(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @cg_name(i8* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %60

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @cg_create(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %60

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @cg_read_strcmp(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %60

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @cg_write(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %60

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @cg_write(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %60

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @alloc_anon, align 4
  %35 = call i64 @MB(i32 100)
  %36 = inttoptr i64 %35 to i8*
  %37 = call i64 @cg_run(i8* %33, i32 %34, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %60

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* @alloc_pagecache_50M_check, align 4
  %43 = call i64 @cg_run(i8* %41, i32 %42, i8* null)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %60

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* @alloc_pagecache_max_30M, align 4
  %49 = call i64 @cg_run(i8* %47, i32 %48, i8* null)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %60

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @cg_read_key_long(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @KSFT_PASS, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %57, %51, %45, %39, %31, %26, %21, %16, %11
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @cg_destroy(i8* %61)
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @cg_read_strcmp(i8*, i8*, i8*) #1

declare dso_local i64 @cg_write(i8*, i8*, i8*) #1

declare dso_local i64 @cg_run(i8*, i32, i8*) #1

declare dso_local i64 @MB(i32) #1

declare dso_local i64 @cg_read_key_long(i8*, i8*, i8*) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
