; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_max.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"memcg_test\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"memory.max\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"max\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"memory.swap.max\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"30M\00", align 1
@alloc_anon = common dso_local global i32 0, align 4
@alloc_pagecache_max_30M = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"memory.current\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"memory.events\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"max \00", align 1
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_memcg_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_memcg_max(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @cg_name(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @cg_create(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %65

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @cg_read_strcmp(i8* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %65

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @cg_write(i8* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %65

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @cg_write(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %65

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @alloc_anon, align 4
  %36 = call i64 @MB(i32 100)
  %37 = inttoptr i64 %36 to i8*
  %38 = call i64 @cg_run(i8* %34, i32 %35, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %65

41:                                               ; preds = %33
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* @alloc_pagecache_max_30M, align 4
  %44 = call i64 @cg_run(i8* %42, i32 %43, i8* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %65

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @cg_read_long(i8* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @MB(i32 30)
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53, %47
  br label %65

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @cg_read_key_long(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @KSFT_PASS, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %62, %56, %46, %40, %32, %27, %22, %17, %12
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @cg_destroy(i8* %66)
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @cg_read_strcmp(i8*, i8*, i8*) #1

declare dso_local i64 @cg_write(i8*, i8*, i8*) #1

declare dso_local i64 @cg_run(i8*, i32, i8*) #1

declare dso_local i64 @MB(i32) #1

declare dso_local i64 @cg_read_long(i8*, i8*) #1

declare dso_local i64 @cg_read_key_long(i8*, i8*, i8*) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
