; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_vlan_untag.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_vlan_untag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.vlan_hdr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @skb_vlan_untag(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.vlan_hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %2, align 8
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %71

23:                                               ; preds = %12
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = load i32, i32* @VLAN_HLEN, align 4
  %26 = call i32 @pskb_may_pull(%struct.sk_buff* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %71

33:                                               ; preds = %23
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %37, %struct.vlan_hdr** %4, align 8
  %38 = load %struct.vlan_hdr*, %struct.vlan_hdr** %4, align 8
  %39 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohs(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %42, i32 %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = load i32, i32* @VLAN_HLEN, align 4
  %50 = call i32 @skb_pull_rcsum(%struct.sk_buff* %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = load %struct.vlan_hdr*, %struct.vlan_hdr** %4, align 8
  %53 = call i32 @vlan_set_encap_proto(%struct.sk_buff* %51, %struct.vlan_hdr* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call %struct.sk_buff* @skb_reorder_vlan_header(%struct.sk_buff* %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %3, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %33
  br label %71

63:                                               ; preds = %33
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = call i32 @skb_reset_network_header(%struct.sk_buff* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call i32 @skb_reset_transport_header(%struct.sk_buff* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = call i32 @skb_reset_mac_len(%struct.sk_buff* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %70, %struct.sk_buff** %2, align 8
  br label %74

71:                                               ; preds = %62, %32, %22
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %74

74:                                               ; preds = %71, %63, %10
  %75 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %75
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_set_encap_proto(%struct.sk_buff*, %struct.vlan_hdr*) #1

declare dso_local %struct.sk_buff* @skb_reorder_vlan_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
