; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_perf_output_get_handle.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_perf_output_get_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i32, %struct.ring_buffer* }
%struct.ring_buffer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_output_handle*)* @perf_output_get_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_output_get_handle(%struct.perf_output_handle* %0) #0 {
  %2 = alloca %struct.perf_output_handle*, align 8
  %3 = alloca %struct.ring_buffer*, align 8
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %2, align 8
  %4 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %5 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %4, i32 0, i32 1
  %6 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  store %struct.ring_buffer* %6, %struct.ring_buffer** %3, align 8
  %7 = call i32 (...) @preempt_disable()
  %8 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %8, i32 0, i32 1
  %10 = load volatile i32, i32* %9, align 4
  %11 = add i32 %10, 1
  store volatile i32 %11, i32* %9, align 4
  %12 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %12, i32 0, i32 0
  %14 = call i32 @local_read(i32* %13)
  %15 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %16 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @local_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
