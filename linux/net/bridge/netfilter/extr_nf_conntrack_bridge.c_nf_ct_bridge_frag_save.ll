; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_bridge_frag_save.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_bridge_frag_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.nf_bridge_frag_data = type { i32, i32, i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.nf_bridge_frag_data*)* @nf_ct_bridge_frag_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ct_bridge_frag_save(%struct.sk_buff* %0, %struct.nf_bridge_frag_data* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nf_bridge_frag_data*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nf_bridge_frag_data* %1, %struct.nf_bridge_frag_data** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.nf_bridge_frag_data*, %struct.nf_bridge_frag_data** %4, align 8
  %10 = getelementptr inbounds %struct.nf_bridge_frag_data, %struct.nf_bridge_frag_data* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nf_bridge_frag_data*, %struct.nf_bridge_frag_data** %4, align 8
  %15 = getelementptr inbounds %struct.nf_bridge_frag_data, %struct.nf_bridge_frag_data* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nf_bridge_frag_data*, %struct.nf_bridge_frag_data** %4, align 8
  %20 = getelementptr inbounds %struct.nf_bridge_frag_data, %struct.nf_bridge_frag_data* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.nf_bridge_frag_data*, %struct.nf_bridge_frag_data** %4, align 8
  %23 = getelementptr inbounds %struct.nf_bridge_frag_data, %struct.nf_bridge_frag_data* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load i32, i32* @ETH_HLEN, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.nf_bridge_frag_data*, %struct.nf_bridge_frag_data** %4, align 8
  %29 = getelementptr inbounds %struct.nf_bridge_frag_data, %struct.nf_bridge_frag_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ETH_HLEN, align 4
  %32 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %25, i32 %27, i32 %30, i32 %31)
  ret void
}

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
