; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gre_fb_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gre_fb_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ip_tunnel = type { i32 }
%struct.ip_tunnel_info = type { i32, %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32, i32 }

@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@TUNNEL_KEY = common dso_local global i32 0, align 4
@TUNNEL_SEQ = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*, i32)* @gre_fb_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gre_fb_xmit(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_tunnel*, align 8
  %8 = alloca %struct.ip_tunnel_info*, align 8
  %9 = alloca %struct.ip_tunnel_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %12)
  store %struct.ip_tunnel* %13, %struct.ip_tunnel** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff* %14)
  store %struct.ip_tunnel_info* %15, %struct.ip_tunnel_info** %8, align 8
  %16 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %17 = icmp ne %struct.ip_tunnel_info* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %20 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %27 = call i64 @ip_tunnel_info_af(%struct.ip_tunnel_info* %26)
  %28 = load i64, i64* @AF_INET, align 8
  %29 = icmp ne i64 %27, %28
  br label %30

30:                                               ; preds = %25, %18, %3
  %31 = phi i1 [ true, %18 ], [ true, %3 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %104

36:                                               ; preds = %30
  %37 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %37, i32 0, i32 1
  store %struct.ip_tunnel_key* %38, %struct.ip_tunnel_key** %9, align 8
  %39 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %40 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gre_calc_hlen(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @skb_cow_head(%struct.sk_buff* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %104

50:                                               ; preds = %36
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %53 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TUNNEL_CSUM, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @gre_handle_offloads(%struct.sk_buff* %51, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %104

65:                                               ; preds = %50
  %66 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %67 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TUNNEL_CSUM, align 4
  %71 = load i32, i32* @TUNNEL_KEY, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @TUNNEL_SEQ, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %69, %74
  store i32 %75, i32* %11, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %81 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @tunnel_id_to_key32(i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @TUNNEL_SEQ, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %65
  %90 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %91 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = call i32 @htonl(i32 %92)
  br label %96

95:                                               ; preds = %65
  br label %96

96:                                               ; preds = %95, %89
  %97 = phi i32 [ %94, %89 ], [ 0, %95 ]
  %98 = call i32 @gre_build_header(%struct.sk_buff* %76, i32 %77, i32 %78, i32 %79, i32 %84, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = load %struct.net_device*, %struct.net_device** %5, align 8
  %101 = load i32, i32* @IPPROTO_GRE, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @ip_md_tunnel_xmit(%struct.sk_buff* %99, %struct.net_device* %100, i32 %101, i32 %102)
  br label %112

104:                                              ; preds = %64, %49, %35
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = call i32 @kfree_skb(%struct.sk_buff* %105)
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %104, %96
  ret void
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

declare dso_local i32 @gre_calc_hlen(i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i64 @gre_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i32 @gre_build_header(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tunnel_id_to_key32(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ip_md_tunnel_xmit(%struct.sk_buff*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
