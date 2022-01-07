; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_timesortedlist_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_timesortedlist_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32, i32*, i32*, i32 }
%struct.etf_sched_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.sk_buff*)* @timesortedlist_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timesortedlist_remove(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.etf_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %7 = call %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.etf_sched_data* %7, %struct.etf_sched_data** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 4
  %10 = load %struct.etf_sched_data*, %struct.etf_sched_data** %5, align 8
  %11 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %10, i32 0, i32 1
  %12 = call i32 @rb_erase_cached(i32* %9, i32* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %18 = call i32 @qdisc_dev(%struct.Qdisc* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %21, %struct.sk_buff* %22)
  %24 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @qdisc_bstats_update(%struct.Qdisc* %24, %struct.sk_buff* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.etf_sched_data*, %struct.etf_sched_data** %5, align 8
  %31 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %33 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  ret void
}

declare dso_local %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @rb_erase_cached(i32*, i32*) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
