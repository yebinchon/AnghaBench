; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_display_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_display_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }
%struct.termios = type { i32 }
%struct.perf_top = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@CLONE_FS = common dso_local global i32 0, align 4
@PR_SET_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"perf-top-UI\00", align 1
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@__fallthrough = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @display_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @display_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pollfd, align 4
  %4 = alloca %struct.termios, align 4
  %5 = alloca %struct.perf_top*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 0
  %9 = load i32, i32* @POLLIN, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.perf_top*
  store %struct.perf_top* %12, %struct.perf_top** %5, align 8
  %13 = load i32, i32* @CLONE_FS, align 4
  %14 = call i32 @unshare(i32 %13)
  %15 = load i32, i32* @PR_SET_NAME, align 4
  %16 = call i32 @prctl(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0)
  %17 = call i32 (...) @display_setup_sig()
  %18 = call i32 (...) @pthread__unblock_sigwinch()
  br label %19

19:                                               ; preds = %54, %1
  %20 = load %struct.perf_top*, %struct.perf_top** %5, align 8
  %21 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MSEC_PER_SEC, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = call i32 @set_term_quiet_input(%struct.termios* %4)
  %26 = load i32, i32* @stdin, align 4
  %27 = call i32 @getc(i32 %26)
  br label %28

28:                                               ; preds = %57, %42, %37, %19
  %29 = load i32, i32* @done, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load %struct.perf_top*, %struct.perf_top** %5, align 8
  %34 = call i32 @perf_top__print_sym_table(%struct.perf_top* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @poll(%struct.pollfd* %3, i32 1, i32 %35)
  switch i32 %36, label %45 [
    i32 0, label %37
    i32 -1, label %38
  ]

37:                                               ; preds = %32
  br label %28

38:                                               ; preds = %32
  %39 = load i32, i32* @errno, align 4
  %40 = load i32, i32* @EINTR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %28

43:                                               ; preds = %38
  %44 = load i32, i32* @__fallthrough, align 4
  br label %45

45:                                               ; preds = %32, %43
  %46 = load i32, i32* @stdin, align 4
  %47 = call i32 @getc(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @TCSAFLUSH, align 4
  %49 = call i32 @tcsetattr(i32 0, i32 %48, %struct.termios* %4)
  %50 = load %struct.perf_top*, %struct.perf_top** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @perf_top__handle_keypress(%struct.perf_top* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %19

55:                                               ; preds = %45
  %56 = call i32 (...) @stop_top()
  br label %57

57:                                               ; preds = %55
  br label %28

58:                                               ; preds = %28
  %59 = load i32, i32* @TCSAFLUSH, align 4
  %60 = call i32 @tcsetattr(i32 0, i32 %59, %struct.termios* %4)
  ret i8* null
}

declare dso_local i32 @unshare(i32) #1

declare dso_local i32 @prctl(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @display_setup_sig(...) #1

declare dso_local i32 @pthread__unblock_sigwinch(...) #1

declare dso_local i32 @set_term_quiet_input(%struct.termios*) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @perf_top__print_sym_table(%struct.perf_top*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @perf_top__handle_keypress(%struct.perf_top*, i32) #1

declare dso_local i32 @stop_top(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
