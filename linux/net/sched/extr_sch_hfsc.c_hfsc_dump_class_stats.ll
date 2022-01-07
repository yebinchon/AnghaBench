; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.hfsc_class = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tc_hfsc_stats = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @hfsc_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.hfsc_class*, align 8
  %9 = alloca %struct.tc_hfsc_stats, align 4
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to %struct.hfsc_class*
  store %struct.hfsc_class* %12, %struct.hfsc_class** %8, align 8
  %13 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %14 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %17 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @qdisc_qstats_qlen_backlog(i32 %15, i32* %10, i32* %18)
  %20 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %21 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.tc_hfsc_stats, %struct.tc_hfsc_stats* %9, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %25 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tc_hfsc_stats, %struct.tc_hfsc_stats* %9, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %29 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.tc_hfsc_stats, %struct.tc_hfsc_stats* %9, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %33 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.tc_hfsc_stats, %struct.tc_hfsc_stats* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %37 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %36)
  %38 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %39 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %40 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %39, i32 0, i32 2
  %41 = call i64 @gnet_stats_copy_basic(i32 %37, %struct.gnet_dump* %38, i32* null, i32* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %3
  %44 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %45 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %46 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %45, i32 0, i32 1
  %47 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %44, i32* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %51 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %52 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %51, i32 0, i32 0
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %50, i32* null, %struct.TYPE_2__* %52, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %43, %3
  store i32 -1, i32* %4, align 4
  br label %60

57:                                               ; preds = %49
  %58 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %59 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %58, %struct.tc_hfsc_stats* %9, i32 16)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @qdisc_qstats_qlen_backlog(i32, i32*, i32*) #1

declare dso_local i64 @gnet_stats_copy_basic(i32, %struct.gnet_dump*, i32*, i32*) #1

declare dso_local i32 @qdisc_root_sleeping_running(%struct.Qdisc*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.tc_hfsc_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
