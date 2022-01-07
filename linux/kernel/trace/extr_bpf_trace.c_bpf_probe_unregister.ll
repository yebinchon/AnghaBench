; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_bpf_probe_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_bpf_probe_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_raw_event_map = type { i64, i32 }
%struct.bpf_prog = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_probe_unregister(%struct.bpf_raw_event_map* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca %struct.bpf_raw_event_map*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  store %struct.bpf_raw_event_map* %0, %struct.bpf_raw_event_map** %3, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %4, align 8
  %5 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %3, align 8
  %6 = getelementptr inbounds %struct.bpf_raw_event_map, %struct.bpf_raw_event_map* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %3, align 8
  %9 = getelementptr inbounds %struct.bpf_raw_event_map, %struct.bpf_raw_event_map* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %13 = call i32 @tracepoint_probe_unregister(i32 %7, i8* %11, %struct.bpf_prog* %12)
  ret i32 %13
}

declare dso_local i32 @tracepoint_probe_unregister(i32, i8*, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
