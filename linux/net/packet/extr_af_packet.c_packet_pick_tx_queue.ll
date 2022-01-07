; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_pick_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_pick_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device*, %struct.sk_buff*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @packet_pick_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_pick_tx_queue(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load %struct.net_device_ops*, %struct.net_device_ops** %11, align 8
  store %struct.net_device_ops* %12, %struct.net_device_ops** %4, align 8
  %13 = call i32 (...) @raw_smp_processor_id()
  store i32 %13, i32* %5, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = srem i32 %15, %18
  %20 = call i32 @skb_record_rx_queue(%struct.sk_buff* %14, i32 %19)
  %21 = load %struct.net_device_ops*, %struct.net_device_ops** %4, align 8
  %22 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.net_device*, %struct.sk_buff*, i32*)*, i32 (%struct.net_device*, %struct.sk_buff*, i32*)** %22, align 8
  %24 = icmp ne i32 (%struct.net_device*, %struct.sk_buff*, i32*)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.net_device_ops*, %struct.net_device_ops** %4, align 8
  %27 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.net_device*, %struct.sk_buff*, i32*)*, i32 (%struct.net_device*, %struct.sk_buff*, i32*)** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %31 = call i32 %28(%struct.net_device* %29, %struct.sk_buff* %30, i32* null)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @netdev_cap_txqueue(%struct.net_device* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %39

35:                                               ; preds = %1
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %38 = call i32 @netdev_pick_tx(%struct.net_device* %36, %struct.sk_buff* %37, i32* null)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %25
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @netdev_cap_txqueue(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_pick_tx(%struct.net_device*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
