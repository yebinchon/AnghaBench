; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_arp_create_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_arp_create_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.batadv_priv = type { i32 }

@ARPOP_REPLY = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@BATADV_VLAN_HAS_TAG = common dso_local global i16 0, align 2
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.batadv_priv*, i32, i32, i32*, i32*, i16)* @batadv_dat_arp_create_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @batadv_dat_arp_create_reply(%struct.batadv_priv* %0, i32 %1, i32 %2, i32* %3, i32* %4, i16 zeroext %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i16, align 2
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i16 %5, i16* %13, align 2
  %15 = load i32, i32* @ARPOP_REPLY, align 4
  %16 = load i32, i32* @ETH_P_ARP, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %19 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call %struct.sk_buff* @arp_create(i32 %15, i32 %16, i32 %17, i32 %20, i32 %21, i32* %22, i32* %23, i32* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %14, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %6
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %51

29:                                               ; preds = %6
  %30 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %31 = call i32 @skb_reset_mac_header(%struct.sk_buff* %30)
  %32 = load i16, i16* %13, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @BATADV_VLAN_HAS_TAG, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %40 = load i32, i32* @ETH_P_8021Q, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load i16, i16* %13, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* @VLAN_VID_MASK, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %43, %45
  %47 = trunc i32 %46 to i16
  %48 = call %struct.sk_buff* @vlan_insert_tag(%struct.sk_buff* %39, i32 %41, i16 zeroext %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %14, align 8
  br label %49

49:                                               ; preds = %38, %29
  %50 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %50, %struct.sk_buff** %7, align 8
  br label %51

51:                                               ; preds = %49, %28
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %52
}

declare dso_local %struct.sk_buff* @arp_create(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @vlan_insert_tag(%struct.sk_buff*, i32, i16 zeroext) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
