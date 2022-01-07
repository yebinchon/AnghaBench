; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_rx.c_ieee802154_rx_irqsafe.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_rx.c_ieee802154_rx_irqsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee802154_local = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IEEE802154_RX_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee802154_rx_irqsafe(%struct.ieee802154_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee802154_local*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %9 = call %struct.ieee802154_local* @hw_to_local(%struct.ieee802154_hw* %8)
  store %struct.ieee802154_local* %9, %struct.ieee802154_local** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.TYPE_2__* @mac_cb(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @IEEE802154_RX_MSG, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %18 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %17, i32 0, i32 1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @skb_queue_tail(i32* %18, %struct.sk_buff* %19)
  %21 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %22 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %21, i32 0, i32 0
  %23 = call i32 @tasklet_schedule(i32* %22)
  ret void
}

declare dso_local %struct.ieee802154_local* @hw_to_local(%struct.ieee802154_hw*) #1

declare dso_local %struct.TYPE_2__* @mac_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
