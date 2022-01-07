; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_setup.c_ui__setup_sigwinch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_setup.c_ui__setup_sigwinch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ui__setup_sigwinch.done = internal global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4
@ui__sigwinch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ui__setup_sigwinch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui__setup_sigwinch() #0 {
  %1 = load i32, i32* @ui__setup_sigwinch.done, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %9

4:                                                ; preds = %0
  store i32 1, i32* @ui__setup_sigwinch.done, align 4
  %5 = call i32 (...) @pthread__unblock_sigwinch()
  %6 = load i32, i32* @SIGWINCH, align 4
  %7 = load i32, i32* @ui__sigwinch, align 4
  %8 = call i32 @signal(i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %4, %3
  ret void
}

declare dso_local i32 @pthread__unblock_sigwinch(...) #1

declare dso_local i32 @signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
