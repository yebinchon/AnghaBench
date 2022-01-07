; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.dsa_slave_priv = type { %struct.sk_buff* (%struct.sk_buff*, %struct.net_device*)*, i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @dsa_slave_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_slave_priv*, align 8
  %7 = alloca %struct.pcpu_sw_netstats*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.dsa_slave_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.dsa_slave_priv* %10, %struct.dsa_slave_priv** %6, align 8
  %11 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %12 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %13)
  store %struct.pcpu_sw_netstats* %14, %struct.pcpu_sw_netstats** %7, align 8
  %15 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %16 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %15, i32 0, i32 0
  %17 = call i32 @u64_stats_update_begin(i32* %16)
  %18 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %19 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %26 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %32 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %31, i32 0, i32 0
  %33 = call i32 @u64_stats_update_end(i32* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.TYPE_2__* @DSA_SKB_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call %struct.TYPE_2__* @DSA_SKB_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @dsa_skb_tx_timestamp(%struct.dsa_slave_priv* %40, %struct.sk_buff* %41)
  %43 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %6, align 8
  %44 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %43, i32 0, i32 0
  %45 = load %struct.sk_buff* (%struct.sk_buff*, %struct.net_device*)*, %struct.sk_buff* (%struct.sk_buff*, %struct.net_device*)** %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call %struct.sk_buff* %45(%struct.sk_buff* %46, %struct.net_device* %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %8, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %2
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call %struct.TYPE_2__* @DSA_SKB_CB(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %2
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call i32 @dsa_enqueue_skb(%struct.sk_buff* %63, %struct.net_device* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %60
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.dsa_slave_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local %struct.TYPE_2__* @DSA_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dsa_skb_tx_timestamp(%struct.dsa_slave_priv*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dsa_enqueue_skb(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
