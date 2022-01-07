; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__, {}* }
%struct.TYPE_2__ = type { i32 }
%struct.multiq_sched_data = type { i32, i32, %struct.Qdisc** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @multiq_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @multiq_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.multiq_sched_data*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.multiq_sched_data* %9, %struct.multiq_sched_data** %4, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %70, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %13 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %10
  %17 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %18 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %22 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %25 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %30 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %16
  %32 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %33 = call i32 @qdisc_dev(%struct.Qdisc* %32)
  %34 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %35 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netdev_get_tx_queue(i32 %33, i32 %36)
  %38 = call i32 @netif_xmit_stopped(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %31
  %41 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %42 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %41, i32 0, i32 2
  %43 = load %struct.Qdisc**, %struct.Qdisc*** %42, align 8
  %44 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %45 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %43, i64 %47
  %49 = load %struct.Qdisc*, %struct.Qdisc** %48, align 8
  store %struct.Qdisc* %49, %struct.Qdisc** %5, align 8
  %50 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %51 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %50, i32 0, i32 1
  %52 = bitcast {}** %51 to %struct.sk_buff* (%struct.Qdisc*)**
  %53 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %52, align 8
  %54 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %55 = call %struct.sk_buff* %53(%struct.Qdisc* %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %6, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %40
  %59 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @qdisc_bstats_update(%struct.Qdisc* %59, %struct.sk_buff* %60)
  %62 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %63 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %2, align 8
  br label %74

68:                                               ; preds = %40
  br label %69

69:                                               ; preds = %68, %31
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %10

73:                                               ; preds = %10
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %75
}

declare dso_local %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
