; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test.c_launch_tests.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test.c_launch_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COUNT_ISN_BPS = common dso_local global i32 0, align 4
@COUNT_WPS = common dso_local global i32 0, align 4
@BP_W = common dso_local global i32 0, align 4
@BP_RW = common dso_local global i32 0, align 4
@PTRACE_CONT = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Test icebp\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Test int 3 trap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @launch_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @launch_tests() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %7 = load i32, i32* @COUNT_ISN_BPS, align 4
  %8 = mul nsw i32 3, %7
  %9 = load i32, i32* %2, align 4
  %10 = add i32 %9, %8
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @COUNT_WPS, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 12, %12
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = add i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* @COUNT_WPS, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 12, %19
  %21 = load i32, i32* %2, align 4
  %22 = zext i32 %21 to i64
  %23 = add i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = add i32 %25, 2
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @ksft_set_plan(i32 %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %52, %0
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %48

43:                                               ; preds = %39, %36
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @launch_instruction_breakpoints(i8* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %42
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %33

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %29

55:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %90, %55
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ule i64 %58, 8
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %86, %60
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %82, %64
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %82

75:                                               ; preds = %71, %68
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %77 = load i32, i32* @BP_W, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @launch_watchpoints(i8* %76, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %74
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %65

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %61

89:                                               ; preds = %61
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %3, align 4
  %92 = shl i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %56

93:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %128, %93
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ule i64 %96, 8
  br i1 %97, label %98, label %131

98:                                               ; preds = %94
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %124, %98
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %102, label %127

102:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %120, %102
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  br label %120

113:                                              ; preds = %109, %106
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %115 = load i32, i32* @BP_RW, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @launch_watchpoints(i8* %114, i32 %115, i32 %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %113, %112
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %103

123:                                              ; preds = %103
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %99

127:                                              ; preds = %99
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %3, align 4
  %130 = shl i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %94

131:                                              ; preds = %94
  %132 = load i32, i32* @PTRACE_CONT, align 4
  %133 = load i32, i32* @child_pid, align 4
  %134 = call i32 @ptrace(i32 %132, i32 %133, i32* null, i32 0)
  %135 = call i32 @check_success(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %136 = load i32, i32* @PTRACE_CONT, align 4
  %137 = load i32, i32* @child_pid, align 4
  %138 = call i32 @ptrace(i32 %136, i32 %137, i32* null, i32 0)
  %139 = call i32 @check_success(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* @PTRACE_CONT, align 4
  %141 = load i32, i32* @child_pid, align 4
  %142 = call i32 @ptrace(i32 %140, i32 %141, i32* null, i32 0)
  ret void
}

declare dso_local i32 @ksft_set_plan(i32) #1

declare dso_local i32 @launch_instruction_breakpoints(i8*, i32, i32) #1

declare dso_local i32 @launch_watchpoints(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ptrace(i32, i32, i32*, i32) #1

declare dso_local i32 @check_success(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
