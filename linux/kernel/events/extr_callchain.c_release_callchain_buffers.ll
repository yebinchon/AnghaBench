; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_callchain.c_release_callchain_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_callchain.c_release_callchain_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_cpus_entries = type { i32 }

@callchain_cpus_entries = common dso_local global %struct.callchain_cpus_entries* null, align 8
@release_callchain_buffers_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @release_callchain_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_callchain_buffers() #0 {
  %1 = alloca %struct.callchain_cpus_entries*, align 8
  %2 = load %struct.callchain_cpus_entries*, %struct.callchain_cpus_entries** @callchain_cpus_entries, align 8
  store %struct.callchain_cpus_entries* %2, %struct.callchain_cpus_entries** %1, align 8
  %3 = load %struct.callchain_cpus_entries*, %struct.callchain_cpus_entries** @callchain_cpus_entries, align 8
  %4 = call i32 @RCU_INIT_POINTER(%struct.callchain_cpus_entries* %3, i32* null)
  %5 = load %struct.callchain_cpus_entries*, %struct.callchain_cpus_entries** %1, align 8
  %6 = getelementptr inbounds %struct.callchain_cpus_entries, %struct.callchain_cpus_entries* %5, i32 0, i32 0
  %7 = load i32, i32* @release_callchain_buffers_rcu, align 4
  %8 = call i32 @call_rcu(i32* %6, i32 %7)
  ret void
}

declare dso_local i32 @RCU_INIT_POINTER(%struct.callchain_cpus_entries*, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
