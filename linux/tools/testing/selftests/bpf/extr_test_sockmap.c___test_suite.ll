; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c___test_suite.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c___test_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ERROR: (%i) load bpf failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ERROR: cgroup env failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CG_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"ERROR: (%i) open cg path failed: %s\0A\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"ERROR: failed to join cgroup\0A\00", align 1
@txmsg_end_push = common dso_local global i64 0, align 8
@txmsg_start_push = common dso_local global i64 0, align 8
@txmsg_end = common dso_local global i64 0, align 8
@txmsg_start = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Summary: %i PASSED %i FAILED\0A\00", align 1
@passed = common dso_local global i32 0, align 4
@failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @__test_suite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__test_suite(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @populate_progs(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %81

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = call i64 (...) @setup_cgroup_environment()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %81

29:                                               ; preds = %21
  %30 = load i32, i32* @CG_PATH, align 4
  %31 = call i32 @create_and_get_cgroup(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %36, i8* %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %3, align 4
  br label %81

40:                                               ; preds = %29
  %41 = load i32, i32* @CG_PATH, align 4
  %42 = call i64 @join_cgroup(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %81

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %18
  store i64 0, i64* @txmsg_end_push, align 8
  store i64 0, i64* @txmsg_start_push, align 8
  store i64 0, i64* @txmsg_end, align 8
  store i64 0, i64* @txmsg_start, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @test_txmsg(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %69

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @test_mixed(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %69

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @test_start_end(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %69

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %67, %61, %55
  %70 = load i32, i32* @passed, align 4
  %71 = load i32, i32* @failed, align 4
  %72 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = call i32 (...) @cleanup_cgroup_environment()
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @close(i32 %77)
  br label %79

79:                                               ; preds = %75, %69
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %44, %34, %24, %13
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @populate_progs(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @setup_cgroup_environment(...) #1

declare dso_local i32 @create_and_get_cgroup(i32) #1

declare dso_local i64 @join_cgroup(i32) #1

declare dso_local i32 @test_txmsg(i32) #1

declare dso_local i32 @test_mixed(i32) #1

declare dso_local i32 @test_start_end(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @cleanup_cgroup_environment(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
