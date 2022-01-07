; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_dump_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_dump_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.pie_sched_data = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.tc_pie_xstats = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@PSCHED_TICKS_PER_SEC = common dso_local global i32 0, align 4
@PIE_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.gnet_dump*)* @pie_dump_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pie_dump_stats(%struct.Qdisc* %0, %struct.gnet_dump* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.gnet_dump*, align 8
  %5 = alloca %struct.pie_sched_data*, align 8
  %6 = alloca %struct.tc_pie_xstats, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.gnet_dump* %1, %struct.gnet_dump** %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.pie_sched_data* %8, %struct.pie_sched_data** %5, align 8
  %9 = getelementptr inbounds %struct.tc_pie_xstats, %struct.tc_pie_xstats* %6, i32 0, i32 0
  %10 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %11 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PSCHED_TICKS2NS(i32 %13)
  %15 = load i32, i32* @NSEC_PER_USEC, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = getelementptr inbounds %struct.tc_pie_xstats, %struct.tc_pie_xstats* %6, i32 0, i32 1
  %18 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %19 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PSCHED_TICKS_PER_SEC, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @PIE_SCALE, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %17, align 4
  %26 = getelementptr inbounds %struct.tc_pie_xstats, %struct.tc_pie_xstats* %6, i32 0, i32 2
  %27 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %28 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %26, align 4
  %31 = getelementptr inbounds %struct.tc_pie_xstats, %struct.tc_pie_xstats* %6, i32 0, i32 3
  %32 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %33 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %31, align 4
  %36 = getelementptr inbounds %struct.tc_pie_xstats, %struct.tc_pie_xstats* %6, i32 0, i32 4
  %37 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %38 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %36, align 4
  %41 = getelementptr inbounds %struct.tc_pie_xstats, %struct.tc_pie_xstats* %6, i32 0, i32 5
  %42 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %43 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %41, align 4
  %46 = getelementptr inbounds %struct.tc_pie_xstats, %struct.tc_pie_xstats* %6, i32 0, i32 6
  %47 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %48 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %46, align 4
  %51 = getelementptr inbounds %struct.tc_pie_xstats, %struct.tc_pie_xstats* %6, i32 0, i32 7
  %52 = load %struct.pie_sched_data*, %struct.pie_sched_data** %5, align 8
  %53 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %51, align 4
  %56 = load %struct.gnet_dump*, %struct.gnet_dump** %4, align 8
  %57 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %56, %struct.tc_pie_xstats* %6, i32 32)
  ret i32 %57
}

declare dso_local %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @PSCHED_TICKS2NS(i32) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.tc_pie_xstats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
