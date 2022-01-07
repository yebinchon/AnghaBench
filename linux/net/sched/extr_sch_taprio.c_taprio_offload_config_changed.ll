; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_offload_config_changed.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_offload_config_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taprio_sched = type { i32, i32, i32 }
%struct.sched_gate_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.taprio_sched*)* @taprio_offload_config_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @taprio_offload_config_changed(%struct.taprio_sched* %0) #0 {
  %2 = alloca %struct.taprio_sched*, align 8
  %3 = alloca %struct.sched_gate_list*, align 8
  %4 = alloca %struct.sched_gate_list*, align 8
  store %struct.taprio_sched* %0, %struct.taprio_sched** %2, align 8
  %5 = load %struct.taprio_sched*, %struct.taprio_sched** %2, align 8
  %6 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.taprio_sched*, %struct.taprio_sched** %2, align 8
  %9 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.taprio_sched*, %struct.taprio_sched** %2, align 8
  %12 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %11, i32 0, i32 0
  %13 = call i32 @lockdep_is_held(i32* %12)
  %14 = call %struct.sched_gate_list* @rcu_dereference_protected(i32 %10, i32 %13)
  store %struct.sched_gate_list* %14, %struct.sched_gate_list** %3, align 8
  %15 = load %struct.taprio_sched*, %struct.taprio_sched** %2, align 8
  %16 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.taprio_sched*, %struct.taprio_sched** %2, align 8
  %19 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %18, i32 0, i32 0
  %20 = call i32 @lockdep_is_held(i32* %19)
  %21 = call %struct.sched_gate_list* @rcu_dereference_protected(i32 %17, i32 %20)
  store %struct.sched_gate_list* %21, %struct.sched_gate_list** %4, align 8
  %22 = load %struct.taprio_sched*, %struct.taprio_sched** %2, align 8
  %23 = call i32 @switch_schedules(%struct.taprio_sched* %22, %struct.sched_gate_list** %4, %struct.sched_gate_list** %3)
  %24 = load %struct.taprio_sched*, %struct.taprio_sched** %2, align 8
  %25 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sched_gate_list* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @switch_schedules(%struct.taprio_sched*, %struct.sched_gate_list**, %struct.sched_gate_list**) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
