; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test_arm64.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test_arm64.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }

@sigalrm = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Test size = %d write offset = %d watchpoint offset = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Test size = %d write offset = %d watchpoint offset = -8\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sigaction, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  %13 = call i32 (...) @ksft_print_header()
  %14 = call i32 @ksft_set_plan(i32 213)
  %15 = load i32, i32* @sigalrm, align 4
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 1
  %18 = call i32 @sigemptyset(i32* %17)
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @SIGALRM, align 4
  %21 = call i32 @sigaction(i32 %20, %struct.sigaction* %8, i32* null)
  store i32 1, i32* %11, align 4
  br label %22

22:                                               ; preds = %80, %2
  %23 = load i32, i32* %11, align 4
  %24 = icmp sle i32 %23, 32
  br i1 %24, label %25, label %83

25:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %75, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp sle i32 %27, 32
  br i1 %28, label %29, label %79

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %70, %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  %38 = icmp sle i32 %34, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @MIN(i32 %41, i32 8)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @run_test(i32 %40, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %48, %39
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55, %48
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (i8*, i32, i32, ...) @ksft_test_result_pass(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  br label %69

64:                                               ; preds = %55, %52
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (i8*, i32, i32, ...) @ksft_test_result_fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67)
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %10, align 4
  br label %33

74:                                               ; preds = %33
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %9, align 4
  br label %26

79:                                               ; preds = %26
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 %81, 2
  store i32 %82, i32* %11, align 4
  br label %22

83:                                               ; preds = %22
  store i32 1, i32* %11, align 4
  br label %84

84:                                               ; preds = %104, %83
  %85 = load i32, i32* %11, align 4
  %86 = icmp sle i32 %85, 32
  br i1 %86, label %87, label %107

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 0, %89
  %91 = call i32 @run_test(i32 %88, i32 8, i32 %90, i32 -8)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 0, %95
  %97 = call i32 (i8*, i32, i32, ...) @ksft_test_result_pass(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %96)
  br label %103

98:                                               ; preds = %87
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 0, %100
  %102 = call i32 (i8*, i32, i32, ...) @ksft_test_result_fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %101)
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 %105, 2
  store i32 %106, i32* %11, align 4
  br label %84

107:                                              ; preds = %84
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 (...) @ksft_exit_pass()
  br label %114

112:                                              ; preds = %107
  %113 = call i32 (...) @ksft_exit_fail()
  br label %114

114:                                              ; preds = %112, %110
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @ksft_print_header(...) #1

declare dso_local i32 @ksft_set_plan(i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @run_test(i32, i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*, i32, i32, ...) #1

declare dso_local i32 @ksft_test_result_fail(i8*, i32, i32, ...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

declare dso_local i32 @ksft_exit_fail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
