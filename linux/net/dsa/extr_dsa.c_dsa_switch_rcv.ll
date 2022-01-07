; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa.c_dsa_switch_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa.c_dsa_switch_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32, i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { %struct.dsa_port* }
%struct.dsa_port = type { %struct.sk_buff* (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*)* }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }
%struct.dsa_slave_priv = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @dsa_switch_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.dsa_port*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.pcpu_sw_netstats*, align 8
  %13 = alloca %struct.dsa_slave_priv*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.dsa_port*, %struct.dsa_port** %15, align 8
  store %struct.dsa_port* %16, %struct.dsa_port** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %17 = load %struct.dsa_port*, %struct.dsa_port** %10, align 8
  %18 = icmp ne %struct.dsa_port* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  store i32 0, i32* %5, align 4
  br label %96

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %96

33:                                               ; preds = %26
  %34 = load %struct.dsa_port*, %struct.dsa_port** %10, align 8
  %35 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %34, i32 0, i32 0
  %36 = load %struct.sk_buff* (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*)*, %struct.sk_buff* (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*)** %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = load %struct.packet_type*, %struct.packet_type** %8, align 8
  %40 = call %struct.sk_buff* %36(%struct.sk_buff* %37, %struct.net_device* %38, %struct.packet_type* %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %11, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  store i32 0, i32* %5, align 4
  br label %96

46:                                               ; preds = %33
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %6, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.dsa_slave_priv* @netdev_priv(i32 %50)
  store %struct.dsa_slave_priv* %51, %struct.dsa_slave_priv** %13, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load i32, i32* @ETH_HLEN, align 4
  %54 = call i32 @skb_push(%struct.sk_buff* %52, i32 %53)
  %55 = load i32, i32* @PACKET_HOST, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @eth_type_trans(%struct.sk_buff* %58, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %13, align 8
  %66 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %67)
  store %struct.pcpu_sw_netstats* %68, %struct.pcpu_sw_netstats** %12, align 8
  %69 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %12, align 8
  %70 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %69, i32 0, i32 0
  %71 = call i32 @u64_stats_update_begin(i32* %70)
  %72 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %12, align 8
  %73 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %12, align 8
  %80 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %12, align 8
  %86 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %85, i32 0, i32 0
  %87 = call i32 @u64_stats_update_end(i32* %86)
  %88 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %13, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = call i64 @dsa_skb_defer_rx_timestamp(%struct.dsa_slave_priv* %88, %struct.sk_buff* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %96

93:                                               ; preds = %46
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call i32 @netif_receive_skb(%struct.sk_buff* %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %92, %43, %32, %23
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local %struct.dsa_slave_priv* @netdev_priv(i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i64 @dsa_skb_defer_rx_timestamp(%struct.dsa_slave_priv*, %struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
