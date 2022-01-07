; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_frag_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_frag_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64 }
%struct.batadv_hard_iface = type { i32, i32, i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_frag_packet = type { i32, i64, i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@BATADV_CNT_FRAG_RX = common dso_local global i32 0, align 4
@BATADV_CNT_FRAG_RX_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_recv_frag_packet(%struct.sk_buff* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_frag_packet*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %9 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %10 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.batadv_priv* @netdev_priv(i32 %11)
  store %struct.batadv_priv* %12, %struct.batadv_priv** %5, align 8
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %6, align 8
  %13 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i64 @batadv_check_unicast_packet(%struct.batadv_priv* %14, %struct.sk_buff* %15, i32 24)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %83

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.batadv_frag_packet*
  store %struct.batadv_frag_packet* %23, %struct.batadv_frag_packet** %7, align 8
  %24 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %25 = load %struct.batadv_frag_packet*, %struct.batadv_frag_packet** %7, align 8
  %26 = getelementptr inbounds %struct.batadv_frag_packet, %struct.batadv_frag_packet* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %24, i32 %27)
  store %struct.batadv_orig_node* %28, %struct.batadv_orig_node** %6, align 8
  %29 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %30 = icmp ne %struct.batadv_orig_node* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %83

32:                                               ; preds = %19
  %33 = load %struct.batadv_frag_packet*, %struct.batadv_frag_packet** %7, align 8
  %34 = getelementptr inbounds %struct.batadv_frag_packet, %struct.batadv_frag_packet* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 256
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %40 = load %struct.batadv_frag_packet*, %struct.batadv_frag_packet** %7, align 8
  %41 = getelementptr inbounds %struct.batadv_frag_packet, %struct.batadv_frag_packet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @batadv_is_my_mac(%struct.batadv_priv* %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %32
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %48 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %49 = call i64 @batadv_frag_skb_fwd(%struct.sk_buff* %46, %struct.batadv_hard_iface* %47, %struct.batadv_orig_node* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  %52 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %52, i32* %8, align 4
  br label %80

53:                                               ; preds = %45, %32
  %54 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %55 = load i32, i32* @BATADV_CNT_FRAG_RX, align 4
  %56 = call i32 @batadv_inc_counter(%struct.batadv_priv* %54, i32 %55)
  %57 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %58 = load i32, i32* @BATADV_CNT_FRAG_RX_BYTES, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @batadv_add_counter(%struct.batadv_priv* %57, i32 %58, i32 %61)
  %63 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %64 = call i32 @batadv_frag_skb_buffer(%struct.sk_buff** %3, %struct.batadv_orig_node* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %53
  br label %80

67:                                               ; preds = %53
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %73 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %76 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %75, i32 0, i32 0
  %77 = call i32 @batadv_batman_skb_recv(%struct.sk_buff* %71, i32 %74, i32* %76, i32* null)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %78

78:                                               ; preds = %70, %67
  %79 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %66, %51
  %81 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %82 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %81)
  br label %83

83:                                               ; preds = %80, %31, %18
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = call i32 @kfree_skb(%struct.sk_buff* %84)
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i64 @batadv_check_unicast_packet(%struct.batadv_priv*, %struct.sk_buff*, i32) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_is_my_mac(%struct.batadv_priv*, i32) #1

declare dso_local i64 @batadv_frag_skb_fwd(%struct.sk_buff*, %struct.batadv_hard_iface*, %struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_add_counter(%struct.batadv_priv*, i32, i32) #1

declare dso_local i32 @batadv_frag_skb_buffer(%struct.sk_buff**, %struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_batman_skb_recv(%struct.sk_buff*, i32, i32*, i32*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
