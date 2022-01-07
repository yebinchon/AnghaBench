; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_teql.c_teql_master_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_teql.c_teql_master_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.teql_master = type { i32, i32, i32, %struct.Qdisc*, i32 }
%struct.Qdisc = type { i32 }
%struct.netdev_queue = type { %struct.Qdisc* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @teql_master_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teql_master_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.teql_master*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.netdev_queue*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.teql_master* @netdev_priv(%struct.net_device* %16)
  store %struct.teql_master* %17, %struct.teql_master** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %18)
  store i32 %19, i32* %11, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %20 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %21 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %20, i32 0, i32 3
  %22 = load %struct.Qdisc*, %struct.Qdisc** %21, align 8
  store %struct.Qdisc* %22, %struct.Qdisc** %7, align 8
  br label %23

23:                                               ; preds = %129, %2
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  store %struct.Qdisc* %24, %struct.Qdisc** %8, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %26 = icmp ne %struct.Qdisc* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %143

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %117, %28
  %30 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %31 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %30)
  store %struct.net_device* %31, %struct.net_device** %13, align 8
  %32 = load %struct.net_device*, %struct.net_device** %13, align 8
  %33 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %32, i32 0)
  store %struct.netdev_queue* %33, %struct.netdev_queue** %14, align 8
  %34 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %35 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %34, i32 0, i32 0
  %36 = load %struct.Qdisc*, %struct.Qdisc** %35, align 8
  %37 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %38 = icmp ne %struct.Qdisc* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %117

40:                                               ; preds = %29
  %41 = load %struct.net_device*, %struct.net_device** %13, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %41, i32 %42)
  %44 = call i64 @netif_xmit_stopped(%struct.netdev_queue* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load %struct.net_device*, %struct.net_device** %13, align 8
  %48 = call i32 @netif_running(%struct.net_device* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %40
  store i32 1, i32* %9, align 4
  br label %117

51:                                               ; preds = %46
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %54 = load %struct.net_device*, %struct.net_device** %13, align 8
  %55 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %56 = call i32 @teql_resolve(%struct.sk_buff* %52, %struct.sk_buff* %53, %struct.net_device* %54, %struct.netdev_queue* %55)
  switch i32 %56, label %111 [
    i32 0, label %57
    i32 1, label %104
  ]

57:                                               ; preds = %51
  %58 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %59 = call i32 @__netif_tx_trylock(%struct.netdev_queue* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %57
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @qdisc_pkt_len(%struct.sk_buff* %62)
  store i32 %63, i32* %15, align 4
  %64 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %65 = call i32 @netif_xmit_frozen_or_stopped(%struct.netdev_queue* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %94, label %67

67:                                               ; preds = %61
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load %struct.net_device*, %struct.net_device** %13, align 8
  %70 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %71 = call i32 @netdev_start_xmit(%struct.sk_buff* %68, %struct.net_device* %69, %struct.netdev_queue* %70, i32 0)
  %72 = load i32, i32* @NETDEV_TX_OK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %67
  %75 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %76 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %75)
  %77 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %78 = call i8* @NEXT_SLAVE(%struct.Qdisc* %77)
  %79 = bitcast i8* %78 to %struct.Qdisc*
  %80 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %81 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %80, i32 0, i32 3
  store %struct.Qdisc* %79, %struct.Qdisc** %81, align 8
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = call i32 @netif_wake_queue(%struct.net_device* %82)
  %84 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %85 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %90 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %93, i32* %3, align 4
  br label %151

94:                                               ; preds = %67, %61
  %95 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %96 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %95)
  br label %97

97:                                               ; preds = %94, %57
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %98, i32 0)
  %100 = call i64 @netif_xmit_stopped(%struct.netdev_queue* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %9, align 4
  br label %103

103:                                              ; preds = %102, %97
  br label %112

104:                                              ; preds = %51
  %105 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %106 = call i8* @NEXT_SLAVE(%struct.Qdisc* %105)
  %107 = bitcast i8* %106 to %struct.Qdisc*
  %108 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %109 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %108, i32 0, i32 3
  store %struct.Qdisc* %107, %struct.Qdisc** %109, align 8
  %110 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %110, i32* %3, align 4
  br label %151

111:                                              ; preds = %51
  store i32 1, i32* %10, align 4
  br label %112

112:                                              ; preds = %111, %103
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call i32 @skb_network_offset(%struct.sk_buff* %114)
  %116 = call i32 @__skb_pull(%struct.sk_buff* %113, i32 %115)
  br label %117

117:                                              ; preds = %112, %50, %39
  %118 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %119 = call i8* @NEXT_SLAVE(%struct.Qdisc* %118)
  %120 = bitcast i8* %119 to %struct.Qdisc*
  store %struct.Qdisc* %120, %struct.Qdisc** %8, align 8
  %121 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %122 = icmp ne %struct.Qdisc* %120, %121
  br i1 %122, label %29, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %128 = icmp eq %struct.sk_buff* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %130, %struct.sk_buff** %12, align 8
  br label %23

131:                                              ; preds = %126, %123
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.net_device*, %struct.net_device** %5, align 8
  %136 = call i32 @netif_stop_queue(%struct.net_device* %135)
  %137 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %137, i32* %3, align 4
  br label %151

138:                                              ; preds = %131
  %139 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %140 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %138, %27
  %144 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %145 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = call i32 @dev_kfree_skb(%struct.sk_buff* %148)
  %150 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %143, %134, %104, %74
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.teql_master* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @netif_xmit_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @teql_resolve(%struct.sk_buff*, %struct.sk_buff*, %struct.net_device*, %struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_trylock(%struct.netdev_queue*) #1

declare dso_local i32 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @netif_xmit_frozen_or_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netdev_start_xmit(%struct.sk_buff*, %struct.net_device*, %struct.netdev_queue*, i32) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

declare dso_local i8* @NEXT_SLAVE(%struct.Qdisc*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
