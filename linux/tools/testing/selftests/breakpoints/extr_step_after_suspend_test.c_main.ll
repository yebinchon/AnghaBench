; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_step_after_suspend_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_step_after_suspend_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Usage: %s [-n]\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"        -n: do not trigger a suspend/resume cycle before the test\0A\00", align 1
@CPU_SETSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"sched_getaffinity() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CPU %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = call i32 (...) @ksft_print_header()
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %23 [
    i32 110, label %22
  ]

22:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %29

23:                                               ; preds = %20
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %91

29:                                               ; preds = %22
  br label %15

30:                                               ; preds = %15
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @CPU_SETSIZE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @CPU_ISSET(i32 %36, i32* %10)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %31

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ksft_set_plan(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (...) @suspend()
  br label %53

53:                                               ; preds = %51, %46
  %54 = call i32 @sched_getaffinity(i32 0, i32 4, i32* %10)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %81, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @CPU_SETSIZE, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @CPU_ISSET(i32 %65, i32* %10)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %81

69:                                               ; preds = %64
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @run_test(i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  br label %80

77:                                               ; preds = %69
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %68
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %60

84:                                               ; preds = %60
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (...) @ksft_exit_pass()
  br label %91

89:                                               ; preds = %84
  %90 = call i32 (...) @ksft_exit_fail()
  br label %91

91:                                               ; preds = %23, %89, %87
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ksft_print_header(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @ksft_set_plan(i32) #1

declare dso_local i32 @suspend(...) #1

declare dso_local i32 @sched_getaffinity(i32, i32, i32*) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*) #1

declare dso_local i32 @run_test(i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*, i32) #1

declare dso_local i32 @ksft_test_result_fail(i8*, i32) #1

declare dso_local i32 @ksft_exit_pass(...) #1

declare dso_local i32 @ksft_exit_fail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
