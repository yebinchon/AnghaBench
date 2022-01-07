; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.cbs_sched_data = type { i32, i32, i32 }
%struct.net_device = type { i32 }

@cbs_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @cbs_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbs_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.cbs_sched_data*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %5 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %6 = call %struct.cbs_sched_data* @qdisc_priv(%struct.Qdisc* %5)
  store %struct.cbs_sched_data* %6, %struct.cbs_sched_data** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %7)
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %3, align 8
  %10 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %3, align 8
  %16 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %15, i32 0, i32 2
  %17 = call i32 @qdisc_watchdog_cancel(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %3, align 8
  %20 = call i32 @cbs_disable_offload(%struct.net_device* %18, %struct.cbs_sched_data* %19)
  %21 = call i32 @spin_lock(i32* @cbs_list_lock)
  %22 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %3, align 8
  %23 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %22, i32 0, i32 1
  %24 = call i32 @list_del(i32* %23)
  %25 = call i32 @spin_unlock(i32* @cbs_list_lock)
  %26 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %3, align 8
  %27 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @qdisc_put(i32 %28)
  br label %30

30:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.cbs_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_watchdog_cancel(i32*) #1

declare dso_local i32 @cbs_disable_offload(%struct.net_device*, %struct.cbs_sched_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qdisc_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
