; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.cbq_sched_data = type { i64 }
%struct.cbq_class = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@PSCHED_PASTPERFECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @cbq_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.cbq_sched_data*, align 8
  %9 = alloca %struct.cbq_class*, align 8
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %12 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.cbq_sched_data* %12, %struct.cbq_sched_data** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.cbq_class*
  store %struct.cbq_class* %14, %struct.cbq_class** %9, align 8
  %15 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %16 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %19 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %22 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %25 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %28 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @qdisc_qstats_qlen_backlog(i32 %26, i32* %10, i32* %29)
  %31 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %32 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %3
  %37 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %38 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %41 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %45 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %36, %3
  %48 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %49 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %48)
  %50 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %51 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %52 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %51, i32 0, i32 4
  %53 = call i64 @gnet_stats_copy_basic(i32 %49, %struct.gnet_dump* %50, i32* null, i32* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %47
  %56 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %57 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %58 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %57, i32 0, i32 3
  %59 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %56, i32* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %55
  %62 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %63 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %64 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %63, i32 0, i32 2
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %62, i32* null, %struct.TYPE_3__* %64, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61, %55, %47
  store i32 -1, i32* %4, align 4
  br label %74

69:                                               ; preds = %61
  %70 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %71 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %72 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %71, i32 0, i32 1
  %73 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %70, %struct.TYPE_4__* %72, i32 16)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %68
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_qstats_qlen_backlog(i32, i32*, i32*) #1

declare dso_local i64 @gnet_stats_copy_basic(i32, %struct.gnet_dump*, i32*, i32*) #1

declare dso_local i32 @qdisc_root_sleeping_running(%struct.Qdisc*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
