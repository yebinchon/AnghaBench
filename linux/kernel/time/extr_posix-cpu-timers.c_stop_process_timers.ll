; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_stop_process_timers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_stop_process_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal_struct = type { %struct.posix_cputimers }
%struct.posix_cputimers = type { i32 }

@TICK_DEP_BIT_POSIX_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.signal_struct*)* @stop_process_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_process_timers(%struct.signal_struct* %0) #0 {
  %2 = alloca %struct.signal_struct*, align 8
  %3 = alloca %struct.posix_cputimers*, align 8
  store %struct.signal_struct* %0, %struct.signal_struct** %2, align 8
  %4 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %5 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i32 0, i32 0
  store %struct.posix_cputimers* %5, %struct.posix_cputimers** %3, align 8
  %6 = load %struct.posix_cputimers*, %struct.posix_cputimers** %3, align 8
  %7 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @WRITE_ONCE(i32 %8, i32 0)
  %10 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %11 = load i32, i32* @TICK_DEP_BIT_POSIX_TIMER, align 4
  %12 = call i32 @tick_dep_clear_signal(%struct.signal_struct* %10, i32 %11)
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @tick_dep_clear_signal(%struct.signal_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
