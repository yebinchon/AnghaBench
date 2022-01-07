; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_trace_output_kern.c_bpf_prog1.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_trace_output_kern.c_bpf_prog1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.S = type { i32, i32 }
%struct.S.0 = type { i32, i32 }

@my_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog1(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.S, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = call i32 (...) @bpf_get_current_pid_tgid()
  %5 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  store i32 305419896, i32* %6, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = bitcast %struct.S* %3 to %struct.S.0*
  %9 = call i32 @bpf_perf_event_output(%struct.pt_regs* %7, i32* @my_map, i32 0, %struct.S.0* %8, i32 8)
  ret i32 0
}

declare dso_local i32 @bpf_get_current_pid_tgid(...) #1

declare dso_local i32 @bpf_perf_event_output(%struct.pt_regs*, i32*, i32, %struct.S.0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
