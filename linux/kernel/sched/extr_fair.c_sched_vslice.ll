; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_sched_vslice.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_sched_vslice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32 }
%struct.sched_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfs_rq*, %struct.sched_entity*)* @sched_vslice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_vslice(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %5 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %6 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %7 = call i32 @sched_slice(%struct.cfs_rq* %5, %struct.sched_entity* %6)
  %8 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %9 = call i32 @calc_delta_fair(i32 %7, %struct.sched_entity* %8)
  ret i32 %9
}

declare dso_local i32 @calc_delta_fair(i32, %struct.sched_entity*) #1

declare dso_local i32 @sched_slice(%struct.cfs_rq*, %struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
