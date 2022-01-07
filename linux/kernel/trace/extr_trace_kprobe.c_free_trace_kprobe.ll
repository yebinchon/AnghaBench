; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_free_trace_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_free_trace_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_kprobe = type { i32, %struct.trace_kprobe*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_kprobe*)* @free_trace_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_trace_kprobe(%struct.trace_kprobe* %0) #0 {
  %2 = alloca %struct.trace_kprobe*, align 8
  store %struct.trace_kprobe* %0, %struct.trace_kprobe** %2, align 8
  %3 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %4 = icmp ne %struct.trace_kprobe* %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %7 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %6, i32 0, i32 2
  %8 = call i32 @trace_probe_cleanup(i32* %7)
  %9 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %10 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %9, i32 0, i32 1
  %11 = load %struct.trace_kprobe*, %struct.trace_kprobe** %10, align 8
  %12 = call i32 @kfree(%struct.trace_kprobe* %11)
  %13 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %14 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @free_percpu(i32 %15)
  %17 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %18 = call i32 @kfree(%struct.trace_kprobe* %17)
  br label %19

19:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @trace_probe_cleanup(i32*) #1

declare dso_local i32 @kfree(%struct.trace_kprobe*) #1

declare dso_local i32 @free_percpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
