; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_direct_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_direct_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_direct_xmit(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call i32 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call i32 @netif_carrier_ok(%struct.net_device* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ true, %2 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %71

30:                                               ; preds = %24
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = call %struct.sk_buff* @validate_xmit_skb_list(%struct.sk_buff* %31, %struct.net_device* %32, i32* %10)
  store %struct.sk_buff* %33, %struct.sk_buff** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = icmp ne %struct.sk_buff* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %71

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %39, i32 %40)
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call %struct.netdev_queue* @skb_get_tx_queue(%struct.net_device* %42, %struct.sk_buff* %43)
  store %struct.netdev_queue* %44, %struct.netdev_queue** %8, align 8
  %45 = call i32 (...) @local_bh_disable()
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %48 = call i32 (...) @smp_processor_id()
  %49 = call i32 @HARD_TX_LOCK(%struct.net_device* %46, %struct.netdev_queue* %47, i32 %48)
  %50 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %51 = call i32 @netif_xmit_frozen_or_drv_stopped(%struct.netdev_queue* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %38
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %57 = call i32 @netdev_start_xmit(%struct.sk_buff* %54, %struct.net_device* %55, %struct.netdev_queue* %56, i32 0)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %53, %38
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %61 = call i32 @HARD_TX_UNLOCK(%struct.net_device* %59, %struct.netdev_queue* %60)
  %62 = call i32 (...) @local_bh_enable()
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dev_xmit_complete(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %78

71:                                               ; preds = %37, %29
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = call i32 @atomic_long_inc(i32* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @kfree_skb_list(%struct.sk_buff* %75)
  %77 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %69
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @validate_xmit_skb_list(%struct.sk_buff*, %struct.net_device*, i32*) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local %struct.netdev_queue* @skb_get_tx_queue(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @HARD_TX_LOCK(%struct.net_device*, %struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_xmit_frozen_or_drv_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netdev_start_xmit(%struct.sk_buff*, %struct.net_device*, %struct.netdev_queue*, i32) #1

declare dso_local i32 @HARD_TX_UNLOCK(%struct.net_device*, %struct.netdev_queue*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @dev_xmit_complete(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @kfree_skb_list(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
