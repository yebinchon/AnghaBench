; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_icmp_ttl_exceeded.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_recv_icmp_ttl_exceeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i64 }
%struct.batadv_hard_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_icmp_packet = type { i64, i32, i32, i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@BATADV_ECHO_REQUEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"Warning - can't forward icmp packet from %pM to %pM: ttl exceeded\0A\00", align 1
@ETH_HLEN = common dso_local global i32 0, align 4
@BATADV_TTL_EXCEEDED = common dso_local global i64 0, align 8
@BATADV_TTL = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.sk_buff*)* @batadv_recv_icmp_ttl_exceeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_recv_icmp_ttl_exceeded(%struct.batadv_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_icmp_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %5, align 8
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %6, align 8
  %10 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.batadv_icmp_packet*
  store %struct.batadv_icmp_packet* %14, %struct.batadv_icmp_packet** %7, align 8
  %15 = load %struct.batadv_icmp_packet*, %struct.batadv_icmp_packet** %7, align 8
  %16 = getelementptr inbounds %struct.batadv_icmp_packet, %struct.batadv_icmp_packet* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BATADV_ECHO_REQUEST, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.batadv_icmp_packet*, %struct.batadv_icmp_packet** %7, align 8
  %22 = getelementptr inbounds %struct.batadv_icmp_packet, %struct.batadv_icmp_packet* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.batadv_icmp_packet*, %struct.batadv_icmp_packet** %7, align 8
  %25 = getelementptr inbounds %struct.batadv_icmp_packet, %struct.batadv_icmp_packet* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  br label %85

28:                                               ; preds = %2
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %30 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %29)
  store %struct.batadv_hard_iface* %30, %struct.batadv_hard_iface** %5, align 8
  %31 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %32 = icmp ne %struct.batadv_hard_iface* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %85

34:                                               ; preds = %28
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %36 = load %struct.batadv_icmp_packet*, %struct.batadv_icmp_packet** %7, align 8
  %37 = getelementptr inbounds %struct.batadv_icmp_packet, %struct.batadv_icmp_packet* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %35, i32 %38)
  store %struct.batadv_orig_node* %39, %struct.batadv_orig_node** %6, align 8
  %40 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %41 = icmp ne %struct.batadv_orig_node* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %85

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @ETH_HLEN, align 4
  %46 = call i64 @skb_cow(%struct.sk_buff* %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %85

49:                                               ; preds = %43
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.batadv_icmp_packet*
  store %struct.batadv_icmp_packet* %53, %struct.batadv_icmp_packet** %7, align 8
  %54 = load %struct.batadv_icmp_packet*, %struct.batadv_icmp_packet** %7, align 8
  %55 = getelementptr inbounds %struct.batadv_icmp_packet, %struct.batadv_icmp_packet* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.batadv_icmp_packet*, %struct.batadv_icmp_packet** %7, align 8
  %58 = getelementptr inbounds %struct.batadv_icmp_packet, %struct.batadv_icmp_packet* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ether_addr_copy(i32 %56, i32 %59)
  %61 = load %struct.batadv_icmp_packet*, %struct.batadv_icmp_packet** %7, align 8
  %62 = getelementptr inbounds %struct.batadv_icmp_packet, %struct.batadv_icmp_packet* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %65 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ether_addr_copy(i32 %63, i32 %68)
  %70 = load i64, i64* @BATADV_TTL_EXCEEDED, align 8
  %71 = load %struct.batadv_icmp_packet*, %struct.batadv_icmp_packet** %7, align 8
  %72 = getelementptr inbounds %struct.batadv_icmp_packet, %struct.batadv_icmp_packet* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @BATADV_TTL, align 4
  %74 = load %struct.batadv_icmp_packet*, %struct.batadv_icmp_packet** %7, align 8
  %75 = getelementptr inbounds %struct.batadv_icmp_packet, %struct.batadv_icmp_packet* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %78 = call i32 @batadv_send_skb_to_orig(%struct.sk_buff* %76, %struct.batadv_orig_node* %77, i32* null)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @NET_RX_SUCCESS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %49
  %83 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %49
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %85

85:                                               ; preds = %84, %48, %42, %33, %20
  %86 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %87 = icmp ne %struct.batadv_hard_iface* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %90 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %93 = icmp ne %struct.batadv_orig_node* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %96 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call i32 @kfree_skb(%struct.sk_buff* %98)
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @batadv_send_skb_to_orig(%struct.sk_buff*, %struct.batadv_orig_node*, i32*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
