; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test_arm64.c_arun_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test_arm64.c_arun_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"fork() failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@__WALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"waitpid() failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"child did not stop: %s\0A\00", align 1
@SIGSTOP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"child did not stop with SIGSTOP\0A\00", align 1
@PTRACE_CONT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"ptrace(PTRACE_SINGLESTEP) failed: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"child did not single-step\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"child did not stop\0A\00", align 1
@SIGTRAP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"child did not stop with SIGTRAP\0A\00", align 1
@PTRACE_GETSIGINFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"ptrace(PTRACE_GETSIGINFO): %s\0A\00", align 1
@TRAP_HWBKPT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"Unexpected si_code %d\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @arun_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arun_test(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call i64 (...) @fork()
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @errno, align 4
  %19 = call i64 @strerror(i32 %18)
  %20 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %19)
  store i32 0, i32* %5, align 4
  br label %134

21:                                               ; preds = %4
  %22 = load i64, i64* %12, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @child(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* @__WALL, align 4
  %31 = call i64 @waitpid(i64 %29, i32* %10, i32 %30)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @errno, align 4
  %37 = call i64 @strerror(i32 %36)
  %38 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  store i32 0, i32* %5, align 4
  br label %134

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @WIFSTOPPED(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @errno, align 4
  %45 = call i64 @strerror(i32 %44)
  %46 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  store i32 0, i32* %5, align 4
  br label %134

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @WSTOPSIG(i32 %48)
  %50 = load i64, i64* @SIGSTOP, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %134

54:                                               ; preds = %47
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @set_watchpoint(i64 %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %134

61:                                               ; preds = %54
  %62 = load i32, i32* @PTRACE_CONT, align 4
  %63 = load i64, i64* %12, align 8
  %64 = call i64 @ptrace(i32 %62, i64 %63, i32* null, %struct.TYPE_3__* null)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @errno, align 4
  %68 = call i64 @strerror(i32 %67)
  %69 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  store i32 0, i32* %5, align 4
  br label %134

70:                                               ; preds = %61
  %71 = call i32 @alarm(i32 3)
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* @__WALL, align 4
  %74 = call i64 @waitpid(i64 %72, i32* %10, i32 %73)
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i32, i32* @errno, align 4
  %80 = call i64 @strerror(i32 %79)
  %81 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  store i32 0, i32* %5, align 4
  br label %134

82:                                               ; preds = %70
  %83 = call i32 @alarm(i32 0)
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @WIFEXITED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %134

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @WIFSTOPPED(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %134

95:                                               ; preds = %89
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @WSTOPSIG(i32 %96)
  %98 = load i64, i64* @SIGTRAP, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %134

102:                                              ; preds = %95
  %103 = load i32, i32* @PTRACE_GETSIGINFO, align 4
  %104 = load i64, i64* %12, align 8
  %105 = call i64 @ptrace(i32 %103, i64 %104, i32* null, %struct.TYPE_3__* %11)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @errno, align 4
  %109 = call i64 @strerror(i32 %108)
  %110 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64 %109)
  store i32 0, i32* %5, align 4
  br label %134

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TRAP_HWBKPT, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %118)
  store i32 0, i32* %5, align 4
  br label %134

120:                                              ; preds = %111
  %121 = load i64, i64* %12, align 8
  %122 = load i32, i32* @SIGKILL, align 4
  %123 = call i32 @kill(i64 %121, i32 %122)
  %124 = load i64, i64* %12, align 8
  %125 = call i64 @waitpid(i64 %124, i32* %10, i32 0)
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %12, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load i32, i32* @errno, align 4
  %131 = call i64 @strerror(i32 %130)
  %132 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %131)
  store i32 0, i32* %5, align 4
  br label %134

133:                                              ; preds = %120
  store i32 1, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %129, %116, %107, %100, %93, %87, %78, %66, %60, %52, %43, %35, %17
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @ksft_test_result_fail(i8*, i64) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i32 @child(i32, i32) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @ksft_print_msg(i8*, ...) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i32 @set_watchpoint(i64, i32, i32) #1

declare dso_local i64 @ptrace(i32, i64, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @kill(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
