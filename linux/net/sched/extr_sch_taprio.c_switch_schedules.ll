; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_switch_schedules.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_switch_schedules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taprio_sched = type { i32, i32 }
%struct.sched_gate_list = type { i32 }

@taprio_free_sched_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.taprio_sched*, %struct.sched_gate_list**, %struct.sched_gate_list**)* @switch_schedules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_schedules(%struct.taprio_sched* %0, %struct.sched_gate_list** %1, %struct.sched_gate_list** %2) #0 {
  %4 = alloca %struct.taprio_sched*, align 8
  %5 = alloca %struct.sched_gate_list**, align 8
  %6 = alloca %struct.sched_gate_list**, align 8
  store %struct.taprio_sched* %0, %struct.taprio_sched** %4, align 8
  store %struct.sched_gate_list** %1, %struct.sched_gate_list*** %5, align 8
  store %struct.sched_gate_list** %2, %struct.sched_gate_list*** %6, align 8
  %7 = load %struct.taprio_sched*, %struct.taprio_sched** %4, align 8
  %8 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sched_gate_list**, %struct.sched_gate_list*** %5, align 8
  %11 = load %struct.sched_gate_list*, %struct.sched_gate_list** %10, align 8
  %12 = call i32 @rcu_assign_pointer(i32 %9, %struct.sched_gate_list* %11)
  %13 = load %struct.taprio_sched*, %struct.taprio_sched** %4, align 8
  %14 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rcu_assign_pointer(i32 %15, %struct.sched_gate_list* null)
  %17 = load %struct.sched_gate_list**, %struct.sched_gate_list*** %6, align 8
  %18 = load %struct.sched_gate_list*, %struct.sched_gate_list** %17, align 8
  %19 = icmp ne %struct.sched_gate_list* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.sched_gate_list**, %struct.sched_gate_list*** %6, align 8
  %22 = load %struct.sched_gate_list*, %struct.sched_gate_list** %21, align 8
  %23 = getelementptr inbounds %struct.sched_gate_list, %struct.sched_gate_list* %22, i32 0, i32 0
  %24 = load i32, i32* @taprio_free_sched_cb, align 4
  %25 = call i32 @call_rcu(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %3
  %27 = load %struct.sched_gate_list**, %struct.sched_gate_list*** %5, align 8
  %28 = load %struct.sched_gate_list*, %struct.sched_gate_list** %27, align 8
  %29 = load %struct.sched_gate_list**, %struct.sched_gate_list*** %6, align 8
  store %struct.sched_gate_list* %28, %struct.sched_gate_list** %29, align 8
  %30 = load %struct.sched_gate_list**, %struct.sched_gate_list*** %5, align 8
  store %struct.sched_gate_list* null, %struct.sched_gate_list** %30, align 8
  ret void
}

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sched_gate_list*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
