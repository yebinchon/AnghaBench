; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_trace_kprobe_release.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_trace_kprobe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_event = type { i32 }
%struct.trace_kprobe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dyn_event*)* @trace_kprobe_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_kprobe_release(%struct.dyn_event* %0) #0 {
  %2 = alloca %struct.dyn_event*, align 8
  %3 = alloca %struct.trace_kprobe*, align 8
  %4 = alloca i32, align 4
  store %struct.dyn_event* %0, %struct.dyn_event** %2, align 8
  %5 = load %struct.dyn_event*, %struct.dyn_event** %2, align 8
  %6 = call %struct.trace_kprobe* @to_trace_kprobe(%struct.dyn_event* %5)
  store %struct.trace_kprobe* %6, %struct.trace_kprobe** %3, align 8
  %7 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %8 = call i32 @unregister_trace_kprobe(%struct.trace_kprobe* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.trace_kprobe*, %struct.trace_kprobe** %3, align 8
  %13 = call i32 @free_trace_kprobe(%struct.trace_kprobe* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

declare dso_local %struct.trace_kprobe* @to_trace_kprobe(%struct.dyn_event*) #1

declare dso_local i32 @unregister_trace_kprobe(%struct.trace_kprobe*) #1

declare dso_local i32 @free_trace_kprobe(%struct.trace_kprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
