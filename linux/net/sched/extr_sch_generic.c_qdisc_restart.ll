; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_qdisc_restart.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_qdisc_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@TCQ_F_NOLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32*)* @qdisc_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdisc_restart(%struct.Qdisc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.sk_buff* @dequeue_skb(%struct.Qdisc* %11, i32* %10, i32* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TCQ_F_NOLOCK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %30 = call i32* @qdisc_lock(%struct.Qdisc* %29)
  store i32* %30, i32** %6, align 8
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %33 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %32)
  store %struct.net_device* %33, %struct.net_device** %8, align 8
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = call %struct.netdev_queue* @skb_get_tx_queue(%struct.net_device* %34, %struct.sk_buff* %35)
  store %struct.netdev_queue* %36, %struct.netdev_queue** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @sch_direct_xmit(%struct.sk_buff* %37, %struct.Qdisc* %38, %struct.net_device* %39, %struct.netdev_queue* %40, i32* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %31, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.sk_buff* @dequeue_skb(%struct.Qdisc*, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @qdisc_lock(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.netdev_queue* @skb_get_tx_queue(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @sch_direct_xmit(%struct.sk_buff*, %struct.Qdisc*, %struct.net_device*, %struct.netdev_queue*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
