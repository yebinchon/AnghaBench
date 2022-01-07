; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_forward.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.dn_skb_cb = type { i32, i32 }
%struct.dst_entry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dn_dev = type { i64 }
%struct.dn_route = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.net_device* }

@PACKET_HOST = common dso_local global i64 0, align 8
@DN_RT_F_IE = common dso_local global i32 0, align 4
@RTCF_DOREDIRECT = common dso_local global i32 0, align 4
@NFPROTO_DECNET = common dso_local global i32 0, align 4
@NF_DN_FORWARD = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@dn_to_neigh_output = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dn_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_forward(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dn_skb_cb*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.dn_dev*, align 8
  %7 = alloca %struct.dn_route*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %10)
  store %struct.dn_skb_cb* %11, %struct.dn_skb_cb** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %12)
  store %struct.dst_entry* %13, %struct.dst_entry** %5, align 8
  %14 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %15 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dn_dev* @rcu_dereference(i32 %18)
  store %struct.dn_dev* %19, %struct.dn_dev** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PACKET_HOST, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %93

29:                                               ; preds = %1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %30)
  %32 = bitcast %struct.dst_entry* %31 to %struct.dn_route*
  store %struct.dn_route* %32, %struct.dn_route** %7, align 8
  %33 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %34 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 21, i32 6
  store i32 %38, i32* %8, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = load %struct.dn_route*, %struct.dn_route** %7, align 8
  %41 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  %44 = call i64 @LL_RESERVED_SPACE(%struct.net_device* %43)
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = call i64 @skb_cow(%struct.sk_buff* %39, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %29
  br label %93

51:                                               ; preds = %29
  %52 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %53 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = icmp sgt i32 %55, 30
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %93

58:                                               ; preds = %51
  %59 = load %struct.dn_route*, %struct.dn_route** %7, align 8
  %60 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.net_device*, %struct.net_device** %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  store %struct.net_device* %62, %struct.net_device** %64, align 8
  %65 = load i32, i32* @DN_RT_F_IE, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %68 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.dn_route*, %struct.dn_route** %7, align 8
  %72 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RTCF_DOREDIRECT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %58
  %78 = load i32, i32* @DN_RT_F_IE, align 4
  %79 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %80 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %58
  %84 = load i32, i32* @NFPROTO_DECNET, align 4
  %85 = load i32, i32* @NF_DN_FORWARD, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %87 = load %struct.net_device*, %struct.net_device** %9, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  %91 = load i32, i32* @dn_to_neigh_output, align 4
  %92 = call i32 @NF_HOOK(i32 %84, i32 %85, i32* @init_net, i32* null, %struct.sk_buff* %86, %struct.net_device* %87, %struct.net_device* %90, i32 %91)
  store i32 %92, i32* %2, align 4
  br label %97

93:                                               ; preds = %57, %50, %28
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %95 = call i32 @kfree_skb(%struct.sk_buff* %94)
  %96 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %83
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.dn_dev* @rcu_dereference(i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i64) #1

declare dso_local i64 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32*, i32*, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
