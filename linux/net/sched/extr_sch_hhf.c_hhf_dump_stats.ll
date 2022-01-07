; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_dump_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hhf.c_hhf_dump_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.hhf_sched_data = type { i32, i32, i32, i32 }
%struct.tc_hhf_xstats = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.gnet_dump*)* @hhf_dump_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hhf_dump_stats(%struct.Qdisc* %0, %struct.gnet_dump* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.gnet_dump*, align 8
  %5 = alloca %struct.hhf_sched_data*, align 8
  %6 = alloca %struct.tc_hhf_xstats, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.gnet_dump* %1, %struct.gnet_dump** %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.hhf_sched_data* %8, %struct.hhf_sched_data** %5, align 8
  %9 = getelementptr inbounds %struct.tc_hhf_xstats, %struct.tc_hhf_xstats* %6, i32 0, i32 0
  %10 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %5, align 8
  %11 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.tc_hhf_xstats, %struct.tc_hhf_xstats* %6, i32 0, i32 1
  %14 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %5, align 8
  %15 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.tc_hhf_xstats, %struct.tc_hhf_xstats* %6, i32 0, i32 2
  %18 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %5, align 8
  %19 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.tc_hhf_xstats, %struct.tc_hhf_xstats* %6, i32 0, i32 3
  %22 = load %struct.hhf_sched_data*, %struct.hhf_sched_data** %5, align 8
  %23 = getelementptr inbounds %struct.hhf_sched_data, %struct.hhf_sched_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = load %struct.gnet_dump*, %struct.gnet_dump** %4, align 8
  %26 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %25, %struct.tc_hhf_xstats* %6, i32 16)
  ret i32 %26
}

declare dso_local %struct.hhf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.tc_hhf_xstats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
