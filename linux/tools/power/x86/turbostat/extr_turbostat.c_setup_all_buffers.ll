; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_setup_all_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_setup_all_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thread_even = common dso_local global i32 0, align 4
@core_even = common dso_local global i32 0, align 4
@package_even = common dso_local global i32 0, align 4
@thread_odd = common dso_local global i32 0, align 4
@core_odd = common dso_local global i32 0, align 4
@package_odd = common dso_local global i32 0, align 4
@initialize_counters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_all_buffers() #0 {
  %1 = call i32 (...) @topology_probe()
  %2 = call i32 (...) @allocate_irq_buffers()
  %3 = call i32 (...) @allocate_fd_percpu()
  %4 = call i32 @allocate_counters(i32* @thread_even, i32* @core_even, i32* @package_even)
  %5 = call i32 @allocate_counters(i32* @thread_odd, i32* @core_odd, i32* @package_odd)
  %6 = call i32 (...) @allocate_output_buffer()
  %7 = load i32, i32* @initialize_counters, align 4
  %8 = call i32 @for_all_proc_cpus(i32 %7)
  ret void
}

declare dso_local i32 @topology_probe(...) #1

declare dso_local i32 @allocate_irq_buffers(...) #1

declare dso_local i32 @allocate_fd_percpu(...) #1

declare dso_local i32 @allocate_counters(i32*, i32*, i32*) #1

declare dso_local i32 @allocate_output_buffer(...) #1

declare dso_local i32 @for_all_proc_cpus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
