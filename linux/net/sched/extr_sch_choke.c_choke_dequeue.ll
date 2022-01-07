; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.choke_sched_data = type { i64, i64, %struct.sk_buff**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @choke_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @choke_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.choke_sched_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %7 = call %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.choke_sched_data* %7, %struct.choke_sched_data** %4, align 8
  %8 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %9 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %12 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %17 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %16, i32 0, i32 3
  %18 = call i32 @red_is_idling(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %22 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %21, i32 0, i32 3
  %23 = call i32 @red_start_of_idle_period(i32* %22)
  br label %24

24:                                               ; preds = %20, %15
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %55

25:                                               ; preds = %1
  %26 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %27 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %26, i32 0, i32 2
  %28 = load %struct.sk_buff**, %struct.sk_buff*** %27, align 8
  %29 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %30 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %28, i64 %31
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  store %struct.sk_buff* %33, %struct.sk_buff** %5, align 8
  %34 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %35 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %34, i32 0, i32 2
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %35, align 8
  %37 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %38 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %36, i64 %39
  store %struct.sk_buff* null, %struct.sk_buff** %40, align 8
  %41 = load %struct.choke_sched_data*, %struct.choke_sched_data** %4, align 8
  %42 = call i32 @choke_zap_head_holes(%struct.choke_sched_data* %41)
  %43 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %48, %struct.sk_buff* %49)
  %51 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @qdisc_bstats_update(%struct.Qdisc* %51, %struct.sk_buff* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %2, align 8
  br label %55

55:                                               ; preds = %25, %24
  %56 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %56
}

declare dso_local %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @red_is_idling(i32*) #1

declare dso_local i32 @red_start_of_idle_period(i32*) #1

declare dso_local i32 @choke_zap_head_holes(%struct.choke_sched_data*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
