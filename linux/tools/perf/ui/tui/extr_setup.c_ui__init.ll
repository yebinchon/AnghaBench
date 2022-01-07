; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_setup.c_ui__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_setup.c_ui__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"TUI initialization failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"^(kB)\00", align 1
@SL_KEY_UNTAB = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@ui__signal_backtrace = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@ui__signal = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@perf_tui_eops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui__init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @SLutf8_enable(i32 -1)
  %3 = call i32 (...) @SLtt_get_terminfo()
  %4 = call i32 (...) @SLtt_get_screen_size()
  %5 = call i32 (...) @SLsmg_init_smg()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %43

9:                                                ; preds = %0
  %10 = call i32 @SLang_init_tty(i32 -1, i32 0, i32 0)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %43

14:                                               ; preds = %9
  %15 = call i32 (...) @SLkp_init()
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %43

20:                                               ; preds = %14
  %21 = load i32, i32* @SL_KEY_UNTAB, align 4
  %22 = call i32 @SLkp_define_keysym(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @SIGSEGV, align 4
  %24 = load i32, i32* @ui__signal_backtrace, align 4
  %25 = call i32 @signal(i32 %23, i32 %24)
  %26 = load i32, i32* @SIGFPE, align 4
  %27 = load i32, i32* @ui__signal_backtrace, align 4
  %28 = call i32 @signal(i32 %26, i32 %27)
  %29 = load i32, i32* @SIGINT, align 4
  %30 = load i32, i32* @ui__signal, align 4
  %31 = call i32 @signal(i32 %29, i32 %30)
  %32 = load i32, i32* @SIGQUIT, align 4
  %33 = load i32, i32* @ui__signal, align 4
  %34 = call i32 @signal(i32 %32, i32 %33)
  %35 = load i32, i32* @SIGTERM, align 4
  %36 = load i32, i32* @ui__signal, align 4
  %37 = call i32 @signal(i32 %35, i32 %36)
  %38 = call i32 @perf_error__register(i32* @perf_tui_eops)
  %39 = call i32 (...) @ui_helpline__init()
  %40 = call i32 (...) @ui_browser__init()
  %41 = call i32 (...) @tui_progress__init()
  %42 = call i32 (...) @hist_browser__init_hpp()
  br label %43

43:                                               ; preds = %20, %18, %13, %8
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @SLutf8_enable(i32) #1

declare dso_local i32 @SLtt_get_terminfo(...) #1

declare dso_local i32 @SLtt_get_screen_size(...) #1

declare dso_local i32 @SLsmg_init_smg(...) #1

declare dso_local i32 @SLang_init_tty(i32, i32, i32) #1

declare dso_local i32 @SLkp_init(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @SLkp_define_keysym(i8*, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @perf_error__register(i32*) #1

declare dso_local i32 @ui_helpline__init(...) #1

declare dso_local i32 @ui_browser__init(...) #1

declare dso_local i32 @tui_progress__init(...) #1

declare dso_local i32 @hist_browser__init_hpp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
