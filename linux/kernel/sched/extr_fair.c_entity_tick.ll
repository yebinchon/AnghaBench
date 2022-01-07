; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_entity_tick.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_entity_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32 }
%struct.sched_entity = type { i32 }

@UPDATE_TG = common dso_local global i32 0, align 4
@DOUBLE_TICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*, i32)* @entity_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entity_tick(%struct.cfs_rq* %0, %struct.sched_entity* %1, i32 %2) #0 {
  %4 = alloca %struct.cfs_rq*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca i32, align 4
  store %struct.cfs_rq* %0, %struct.cfs_rq** %4, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %8 = call i32 @update_curr(%struct.cfs_rq* %7)
  %9 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %10 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %11 = load i32, i32* @UPDATE_TG, align 4
  %12 = call i32 @update_load_avg(%struct.cfs_rq* %9, %struct.sched_entity* %10, i32 %11)
  %13 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %14 = call i32 @update_cfs_group(%struct.sched_entity* %13)
  %15 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %16 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %21 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %22 = call i32 @check_preempt_tick(%struct.cfs_rq* %20, %struct.sched_entity* %21)
  br label %23

23:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @update_curr(%struct.cfs_rq*) #1

declare dso_local i32 @update_load_avg(%struct.cfs_rq*, %struct.sched_entity*, i32) #1

declare dso_local i32 @update_cfs_group(%struct.sched_entity*) #1

declare dso_local i32 @check_preempt_tick(%struct.cfs_rq*, %struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
