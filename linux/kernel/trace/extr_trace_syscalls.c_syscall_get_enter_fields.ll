; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_syscalls.c_syscall_get_enter_fields.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_syscalls.c_syscall_get_enter_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.trace_event_call = type { %struct.syscall_metadata* }
%struct.syscall_metadata = type { %struct.list_head }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.trace_event_call*)* @syscall_get_enter_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @syscall_get_enter_fields(%struct.trace_event_call* %0) #0 {
  %2 = alloca %struct.trace_event_call*, align 8
  %3 = alloca %struct.syscall_metadata*, align 8
  store %struct.trace_event_call* %0, %struct.trace_event_call** %2, align 8
  %4 = load %struct.trace_event_call*, %struct.trace_event_call** %2, align 8
  %5 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %4, i32 0, i32 0
  %6 = load %struct.syscall_metadata*, %struct.syscall_metadata** %5, align 8
  store %struct.syscall_metadata* %6, %struct.syscall_metadata** %3, align 8
  %7 = load %struct.syscall_metadata*, %struct.syscall_metadata** %3, align 8
  %8 = getelementptr inbounds %struct.syscall_metadata, %struct.syscall_metadata* %7, i32 0, i32 0
  ret %struct.list_head* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
