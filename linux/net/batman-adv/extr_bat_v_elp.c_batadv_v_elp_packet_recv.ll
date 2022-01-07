; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_elp.c_batadv_v_elp_packet_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_elp.c_batadv_v_elp_packet_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_elp_packet = type { i32, i32 }
%struct.ethhdr = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@BATADV_ELP_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"BATMAN_V\00", align 1
@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Received ELP packet from %pM seqno %u ORIG: %pM\0A\00", align 1
@NET_RX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_v_elp_packet_recv(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_elp_packet*, align 8
  %7 = alloca %struct.batadv_hard_iface*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %11 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %12 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.batadv_priv* @netdev_priv(i32 %13)
  store %struct.batadv_priv* %14, %struct.batadv_priv** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i64 @skb_mac_header(%struct.sk_buff* %15)
  %17 = inttoptr i64 %16 to %struct.ethhdr*
  store %struct.ethhdr* %17, %struct.ethhdr** %8, align 8
  %18 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %21 = load i32, i32* @BATADV_ELP_HLEN, align 4
  %22 = call i32 @batadv_check_management_packet(%struct.sk_buff* %19, %struct.batadv_hard_iface* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %77

26:                                               ; preds = %2
  %27 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %28 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %29 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @batadv_is_my_mac(%struct.batadv_priv* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %77

34:                                               ; preds = %26
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %36 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strcmp(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %77

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.batadv_elp_packet*
  store %struct.batadv_elp_packet* %47, %struct.batadv_elp_packet** %6, align 8
  %48 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %49 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %50 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %51 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.batadv_elp_packet*, %struct.batadv_elp_packet** %6, align 8
  %54 = getelementptr inbounds %struct.batadv_elp_packet, %struct.batadv_elp_packet* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ntohl(i32 %55)
  %57 = load %struct.batadv_elp_packet*, %struct.batadv_elp_packet** %6, align 8
  %58 = getelementptr inbounds %struct.batadv_elp_packet, %struct.batadv_elp_packet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @batadv_dbg(i32 %48, %struct.batadv_priv* %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %56, i32 %59)
  %61 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %62 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %61)
  store %struct.batadv_hard_iface* %62, %struct.batadv_hard_iface** %7, align 8
  %63 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %64 = icmp ne %struct.batadv_hard_iface* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %43
  br label %77

66:                                               ; preds = %43
  %67 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %68 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %69 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %72 = load %struct.batadv_elp_packet*, %struct.batadv_elp_packet** %6, align 8
  %73 = call i32 @batadv_v_elp_neigh_update(%struct.batadv_priv* %67, i32 %70, %struct.batadv_hard_iface* %71, %struct.batadv_elp_packet* %72)
  %74 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %74, i32* %10, align 4
  %75 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %76 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %75)
  br label %77

77:                                               ; preds = %66, %65, %42, %33, %25
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @NET_RX_SUCCESS, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = call i32 @consume_skb(%struct.sk_buff* %82)
  br label %87

84:                                               ; preds = %77
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %10, align 4
  ret i32 %88
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @batadv_check_management_packet(%struct.sk_buff*, %struct.batadv_hard_iface*, i32) #1

declare dso_local i64 @batadv_is_my_mac(%struct.batadv_priv*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_v_elp_neigh_update(%struct.batadv_priv*, i32, %struct.batadv_hard_iface*, %struct.batadv_elp_packet*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
