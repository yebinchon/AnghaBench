; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_orig_node = type { %struct.TYPE_2__*, i32 }
%struct.batadv_icmp_tp_packet = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@BATADV_TP_REASON_DST_UNREACHABLE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@BATADV_TP_REASON_MEMORY_ERROR = common dso_local global i32 0, align 4
@BATADV_ICMP = common dso_local global i32 0, align 4
@BATADV_COMPAT_VERSION = common dso_local global i32 0, align 4
@BATADV_TTL = common dso_local global i32 0, align 4
@BATADV_TP = common dso_local global i32 0, align 4
@BATADV_TP_ACK = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, i32*, i32, i32, i32*, i32)* @batadv_tp_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_tp_send_ack(%struct.batadv_priv* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.batadv_hard_iface*, align 8
  %14 = alloca %struct.batadv_orig_node*, align 8
  %15 = alloca %struct.batadv_icmp_tp_packet*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %13, align 8
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %19, i32* %20)
  store %struct.batadv_orig_node* %21, %struct.batadv_orig_node** %14, align 8
  %22 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %14, align 8
  %23 = icmp ne %struct.batadv_orig_node* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @BATADV_TP_REASON_DST_UNREACHABLE, align 4
  store i32 %29, i32* %18, align 4
  br label %121

30:                                               ; preds = %6
  %31 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %32 = call %struct.batadv_orig_node* @batadv_primary_if_get_selected(%struct.batadv_priv* %31)
  %33 = bitcast %struct.batadv_orig_node* %32 to %struct.batadv_hard_iface*
  store %struct.batadv_hard_iface* %33, %struct.batadv_hard_iface** %13, align 8
  %34 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %13, align 8
  %35 = icmp ne %struct.batadv_hard_iface* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @BATADV_TP_REASON_DST_UNREACHABLE, align 4
  store i32 %41, i32* %18, align 4
  br label %121

42:                                               ; preds = %30
  %43 = load i64, i64* @ETH_HLEN, align 8
  %44 = add i64 44, %43
  %45 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32* null, i64 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %16, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @BATADV_TP_REASON_MEMORY_ERROR, align 4
  store i32 %53, i32* %18, align 4
  br label %121

54:                                               ; preds = %42
  %55 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %56 = load i64, i64* @ETH_HLEN, align 8
  %57 = call i32 @skb_reserve(%struct.sk_buff* %55, i64 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %59 = call %struct.batadv_icmp_tp_packet* @skb_put(%struct.sk_buff* %58, i32 44)
  store %struct.batadv_icmp_tp_packet* %59, %struct.batadv_icmp_tp_packet** %15, align 8
  %60 = load i32, i32* @BATADV_ICMP, align 4
  %61 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %15, align 8
  %62 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @BATADV_COMPAT_VERSION, align 4
  %64 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %15, align 8
  %65 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @BATADV_TTL, align 4
  %67 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %15, align 8
  %68 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @BATADV_TP, align 4
  %70 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %15, align 8
  %71 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %15, align 8
  %73 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %14, align 8
  %76 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ether_addr_copy(i32 %74, i32 %77)
  %79 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %15, align 8
  %80 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %13, align 8
  %83 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ether_addr_copy(i32 %81, i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %15, align 8
  %90 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @BATADV_TP_ACK, align 4
  %92 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %15, align 8
  %93 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %15, align 8
  %95 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @memcpy(i32 %96, i32* %97, i32 4)
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @htonl(i32 %99)
  %101 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %15, align 8
  %102 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %15, align 8
  %105 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %107 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %14, align 8
  %108 = call i32 @batadv_send_skb_to_orig(%struct.sk_buff* %106, %struct.batadv_orig_node* %107, i32* null)
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp slt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %54
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @NET_XMIT_DROP, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114, %54
  %119 = load i32, i32* @BATADV_TP_REASON_DST_UNREACHABLE, align 4
  store i32 %119, i32* %18, align 4
  br label %121

120:                                              ; preds = %114
  store i32 0, i32* %18, align 4
  br label %121

121:                                              ; preds = %120, %118, %52, %40, %28
  %122 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %14, align 8
  %123 = call i64 @likely(%struct.batadv_orig_node* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %14, align 8
  %127 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %126)
  br label %128

128:                                              ; preds = %125, %121
  %129 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %13, align 8
  %130 = bitcast %struct.batadv_hard_iface* %129 to %struct.batadv_orig_node*
  %131 = call i64 @likely(%struct.batadv_orig_node* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %13, align 8
  %135 = bitcast %struct.batadv_hard_iface* %134 to %struct.batadv_orig_node*
  %136 = call i32 @batadv_hardif_put(%struct.batadv_orig_node* %135)
  br label %137

137:                                              ; preds = %133, %128
  %138 = load i32, i32* %18, align 4
  ret i32 %138
}

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.batadv_orig_node* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.batadv_icmp_tp_packet* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @batadv_send_skb_to_orig(%struct.sk_buff*, %struct.batadv_orig_node*, i32*) #1

declare dso_local i64 @likely(%struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
