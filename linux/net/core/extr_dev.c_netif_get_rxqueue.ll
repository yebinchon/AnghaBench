; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_get_rxqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_get_rxqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_rx_queue = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32, i32, %struct.netdev_rx_queue* }

@.str = private unnamed_addr constant [63 x i8] c"%s received packet on queue %u, but number of RX queues is %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netdev_rx_queue* (%struct.sk_buff*)* @netif_get_rxqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netdev_rx_queue* @netif_get_rxqueue(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.netdev_rx_queue*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_rx_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 2
  %12 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %11, align 8
  store %struct.netdev_rx_queue* %12, %struct.netdev_rx_queue** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i64 @skb_rx_queue_recorded(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i32 @skb_get_rx_queue(%struct.sk_buff* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %16
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @WARN_ONCE(i32 %32, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %39)
  %41 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %5, align 8
  store %struct.netdev_rx_queue* %41, %struct.netdev_rx_queue** %2, align 8
  br label %49

42:                                               ; preds = %16
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %5, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds %struct.netdev_rx_queue, %struct.netdev_rx_queue* %44, i64 %45
  store %struct.netdev_rx_queue* %46, %struct.netdev_rx_queue** %5, align 8
  br label %47

47:                                               ; preds = %42, %1
  %48 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %5, align 8
  store %struct.netdev_rx_queue* %48, %struct.netdev_rx_queue** %2, align 8
  br label %49

49:                                               ; preds = %47, %27
  %50 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %2, align 8
  ret %struct.netdev_rx_queue* %50
}

declare dso_local i64 @skb_rx_queue_recorded(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_rx_queue(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
