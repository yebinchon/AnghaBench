; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_pre_routing_finish_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_pre_routing_finish_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.neighbour = type { i32, i32 (%struct.neighbour*, %struct.sk_buff*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dst_entry = type { i32 }
%struct.nf_bridge_info = type { i32, i32, i32 }

@NUD_CONNECTED = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_nf_pre_routing_finish_bridge(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.neighbour*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.nf_bridge_info*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bridge_parent(i32 %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %86

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %24)
  store %struct.dst_entry* %25, %struct.dst_entry** %9, align 8
  %26 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call %struct.neighbour* @dst_neigh_lookup_skb(%struct.dst_entry* %26, %struct.sk_buff* %27)
  store %struct.neighbour* %28, %struct.neighbour** %8, align 8
  %29 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %30 = icmp ne %struct.neighbour* %29, null
  br i1 %30, label %31, label %85

31:                                               ; preds = %23
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %32)
  store %struct.nf_bridge_info* %33, %struct.nf_bridge_info** %10, align 8
  %34 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %35 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NUD_CONNECTED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %31
  %41 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %42 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %48 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %47, i32 0, i32 2
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call i32 @neigh_hh_bridge(%struct.TYPE_2__* %48, %struct.sk_buff* %49)
  %51 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %10, align 8
  %52 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.net*, %struct.net** %5, align 8
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i32 @br_handle_frame_finish(%struct.net* %56, %struct.sock* %57, %struct.sk_buff* %58)
  store i32 %59, i32* %11, align 4
  br label %81

60:                                               ; preds = %40, %31
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = load i64, i64* @ETH_HLEN, align 8
  %63 = load i64, i64* @ETH_ALEN, align 8
  %64 = sub nsw i64 %62, %63
  %65 = sub nsw i64 0, %64
  %66 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %10, align 8
  %67 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* @ETH_HLEN, align 8
  %70 = load i64, i64* @ETH_ALEN, align 8
  %71 = sub nsw i64 %69, %70
  %72 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %61, i64 %65, i32 %68, i64 %71)
  %73 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %10, align 8
  %74 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %76 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %75, i32 0, i32 1
  %77 = load i32 (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)** %76, align 8
  %78 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = call i32 %77(%struct.neighbour* %78, %struct.sk_buff* %79)
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %60, %46
  %82 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %83 = call i32 @neigh_release(%struct.neighbour* %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %89

85:                                               ; preds = %23
  br label %86

86:                                               ; preds = %85, %22
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @bridge_parent(i32) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup_skb(%struct.dst_entry*, %struct.sk_buff*) #1

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local i32 @neigh_hh_bridge(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @br_handle_frame_finish(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i64, i32, i64) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
