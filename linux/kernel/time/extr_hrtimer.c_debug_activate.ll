; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_debug_activate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_debug_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hrtimer*, i32)* @debug_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_activate(%struct.hrtimer* %0, i32 %1) #0 {
  %3 = alloca %struct.hrtimer*, align 8
  %4 = alloca i32, align 4
  store %struct.hrtimer* %0, %struct.hrtimer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @debug_hrtimer_activate(%struct.hrtimer* %5, i32 %6)
  %8 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @trace_hrtimer_start(%struct.hrtimer* %8, i32 %9)
  ret void
}

declare dso_local i32 @debug_hrtimer_activate(%struct.hrtimer*, i32) #1

declare dso_local i32 @trace_hrtimer_start(%struct.hrtimer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
