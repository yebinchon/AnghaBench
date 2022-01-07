; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_my_icmp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_my_icmp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_icmp_header = type { i32, i32, i32, i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@BATADV_TTL = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.sk_buff*)* @batadv_recv_my_icmp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_recv_my_icmp_packet(%struct.batadv_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_icmp_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %5, align 8
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %6, align 8
  %10 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.batadv_icmp_header*
  store %struct.batadv_icmp_header* %14, %struct.batadv_icmp_header** %7, align 8
  %15 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %16 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %95 [
    i32 131, label %18
    i32 132, label %18
    i32 128, label %18
    i32 130, label %29
    i32 129, label %85
  ]

18:                                               ; preds = %2, %2, %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @skb_linearize(%struct.sk_buff* %19)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %96

23:                                               ; preds = %18
  %24 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @batadv_socket_receive_packet(%struct.batadv_icmp_header* %24, i32 %27)
  br label %96

29:                                               ; preds = %2
  %30 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %31 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %30)
  store %struct.batadv_hard_iface* %31, %struct.batadv_hard_iface** %5, align 8
  %32 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %33 = icmp ne %struct.batadv_hard_iface* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %97

35:                                               ; preds = %29
  %36 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %37 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %38 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %36, i32 %39)
  store %struct.batadv_orig_node* %40, %struct.batadv_orig_node** %6, align 8
  %41 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %42 = icmp ne %struct.batadv_orig_node* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %97

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @ETH_HLEN, align 4
  %47 = call i32 @skb_cow(%struct.sk_buff* %45, i32 %46)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %97

50:                                               ; preds = %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.batadv_icmp_header*
  store %struct.batadv_icmp_header* %54, %struct.batadv_icmp_header** %7, align 8
  %55 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %56 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %59 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ether_addr_copy(i32 %57, i32 %60)
  %62 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %63 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %66 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ether_addr_copy(i32 %64, i32 %69)
  %71 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %72 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %71, i32 0, i32 0
  store i32 131, i32* %72, align 4
  %73 = load i32, i32* @BATADV_TTL, align 4
  %74 = load %struct.batadv_icmp_header*, %struct.batadv_icmp_header** %7, align 8
  %75 = getelementptr inbounds %struct.batadv_icmp_header, %struct.batadv_icmp_header* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %78 = call i32 @batadv_send_skb_to_orig(%struct.sk_buff* %76, %struct.batadv_orig_node* %77, i32* null)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %50
  %83 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %50
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %96

85:                                               ; preds = %2
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @pskb_may_pull(%struct.sk_buff* %86, i32 4)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %97

90:                                               ; preds = %85
  %91 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @batadv_tp_meter_recv(%struct.batadv_priv* %91, %struct.sk_buff* %92)
  %94 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %94, i32* %9, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %97

95:                                               ; preds = %2
  br label %97

96:                                               ; preds = %84, %23, %22
  br label %97

97:                                               ; preds = %96, %95, %90, %89, %49, %43, %34
  %98 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %99 = icmp ne %struct.batadv_hard_iface* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %102 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %105 = icmp ne %struct.batadv_orig_node* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %108 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = call i32 @kfree_skb(%struct.sk_buff* %110)
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @batadv_socket_receive_packet(%struct.batadv_icmp_header*, i32) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32) #1

declare dso_local i32 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @batadv_send_skb_to_orig(%struct.sk_buff*, %struct.batadv_orig_node*, i32*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_tp_meter_recv(%struct.batadv_priv*, %struct.sk_buff*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
