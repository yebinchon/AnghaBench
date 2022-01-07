; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_oom_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_oom_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"memcg_test\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"memory.max\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"30M\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"memory.swap.max\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@alloc_anon = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"cgroup.procs\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"memory.events\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"oom \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"oom_kill \00", align 1
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_memcg_oom_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_memcg_oom_events(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @cg_name(i8* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %51

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @cg_create(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %51

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @cg_write(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %51

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @cg_write(i8* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %51

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @alloc_anon, align 4
  %29 = call i64 @MB(i32 100)
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @cg_run(i8* %27, i32 %28, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %51

34:                                               ; preds = %26
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @cg_read_strcmp(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %51

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @cg_read_key_long(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %51

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @cg_read_key_long(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @KSFT_PASS, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %48, %43, %38, %33, %25, %20, %15, %10
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @cg_destroy(i8* %52)
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @cg_write(i8*, i8*, i8*) #1

declare dso_local i32 @cg_run(i8*, i32, i8*) #1

declare dso_local i64 @MB(i32) #1

declare dso_local i64 @cg_read_strcmp(i8*, i8*, i8*) #1

declare dso_local i32 @cg_read_key_long(i8*, i8*, i8*) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
