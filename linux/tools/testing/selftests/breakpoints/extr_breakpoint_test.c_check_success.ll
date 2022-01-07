; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test.c_check_success.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test.c_check_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGTRAP = common dso_local global i64 0, align 8
@PTRACE_PEEKDATA = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@nr_tests = common dso_local global i32 0, align 4
@PTRACE_POKEDATA = common dso_local global i32 0, align 4
@trapped = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Can't poke: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @check_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_success(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 @wait(i32* %4)
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @WSTOPSIG(i32 %7)
  %9 = load i64, i64* @SIGTRAP, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @PTRACE_PEEKDATA, align 4
  %13 = load i32, i32* @child_pid, align 4
  %14 = call i32 @ptrace(i32 %12, i32 %13, i32* @nr_tests, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @nr_tests, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %11
  %20 = load i32, i32* @PTRACE_POKEDATA, align 4
  %21 = load i32, i32* @child_pid, align 4
  %22 = call i32 @ptrace(i32 %20, i32 %21, i32* @trapped, i32 1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* @nr_tests, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @nr_tests, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @ksft_test_result_pass(i8* %35)
  br label %40

37:                                               ; preds = %29
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @ksft_test_result_fail(i8* %38)
  br label %40

40:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @wait(i32*) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32*, i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ksft_test_result_pass(i8*) #1

declare dso_local i32 @ksft_test_result_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
