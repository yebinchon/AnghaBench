; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c___br_multicast_send_query.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c___br_multicast_send_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.br_ip = type { i32 }
%struct.sk_buff = type { i32 }

@BR_MCAST_DIR_TX = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@NF_BR_LOCAL_OUT = common dso_local global i32 0, align 4
@br_dev_queue_push_xmit = common dso_local global i32 0, align 4
@BR_MCAST_DIR_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.net_bridge_port*, %struct.br_ip*)* @__br_multicast_send_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__br_multicast_send_query(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.br_ip* %2) #0 {
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca %struct.br_ip*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %5, align 8
  store %struct.br_ip* %2, %struct.br_ip** %6, align 8
  %9 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %10 = load %struct.br_ip*, %struct.br_ip** %6, align 8
  %11 = call %struct.sk_buff* @br_multicast_alloc_query(%struct.net_bridge* %9, %struct.br_ip* %10, i32* %8)
  store %struct.sk_buff* %11, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %55

15:                                               ; preds = %3
  %16 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %17 = icmp ne %struct.net_bridge_port* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %20 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @BR_MCAST_DIR_TX, align 4
  %29 = call i32 @br_multicast_count(%struct.net_bridge* %24, %struct.net_bridge_port* %25, %struct.sk_buff* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %31 = load i32, i32* @NF_BR_LOCAL_OUT, align 4
  %32 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %33 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_net(i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @br_dev_queue_push_xmit, align 4
  %41 = call i32 @NF_HOOK(i32 %30, i32 %31, i32 %35, i32* null, %struct.sk_buff* %36, i32* null, i32 %39, i32 %40)
  br label %55

42:                                               ; preds = %15
  %43 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %44 = load %struct.br_ip*, %struct.br_ip** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @br_multicast_select_own_querier(%struct.net_bridge* %43, %struct.br_ip* %44, %struct.sk_buff* %45)
  %47 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %48 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @BR_MCAST_DIR_RX, align 4
  %52 = call i32 @br_multicast_count(%struct.net_bridge* %47, %struct.net_bridge_port* %48, %struct.sk_buff* %49, i32 %50, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call i32 @netif_rx(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %14, %42, %18
  ret void
}

declare dso_local %struct.sk_buff* @br_multicast_alloc_query(%struct.net_bridge*, %struct.br_ip*, i32*) #1

declare dso_local i32 @br_multicast_count(%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32, i32*, %struct.sk_buff*, i32*, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @br_multicast_select_own_querier(%struct.net_bridge*, %struct.br_ip*, %struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
