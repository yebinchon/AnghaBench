; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i64 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.batadv_ogm_packet = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@BATADV_OGM_HLEN = common dso_local global i64 0, align 8
@batadv_iv_ogm_iface_enable = common dso_local global i64 0, align 8
@BATADV_CNT_MGMT_RX = common dso_local global i32 0, align 4
@BATADV_CNT_MGMT_RX_BYTES = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.batadv_hard_iface*)* @batadv_iv_ogm_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_iv_ogm_receive(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_ogm_packet*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %11 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %12 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.batadv_priv* @netdev_priv(i32 %13)
  store %struct.batadv_priv* %14, %struct.batadv_priv** %5, align 8
  %15 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %18 = load i64, i64* @BATADV_OGM_HLEN, align 8
  %19 = call i32 @batadv_check_management_packet(%struct.sk_buff* %16, %struct.batadv_hard_iface* %17, i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %84

23:                                               ; preds = %2
  %24 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %25 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @batadv_iv_ogm_iface_enable, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %84

33:                                               ; preds = %23
  %34 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %35 = load i32, i32* @BATADV_CNT_MGMT_RX, align 4
  %36 = call i32 @batadv_inc_counter(%struct.batadv_priv* %34, i32 %35)
  %37 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %38 = load i32, i32* @BATADV_CNT_MGMT_RX_BYTES, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ETH_HLEN, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @batadv_add_counter(%struct.batadv_priv* %37, i32 %38, i64 %43)
  store i32 0, i32* %8, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast i32* %47 to %struct.batadv_ogm_packet*
  store %struct.batadv_ogm_packet* %48, %struct.batadv_ogm_packet** %6, align 8
  br label %49

49:                                               ; preds = %56, %33
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call i32 @skb_headlen(%struct.sk_buff* %51)
  %53 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %6, align 8
  %54 = call i64 @batadv_iv_ogm_aggr_packet(i32 %50, i32 %52, %struct.batadv_ogm_packet* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %49
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %60 = call i32 @batadv_iv_ogm_process(%struct.sk_buff* %57, i32 %58, %struct.batadv_hard_iface* %59)
  %61 = load i64, i64* @BATADV_OGM_HLEN, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %6, align 8
  %67 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ntohs(i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %8, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32* %79, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = bitcast i32* %80 to %struct.batadv_ogm_packet*
  store %struct.batadv_ogm_packet* %81, %struct.batadv_ogm_packet** %6, align 8
  br label %49

82:                                               ; preds = %49
  %83 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %82, %32, %22
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @NET_RX_SUCCESS, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %90 = call i32 @consume_skb(%struct.sk_buff* %89)
  br label %94

91:                                               ; preds = %84
  %92 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %93 = call i32 @kfree_skb(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i32 @batadv_check_management_packet(%struct.sk_buff*, %struct.batadv_hard_iface*, i64) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_add_counter(%struct.batadv_priv*, i32, i64) #1

declare dso_local i64 @batadv_iv_ogm_aggr_packet(i32, i32, %struct.batadv_ogm_packet*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @batadv_iv_ogm_process(%struct.sk_buff*, i32, %struct.batadv_hard_iface*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
