; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_dump_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_dump_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.choke_sched_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.tc_choke_xstats = type { i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.gnet_dump*)* @choke_dump_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choke_dump_stats(%struct.Qdisc* %0, %struct.gnet_dump* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.gnet_dump*, align 8
  %5 = alloca %struct.choke_sched_data*, align 8
  %6 = alloca %struct.tc_choke_xstats, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.gnet_dump* %1, %struct.gnet_dump** %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.choke_sched_data* %8, %struct.choke_sched_data** %5, align 8
  %9 = getelementptr inbounds %struct.tc_choke_xstats, %struct.tc_choke_xstats* %6, i32 0, i32 0
  %10 = load %struct.choke_sched_data*, %struct.choke_sched_data** %5, align 8
  %11 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 8
  %14 = getelementptr inbounds %struct.tc_choke_xstats, %struct.tc_choke_xstats* %6, i32 0, i32 1
  %15 = load %struct.choke_sched_data*, %struct.choke_sched_data** %5, align 8
  %16 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds %struct.tc_choke_xstats, %struct.tc_choke_xstats* %6, i32 0, i32 2
  %20 = load %struct.choke_sched_data*, %struct.choke_sched_data** %5, align 8
  %21 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %19, align 8
  %24 = getelementptr inbounds %struct.tc_choke_xstats, %struct.tc_choke_xstats* %6, i32 0, i32 3
  %25 = load %struct.choke_sched_data*, %struct.choke_sched_data** %5, align 8
  %26 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.choke_sched_data*, %struct.choke_sched_data** %5, align 8
  %30 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %28, %32
  store i64 %33, i64* %24, align 8
  %34 = getelementptr inbounds %struct.tc_choke_xstats, %struct.tc_choke_xstats* %6, i32 0, i32 4
  %35 = load %struct.choke_sched_data*, %struct.choke_sched_data** %5, align 8
  %36 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.choke_sched_data*, %struct.choke_sched_data** %5, align 8
  %40 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %38, %42
  store i64 %43, i64* %34, align 8
  %44 = load %struct.gnet_dump*, %struct.gnet_dump** %4, align 8
  %45 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %44, %struct.tc_choke_xstats* %6, i32 32)
  ret i32 %45
}

declare dso_local %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.tc_choke_xstats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
