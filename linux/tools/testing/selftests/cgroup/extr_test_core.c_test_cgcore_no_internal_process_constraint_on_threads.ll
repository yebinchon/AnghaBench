; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_core.c_test_cgcore_no_internal_process_constraint_on_threads.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_core.c_test_cgcore_no_internal_process_constraint_on_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cgroup.controllers\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cgroup.subtree_control\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"+cpu\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"cg_test_parent\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cg_test_parent/cg_test_child\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"cgroup.type\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"threaded\00", align 1
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgcore_no_internal_process_constraint_on_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgcore_no_internal_process_constraint_on_threads(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %6, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @cg_read_strstr(i8* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @cg_write(i8* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @KSFT_SKIP, align 4
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %10
  %17 = load i8*, i8** %2, align 8
  %18 = call i8* @cg_name(i8* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i8* @cg_name(i8* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %16
  br label %59

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @cg_create(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %59

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @cg_create(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %59

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @cg_write(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %59

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @cg_write(i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %59

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @cg_write(i8* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %59

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @cg_enter_current(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @KSFT_PASS, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %56, %51, %46, %41, %36, %31, %26, %14
  %60 = load i8*, i8** %2, align 8
  %61 = call i64 @cg_enter_current(i8* %60)
  %62 = load i8*, i8** %2, align 8
  %63 = call i64 @cg_enter_current(i8* %62)
  %64 = load i8*, i8** %5, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @cg_destroy(i8* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @cg_destroy(i8* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @cg_read_strstr(i8*, i8*, i8*) #1

declare dso_local i64 @cg_write(i8*, i8*, i8*) #1

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @cg_enter_current(i8*) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
