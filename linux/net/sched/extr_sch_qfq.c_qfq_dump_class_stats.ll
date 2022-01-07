; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.qfq_class = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tc_qfq_stats = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @qfq_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.qfq_class*, align 8
  %9 = alloca %struct.tc_qfq_stats, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.qfq_class*
  store %struct.qfq_class* %11, %struct.qfq_class** %8, align 8
  %12 = call i32 @memset(%struct.tc_qfq_stats* %9, i32 0, i32 8)
  %13 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %14 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.tc_qfq_stats, %struct.tc_qfq_stats* %9, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %20 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.tc_qfq_stats, %struct.tc_qfq_stats* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %26 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %25)
  %27 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %28 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %29 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %28, i32 0, i32 2
  %30 = call i64 @gnet_stats_copy_basic(i32 %26, %struct.gnet_dump* %27, i32* null, i32* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %3
  %33 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %34 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %35 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %34, i32 0, i32 1
  %36 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %33, i32* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %40 = load %struct.qfq_class*, %struct.qfq_class** %8, align 8
  %41 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @qdisc_qstats_copy(%struct.gnet_dump* %39, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %32, %3
  store i32 -1, i32* %4, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %48 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %47, %struct.tc_qfq_stats* %9, i32 8)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %45
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.tc_qfq_stats*, i32, i32) #1

declare dso_local i64 @gnet_stats_copy_basic(i32, %struct.gnet_dump*, i32*, i32*) #1

declare dso_local i32 @qdisc_root_sleeping_running(%struct.Qdisc*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @qdisc_qstats_copy(%struct.gnet_dump*, i32) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.tc_qfq_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
