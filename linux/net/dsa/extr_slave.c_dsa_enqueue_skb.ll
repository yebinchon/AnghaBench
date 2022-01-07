; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_enqueue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_enqueue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_enqueue_skb(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  %7 = call i32 @netpoll_tx_running(%struct.net_device* %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @dsa_slave_netpoll_send_skb(%struct.net_device* %11, %struct.sk_buff* %12)
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @dsa_slave_to_master(%struct.net_device* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @dev_queue_xmit(%struct.sk_buff* %19)
  %21 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netpoll_tx_running(%struct.net_device*) #1

declare dso_local i32 @dsa_slave_netpoll_send_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @dsa_slave_to_master(%struct.net_device*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
