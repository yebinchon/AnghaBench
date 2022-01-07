; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_drop_by_idx.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_drop_by_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.choke_sched_data = type { i32, i32, %struct.sk_buff** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, i32, %struct.sk_buff**)* @choke_drop_by_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choke_drop_by_idx(%struct.Qdisc* %0, i32 %1, %struct.sk_buff** %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca %struct.choke_sched_data*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff** %2, %struct.sk_buff*** %6, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.choke_sched_data* %10, %struct.choke_sched_data** %7, align 8
  %11 = load %struct.choke_sched_data*, %struct.choke_sched_data** %7, align 8
  %12 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %11, i32 0, i32 2
  %13 = load %struct.sk_buff**, %struct.sk_buff*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %13, i64 %15
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.choke_sched_data*, %struct.choke_sched_data** %7, align 8
  %19 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %18, i32 0, i32 2
  %20 = load %struct.sk_buff**, %struct.sk_buff*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %20, i64 %22
  store %struct.sk_buff* null, %struct.sk_buff** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.choke_sched_data*, %struct.choke_sched_data** %7, align 8
  %26 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.choke_sched_data*, %struct.choke_sched_data** %7, align 8
  %31 = call i32 @choke_zap_head_holes(%struct.choke_sched_data* %30)
  br label %32

32:                                               ; preds = %29, %3
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.choke_sched_data*, %struct.choke_sched_data** %7, align 8
  %35 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.choke_sched_data*, %struct.choke_sched_data** %7, align 8
  %40 = call i32 @choke_zap_tail_holes(%struct.choke_sched_data* %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %42, %struct.sk_buff* %43)
  %45 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @qdisc_pkt_len(%struct.sk_buff* %46)
  %48 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %45, i32 1, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %51 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %52 = call i32 @qdisc_drop(%struct.sk_buff* %49, %struct.Qdisc* %50, %struct.sk_buff** %51)
  %53 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %54 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  ret void
}

declare dso_local %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @choke_zap_head_holes(%struct.choke_sched_data*) #1

declare dso_local i32 @choke_zap_tail_holes(%struct.choke_sched_data*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i32, i32) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
