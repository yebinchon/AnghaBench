; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_set_sched_topology.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_set_sched_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_domain_topology_level = type { i32 }

@sched_smp_initialized = common dso_local global i32 0, align 4
@sched_domain_topology = common dso_local global %struct.sched_domain_topology_level* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_sched_topology(%struct.sched_domain_topology_level* %0) #0 {
  %2 = alloca %struct.sched_domain_topology_level*, align 8
  store %struct.sched_domain_topology_level* %0, %struct.sched_domain_topology_level** %2, align 8
  %3 = load i32, i32* @sched_smp_initialized, align 4
  %4 = call i64 @WARN_ON_ONCE(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %9

7:                                                ; preds = %1
  %8 = load %struct.sched_domain_topology_level*, %struct.sched_domain_topology_level** %2, align 8
  store %struct.sched_domain_topology_level* %8, %struct.sched_domain_topology_level** @sched_domain_topology, align 8
  br label %9

9:                                                ; preds = %7, %6
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
