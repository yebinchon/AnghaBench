; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_codel.c_codel_qdisc_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_codel.c_codel_qdisc_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.codel_sched_data = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@qdisc_pkt_len = common dso_local global i32 0, align 4
@codel_get_enqueue_time = common dso_local global i32 0, align 4
@drop_func = common dso_local global i32 0, align 4
@dequeue_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @codel_qdisc_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @codel_qdisc_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.codel_sched_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %5 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %6 = call %struct.codel_sched_data* @qdisc_priv(%struct.Qdisc* %5)
  store %struct.codel_sched_data* %6, %struct.codel_sched_data** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %9 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.codel_sched_data*, %struct.codel_sched_data** %3, align 8
  %12 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %11, i32 0, i32 2
  %13 = load %struct.codel_sched_data*, %struct.codel_sched_data** %3, align 8
  %14 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %13, i32 0, i32 1
  %15 = load %struct.codel_sched_data*, %struct.codel_sched_data** %3, align 8
  %16 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %15, i32 0, i32 0
  %17 = load i32, i32* @qdisc_pkt_len, align 4
  %18 = load i32, i32* @codel_get_enqueue_time, align 4
  %19 = load i32, i32* @drop_func, align 4
  %20 = load i32, i32* @dequeue_func, align 4
  %21 = call %struct.sk_buff* @codel_dequeue(%struct.Qdisc* %7, i32* %10, i32* %12, i32* %14, %struct.TYPE_6__* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %4, align 8
  %22 = load %struct.codel_sched_data*, %struct.codel_sched_data** %3, align 8
  %23 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %1
  %28 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %29 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %35 = load %struct.codel_sched_data*, %struct.codel_sched_data** %3, align 8
  %36 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.codel_sched_data*, %struct.codel_sched_data** %3, align 8
  %40 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %34, i64 %38, i64 %42)
  %44 = load %struct.codel_sched_data*, %struct.codel_sched_data** %3, align 8
  %45 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.codel_sched_data*, %struct.codel_sched_data** %3, align 8
  %48 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %33, %27, %1
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i32 @qdisc_bstats_update(%struct.Qdisc* %54, %struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %58
}

declare dso_local %struct.codel_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @codel_dequeue(%struct.Qdisc*, i32*, i32*, i32*, %struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i64, i64) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
