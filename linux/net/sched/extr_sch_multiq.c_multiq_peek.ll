; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_peek.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.multiq_sched_data = type { i32, i32, %struct.Qdisc** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @multiq_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @multiq_peek(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.multiq_sched_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = call %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.multiq_sched_data* %10, %struct.multiq_sched_data** %4, align 8
  %11 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %12 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %58, %1
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %17 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %61

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %25 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp uge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %20
  %30 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %31 = call i32 @qdisc_dev(%struct.Qdisc* %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @netdev_get_tx_queue(i32 %31, i32 %32)
  %34 = call i32 @netif_xmit_stopped(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %29
  %37 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %4, align 8
  %38 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %37, i32 0, i32 2
  %39 = load %struct.Qdisc**, %struct.Qdisc*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %39, i64 %41
  %43 = load %struct.Qdisc*, %struct.Qdisc** %42, align 8
  store %struct.Qdisc* %43, %struct.Qdisc** %6, align 8
  %44 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %45 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to %struct.sk_buff* (%struct.Qdisc*)**
  %49 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %48, align 8
  %50 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %51 = call %struct.sk_buff* %49(%struct.Qdisc* %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %7, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %2, align 8
  br label %62

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %29
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %14

61:                                               ; preds = %14
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %62

62:                                               ; preds = %61, %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %63
}

declare dso_local %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
