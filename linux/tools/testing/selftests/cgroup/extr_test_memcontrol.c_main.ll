; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*)*, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cgroup v2 isn't mounted\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"cgroup.controllers\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"memory controller isn't available\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"cgroup.subtree_control\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"+memory\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to set memory controller\0A\00", align 1
@tests = common dso_local global %struct.TYPE_3__* null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %14, i32* %9, align 4
  %15 = trunc i64 %11 to i32
  %16 = call i64 @cg_find_unified_root(i8* %13, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = call i64 @cg_read_strstr(i8* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i64 @cg_read_strstr(i8* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = call i64 @cg_write(i8* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33, %25
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %74, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (i8*)*, i32 (i8*)** %45, align 8
  %47 = call i32 %46(i8* %13)
  switch i32 %47, label %64 [
    i32 129, label %48
    i32 128, label %56
  ]

48:                                               ; preds = %40
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  br label %73

56:                                               ; preds = %40
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ksft_test_result_skip(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  br label %73

64:                                               ; preds = %40
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %65, i32* %9, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %64, %56, %48
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %35

77:                                               ; preds = %35
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  %79 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @cg_find_unified_root(i8*, i32) #2

declare dso_local i32 @ksft_exit_skip(i8*) #2

declare dso_local i64 @cg_read_strstr(i8*, i8*, i8*) #2

declare dso_local i64 @cg_write(i8*, i8*, i8*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @ksft_test_result_pass(i8*, i32) #2

declare dso_local i32 @ksft_test_result_skip(i8*, i32) #2

declare dso_local i32 @ksft_test_result_fail(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
