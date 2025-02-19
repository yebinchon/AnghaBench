; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.etf_sched_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.Qdisc* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @etf_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etf_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.etf_sched_data*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %5 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %6 = call %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc* %5)
  store %struct.etf_sched_data* %6, %struct.etf_sched_data** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %7)
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.etf_sched_data*, %struct.etf_sched_data** %3, align 8
  %10 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %14 = icmp eq %struct.Qdisc* %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.etf_sched_data*, %struct.etf_sched_data** %3, align 8
  %17 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %16, i32 0, i32 0
  %18 = call i32 @qdisc_watchdog_cancel(%struct.TYPE_2__* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.etf_sched_data*, %struct.etf_sched_data** %3, align 8
  %22 = call i32 @etf_disable_offload(%struct.net_device* %20, %struct.etf_sched_data* %21)
  ret void
}

declare dso_local %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_watchdog_cancel(%struct.TYPE_2__*) #1

declare dso_local i32 @etf_disable_offload(%struct.net_device*, %struct.etf_sched_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
