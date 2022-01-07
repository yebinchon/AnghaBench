; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_bridge_frag_restore.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_bridge_frag_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_bridge_frag_data = type { i32, i32, i32, i64 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_bridge_frag_data*)* @nf_ct_bridge_frag_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_bridge_frag_restore(%struct.sk_buff* %0, %struct.nf_bridge_frag_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_bridge_frag_data*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_bridge_frag_data* %1, %struct.nf_bridge_frag_data** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @ETH_HLEN, align 4
  %9 = call i32 @skb_cow_head(%struct.sk_buff* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @kfree_skb(%struct.sk_buff* %13)
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.nf_bridge_frag_data*, %struct.nf_bridge_frag_data** %5, align 8
  %19 = getelementptr inbounds %struct.nf_bridge_frag_data, %struct.nf_bridge_frag_data* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.nf_bridge_frag_data*, %struct.nf_bridge_frag_data** %5, align 8
  %25 = getelementptr inbounds %struct.nf_bridge_frag_data, %struct.nf_bridge_frag_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nf_bridge_frag_data*, %struct.nf_bridge_frag_data** %5, align 8
  %28 = getelementptr inbounds %struct.nf_bridge_frag_data, %struct.nf_bridge_frag_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %23, i32 %26, i32 %29)
  br label %39

31:                                               ; preds = %17
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff* %36)
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* @ETH_HLEN, align 4
  %42 = sub nsw i32 0, %41
  %43 = load %struct.nf_bridge_frag_data*, %struct.nf_bridge_frag_data** %5, align 8
  %44 = getelementptr inbounds %struct.nf_bridge_frag_data, %struct.nf_bridge_frag_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ETH_HLEN, align 4
  %47 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %40, i32 %42, i32 %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @skb_reset_mac_header(%struct.sk_buff* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %39, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
