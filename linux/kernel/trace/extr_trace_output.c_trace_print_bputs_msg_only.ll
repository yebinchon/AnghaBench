; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_bputs_msg_only.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_bputs_msg_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { %struct.trace_entry*, %struct.trace_seq }
%struct.trace_entry = type { i32 }
%struct.trace_seq = type { i32 }
%struct.bputs_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_print_bputs_msg_only(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca %struct.trace_entry*, align 8
  %5 = alloca %struct.bputs_entry*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %6 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %7 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %6, i32 0, i32 1
  store %struct.trace_seq* %7, %struct.trace_seq** %3, align 8
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %9 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %8, i32 0, i32 0
  %10 = load %struct.trace_entry*, %struct.trace_entry** %9, align 8
  store %struct.trace_entry* %10, %struct.trace_entry** %4, align 8
  %11 = load %struct.bputs_entry*, %struct.bputs_entry** %5, align 8
  %12 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %13 = call i32 @trace_assign_type(%struct.bputs_entry* %11, %struct.trace_entry* %12)
  %14 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %15 = load %struct.bputs_entry*, %struct.bputs_entry** %5, align 8
  %16 = getelementptr inbounds %struct.bputs_entry, %struct.bputs_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @trace_seq_puts(%struct.trace_seq* %14, i32 %17)
  %19 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %20 = call i32 @trace_handle_return(%struct.trace_seq* %19)
  ret i32 %20
}

declare dso_local i32 @trace_assign_type(%struct.bputs_entry*, %struct.trace_entry*) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i32) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
