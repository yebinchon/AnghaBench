; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_step_after_suspend_test.c_child.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_step_after_suspend_test.c_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"sched_setaffinity() failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@PTRACE_TRACEME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ptrace(PTRACE_TRACEME) failed: %s\0A\00", align 1
@SIGSTOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"raise(SIGSTOP) failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @child(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 @CPU_ZERO(i32* %3)
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @CPU_SET(i32 %5, i32* %3)
  %7 = call i64 @sched_setaffinity(i32 0, i32 4, i32* %3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @strerror(i32 %10)
  %12 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @_exit(i32 1) #3
  unreachable

14:                                               ; preds = %1
  %15 = load i32, i32* @PTRACE_TRACEME, align 4
  %16 = call i64 @ptrace(i32 %15, i32 0, i32* null, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 @_exit(i32 1) #3
  unreachable

23:                                               ; preds = %14
  %24 = load i32, i32* @SIGSTOP, align 4
  %25 = call i64 @raise(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = call i32 @_exit(i32 1) #3
  unreachable

32:                                               ; preds = %23
  %33 = call i32 @_exit(i32 0) #3
  unreachable
}

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @sched_setaffinity(i32, i32, i32*) #1

declare dso_local i32 @ksft_print_msg(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @ptrace(i32, i32, i32*, i32*) #1

declare dso_local i64 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
