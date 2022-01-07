; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_reroute_unicast_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_reroute_unicast_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.batadv_unicast_packet = type { i64, i32 }
%struct.batadv_orig_node = type { i32, i64* }
%struct.batadv_hard_iface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.sk_buff*, %struct.batadv_unicast_packet*, i64*, i16)* @batadv_reroute_unicast_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_reroute_unicast_packet(%struct.batadv_priv* %0, %struct.sk_buff* %1, %struct.batadv_unicast_packet* %2, i64* %3, i16 zeroext %4) #0 {
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.batadv_unicast_packet*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i16, align 2
  %11 = alloca %struct.batadv_orig_node*, align 8
  %12 = alloca %struct.batadv_hard_iface*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.batadv_unicast_packet* %2, %struct.batadv_unicast_packet** %8, align 8
  store i64* %3, i64** %9, align 8
  store i16 %4, i16* %10, align 2
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %11, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %17 = load i64*, i64** %9, align 8
  %18 = load i16, i16* %10, align 2
  %19 = call i64 @batadv_is_my_client(%struct.batadv_priv* %16, i64* %17, i16 zeroext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %5
  %22 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %23 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %22)
  store %struct.batadv_hard_iface* %23, %struct.batadv_hard_iface** %12, align 8
  %24 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %12, align 8
  %25 = icmp ne %struct.batadv_hard_iface* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %77

27:                                               ; preds = %21
  %28 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %12, align 8
  %29 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %14, align 8
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %34 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i64 @atomic_read(i32* %35)
  store i64 %36, i64* %15, align 8
  br label %62

37:                                               ; preds = %5
  %38 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i16, i16* %10, align 2
  %41 = call %struct.batadv_orig_node* @batadv_transtable_search(%struct.batadv_priv* %38, i32* null, i64* %39, i16 zeroext %40)
  store %struct.batadv_orig_node* %41, %struct.batadv_orig_node** %11, align 8
  %42 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %43 = icmp ne %struct.batadv_orig_node* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %77

45:                                               ; preds = %37
  %46 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %47 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %8, align 8
  %50 = getelementptr inbounds %struct.batadv_unicast_packet, %struct.batadv_unicast_packet* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @batadv_compare_eth(i64* %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %77

55:                                               ; preds = %45
  %56 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %57 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  store i64* %58, i64** %14, align 8
  %59 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %60 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %59, i32 0, i32 0
  %61 = call i64 @atomic_read(i32* %60)
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %55, %27
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %8, align 8
  %65 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %63, %struct.batadv_unicast_packet* %64, i32 16)
  %66 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %8, align 8
  %67 = getelementptr inbounds %struct.batadv_unicast_packet, %struct.batadv_unicast_packet* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i64*, i64** %14, align 8
  %70 = call i32 @ether_addr_copy(i32 %68, i64* %69)
  %71 = load i64, i64* %15, align 8
  %72 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %8, align 8
  %73 = getelementptr inbounds %struct.batadv_unicast_packet, %struct.batadv_unicast_packet* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = load %struct.batadv_unicast_packet*, %struct.batadv_unicast_packet** %8, align 8
  %76 = call i32 @skb_postpush_rcsum(%struct.sk_buff* %74, %struct.batadv_unicast_packet* %75, i32 16)
  store i32 1, i32* %13, align 4
  br label %77

77:                                               ; preds = %62, %54, %44, %26
  %78 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %12, align 8
  %79 = icmp ne %struct.batadv_hard_iface* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %12, align 8
  %82 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %85 = icmp ne %struct.batadv_orig_node* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %88 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %13, align 4
  ret i32 %90
}

declare dso_local i64 @batadv_is_my_client(%struct.batadv_priv*, i64*, i16 zeroext) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.batadv_orig_node* @batadv_transtable_search(%struct.batadv_priv*, i32*, i64*, i16 zeroext) #1

declare dso_local i64 @batadv_compare_eth(i64*, i32) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, %struct.batadv_unicast_packet*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i64*) #1

declare dso_local i32 @skb_postpush_rcsum(%struct.sk_buff*, %struct.batadv_unicast_packet*, i32) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
