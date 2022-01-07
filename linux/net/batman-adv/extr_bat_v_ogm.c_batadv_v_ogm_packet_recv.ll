; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_packet_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_packet_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i64 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_ogm2_packet = type { i32, i32 }
%struct.ethhdr = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"BATMAN_V\00", align 1
@BATADV_OGM2_HLEN = common dso_local global i64 0, align 8
@BATADV_CNT_MGMT_RX = common dso_local global i32 0, align 4
@BATADV_CNT_MGMT_RX_BYTES = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@NET_RX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_v_ogm_packet_recv(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_ogm2_packet*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %11 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %12 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.batadv_priv* @netdev_priv(i32 %13)
  store %struct.batadv_priv* %14, %struct.batadv_priv** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %15)
  store %struct.ethhdr* %16, %struct.ethhdr** %7, align 8
  %17 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %19 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %104

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %29 = load i64, i64* @BATADV_OGM2_HLEN, align 8
  %30 = call i32 @batadv_check_management_packet(%struct.sk_buff* %27, %struct.batadv_hard_iface* %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %104

33:                                               ; preds = %26
  %34 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %35 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %36 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @batadv_is_my_mac(%struct.batadv_priv* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %104

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to %struct.batadv_ogm2_packet*
  store %struct.batadv_ogm2_packet* %45, %struct.batadv_ogm2_packet** %6, align 8
  %46 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %47 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %6, align 8
  %48 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @batadv_is_my_mac(%struct.batadv_priv* %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %104

53:                                               ; preds = %41
  %54 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %55 = load i32, i32* @BATADV_CNT_MGMT_RX, align 4
  %56 = call i32 @batadv_inc_counter(%struct.batadv_priv* %54, i32 %55)
  %57 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %58 = load i32, i32* @BATADV_CNT_MGMT_RX_BYTES, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ETH_HLEN, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @batadv_add_counter(%struct.batadv_priv* %57, i32 %58, i64 %63)
  store i32 0, i32* %8, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = bitcast i32* %67 to %struct.batadv_ogm2_packet*
  store %struct.batadv_ogm2_packet* %68, %struct.batadv_ogm2_packet** %6, align 8
  br label %69

69:                                               ; preds = %76, %53
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = call i32 @skb_headlen(%struct.sk_buff* %71)
  %73 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %6, align 8
  %74 = call i64 @batadv_v_ogm_aggr_packet(i32 %70, i32 %72, %struct.batadv_ogm2_packet* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %69
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %80 = call i32 @batadv_v_ogm_process(%struct.sk_buff* %77, i32 %78, %struct.batadv_hard_iface* %79)
  %81 = load i64, i64* @BATADV_OGM2_HLEN, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %6, align 8
  %87 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ntohs(i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %8, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32* %99, i32** %9, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = bitcast i32* %100 to %struct.batadv_ogm2_packet*
  store %struct.batadv_ogm2_packet* %101, %struct.batadv_ogm2_packet** %6, align 8
  br label %69

102:                                              ; preds = %69
  %103 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %102, %52, %40, %32, %25
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @NET_RX_SUCCESS, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %110 = call i32 @consume_skb(%struct.sk_buff* %109)
  br label %114

111:                                              ; preds = %104
  %112 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %113 = call i32 @kfree_skb(%struct.sk_buff* %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %10, align 4
  ret i32 %115
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @batadv_check_management_packet(%struct.sk_buff*, %struct.batadv_hard_iface*, i64) #1

declare dso_local i64 @batadv_is_my_mac(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_add_counter(%struct.batadv_priv*, i32, i64) #1

declare dso_local i64 @batadv_v_ogm_aggr_packet(i32, i32, %struct.batadv_ogm2_packet*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @batadv_v_ogm_process(%struct.sk_buff*, i32, %struct.batadv_hard_iface*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
