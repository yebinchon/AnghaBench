; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_dev_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_dev_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.vlan_dev_priv = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vlan_ethhdr = type { i64 }
%struct.vlan_pcpu_stats = type { i32, i32, i32 }

@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @vlan_dev_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_dev_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.vlan_dev_priv*, align 8
  %7 = alloca %struct.vlan_ethhdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vlan_pcpu_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %12)
  store %struct.vlan_dev_priv* %13, %struct.vlan_dev_priv** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %17, %struct.vlan_ethhdr** %7, align 8
  %18 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %7, align 8
  %19 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %22 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %27 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %25, %2
  %33 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %34 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @vlan_dev_get_egress_qos_mask(%struct.net_device* %36, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %45 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %43, i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %32, %25
  %50 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %51 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %8, align 4
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call i32 @netpoll_tx_running(%struct.net_device* %58)
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @vlan_netpoll_send_skb(%struct.vlan_dev_priv* %63, %struct.sk_buff* %64)
  store i32 %65, i32* %3, align 4
  br label %110

66:                                               ; preds = %49
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @dev_queue_xmit(%struct.sk_buff* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @NET_XMIT_CN, align 4
  %75 = icmp eq i32 %73, %74
  br label %76

76:                                               ; preds = %72, %66
  %77 = phi i1 [ true, %66 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @likely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %76
  %82 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %83 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = call %struct.vlan_pcpu_stats* @this_cpu_ptr(%struct.TYPE_2__* %84)
  store %struct.vlan_pcpu_stats* %85, %struct.vlan_pcpu_stats** %11, align 8
  %86 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %11, align 8
  %87 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %86, i32 0, i32 1
  %88 = call i32 @u64_stats_update_begin(i32* %87)
  %89 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %11, align 8
  %90 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %11, align 8
  %95 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %11, align 8
  %99 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %98, i32 0, i32 1
  %100 = call i32 @u64_stats_update_end(i32* %99)
  br label %108

101:                                              ; preds = %76
  %102 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %103 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @this_cpu_inc(i32 %106)
  br label %108

108:                                              ; preds = %101, %81
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %62
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local i32 @vlan_dev_get_egress_qos_mask(%struct.net_device*, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netpoll_tx_running(%struct.net_device*) #1

declare dso_local i32 @vlan_netpoll_send_skb(%struct.vlan_dev_priv*, %struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.vlan_pcpu_stats* @this_cpu_ptr(%struct.TYPE_2__*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
