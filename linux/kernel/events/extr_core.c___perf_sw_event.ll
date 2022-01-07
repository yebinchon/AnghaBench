; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_sw_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_sw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__perf_sw_event(i32 %0, i32 %1, %struct.pt_regs* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @preempt_disable_notrace()
  %11 = call i32 (...) @perf_swevent_get_recursion_context()
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %26

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @___perf_sw_event(i32 %19, i32 %20, %struct.pt_regs* %21, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @perf_swevent_put_recursion_context(i32 %24)
  br label %26

26:                                               ; preds = %18, %17
  %27 = call i32 (...) @preempt_enable_notrace()
  ret void
}

declare dso_local i32 @preempt_disable_notrace(...) #1

declare dso_local i32 @perf_swevent_get_recursion_context(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @___perf_sw_event(i32, i32, %struct.pt_regs*, i32) #1

declare dso_local i32 @perf_swevent_put_recursion_context(i32) #1

declare dso_local i32 @preempt_enable_notrace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
