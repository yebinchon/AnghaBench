; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_fragmentation.c_batadv_frag_skb_fwd.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_fragmentation.c_batadv_frag_skb_fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_neigh_node = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.batadv_frag_packet = type { i32, i32, i32 }

@BATADV_CNT_FRAG_FWD = common dso_local global i32 0, align 4
@BATADV_CNT_FRAG_FWD_BYTES = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_frag_skb_fwd(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1, %struct.batadv_orig_node* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca %struct.batadv_orig_node*, align 8
  %9 = alloca %struct.batadv_neigh_node*, align 8
  %10 = alloca %struct.batadv_frag_packet*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %5, align 8
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %6, align 8
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %14 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.batadv_priv* @netdev_priv(i32 %15)
  store %struct.batadv_priv* %16, %struct.batadv_priv** %7, align 8
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.batadv_frag_packet*
  store %struct.batadv_frag_packet* %20, %struct.batadv_frag_packet** %10, align 8
  %21 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %22 = load %struct.batadv_frag_packet*, %struct.batadv_frag_packet** %10, align 8
  %23 = getelementptr inbounds %struct.batadv_frag_packet, %struct.batadv_frag_packet* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %21, i32 %24)
  store %struct.batadv_orig_node* %25, %struct.batadv_orig_node** %8, align 8
  %26 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %27 = icmp ne %struct.batadv_orig_node* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %71

29:                                               ; preds = %3
  %30 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %31 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %32 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %33 = call %struct.batadv_neigh_node* @batadv_find_router(%struct.batadv_priv* %30, %struct.batadv_orig_node* %31, %struct.batadv_hard_iface* %32)
  store %struct.batadv_neigh_node* %33, %struct.batadv_neigh_node** %9, align 8
  %34 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %35 = icmp ne %struct.batadv_neigh_node* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %71

37:                                               ; preds = %29
  %38 = load %struct.batadv_frag_packet*, %struct.batadv_frag_packet** %10, align 8
  %39 = getelementptr inbounds %struct.batadv_frag_packet, %struct.batadv_frag_packet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ntohs(i32 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %44 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %42, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %37
  %52 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %53 = load i32, i32* @BATADV_CNT_FRAG_FWD, align 4
  %54 = call i32 @batadv_inc_counter(%struct.batadv_priv* %52, i32 %53)
  %55 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %56 = load i32, i32* @BATADV_CNT_FRAG_FWD_BYTES, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ETH_HLEN, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @batadv_add_counter(%struct.batadv_priv* %55, i32 %56, i64 %61)
  %63 = load %struct.batadv_frag_packet*, %struct.batadv_frag_packet** %10, align 8
  %64 = getelementptr inbounds %struct.batadv_frag_packet, %struct.batadv_frag_packet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %69 = call i32 @batadv_send_unicast_skb(%struct.sk_buff* %67, %struct.batadv_neigh_node* %68)
  store i32 1, i32* %12, align 4
  br label %70

70:                                               ; preds = %51, %37
  br label %71

71:                                               ; preds = %70, %36, %28
  %72 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %73 = icmp ne %struct.batadv_orig_node* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %76 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %79 = icmp ne %struct.batadv_neigh_node* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %82 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %12, align 4
  ret i32 %84
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32) #1

declare dso_local %struct.batadv_neigh_node* @batadv_find_router(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_add_counter(%struct.batadv_priv*, i32, i64) #1

declare dso_local i32 @batadv_send_unicast_skb(%struct.sk_buff*, %struct.batadv_neigh_node*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_neigh_node_put(%struct.batadv_neigh_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
