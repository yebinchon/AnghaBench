; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_pre_routing_finish_bridge_slow.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_pre_routing_finish_bridge_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_bridge_info = type { i32*, i32, i32, i64 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @br_nf_pre_routing_finish_bridge_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_nf_pre_routing_finish_bridge_slow(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.nf_bridge_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %4)
  store %struct.nf_bridge_info* %5, %struct.nf_bridge_info** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = load i32, i32* @ETH_HLEN, align 4
  %8 = call i32 @skb_pull(%struct.sk_buff* %6, i32 %7)
  %9 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %3, align 8
  %10 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @ETH_HLEN, align 4
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = sub nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 4, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUILD_BUG_ON(i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = load i32, i32* @ETH_HLEN, align 4
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sub nsw i32 0, %21
  %23 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %3, align 8
  %24 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ETH_HLEN, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %18, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %3, align 8
  %31 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %3, align 8
  %36 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_net(i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %42 = call i32 @br_handle_frame_finish(i32 %40, i32* null, %struct.sk_buff* %41)
  ret void
}

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @br_handle_frame_finish(i32, i32*, %struct.sk_buff*) #1

declare dso_local i32 @dev_net(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
