; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_dump_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_dump_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.sfb_sched_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.tc_sfb_xstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.gnet_dump*)* @sfb_dump_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfb_dump_stats(%struct.Qdisc* %0, %struct.gnet_dump* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.gnet_dump*, align 8
  %5 = alloca %struct.sfb_sched_data*, align 8
  %6 = alloca %struct.tc_sfb_xstats, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.gnet_dump* %1, %struct.gnet_dump** %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.sfb_sched_data* %8, %struct.sfb_sched_data** %5, align 8
  %9 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 3
  %13 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %14 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 4
  %18 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %19 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %17, align 4
  %22 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 5
  %23 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %24 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %22, align 4
  %27 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 6
  %28 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %29 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %27, align 4
  %32 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 7
  %33 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %34 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %32, align 4
  %37 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 8
  %38 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %39 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %37, align 4
  %42 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 1
  %43 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 0
  %44 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %5, align 8
  %45 = call i32 @sfb_compute_qlen(i32* %42, i32* %43, %struct.sfb_sched_data* %44)
  %46 = getelementptr inbounds %struct.tc_sfb_xstats, %struct.tc_sfb_xstats* %6, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.gnet_dump*, %struct.gnet_dump** %4, align 8
  %48 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %47, %struct.tc_sfb_xstats* %6, i32 36)
  ret i32 %48
}

declare dso_local %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @sfb_compute_qlen(i32*, i32*, %struct.sfb_sched_data*) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.tc_sfb_xstats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
