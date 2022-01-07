; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp_offload.c_udp4_ufo_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp_offload.c_udp4_ufo_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i64 }
%struct.udphdr = type { i64 }
%struct.iphdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL_CSUM = common dso_local global i32 0, align 4
@SKB_GSO_UDP = common dso_local global i32 0, align 4
@SKB_GSO_UDP_L4 = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32)* @udp4_ufo_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @udp4_ufo_fragment(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.sk_buff* @ERR_PTR(i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SKB_GSO_UDP_TUNNEL, align 4
  %24 = load i32, i32* @SKB_GSO_UDP_TUNNEL_CSUM, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.sk_buff* @skb_udp_tunnel_segment(%struct.sk_buff* %29, i32 %30, i32 0)
  store %struct.sk_buff* %31, %struct.sk_buff** %6, align 8
  br label %123

32:                                               ; preds = %18, %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SKB_GSO_UDP, align 4
  %38 = load i32, i32* @SKB_GSO_UDP_L4, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %123

43:                                               ; preds = %32
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @pskb_may_pull(%struct.sk_buff* %44, i32 8)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %123

48:                                               ; preds = %43
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SKB_GSO_UDP_L4, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call %struct.sk_buff* @__udp_gso_segment(%struct.sk_buff* %57, i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %3, align 8
  br label %125

60:                                               ; preds = %48
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp ule i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %123

74:                                               ; preds = %60
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %75)
  store %struct.udphdr* %76, %struct.udphdr** %9, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %77)
  store %struct.iphdr* %78, %struct.iphdr** %10, align 8
  %79 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %80 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @skb_checksum(%struct.sk_buff* %81, i32 0, i32 %84, i32 0)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %90 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @udp_v4_check(i32 %88, i32 %91, i32 %94, i32 %95)
  %97 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %98 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %100 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %74
  %104 = load i64, i64* @CSUM_MANGLED_0, align 8
  %105 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %106 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %74
  %108 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %107
  %116 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %107
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call %struct.sk_buff* @skb_segment(%struct.sk_buff* %120, i32 %121)
  store %struct.sk_buff* %122, %struct.sk_buff** %6, align 8
  br label %123

123:                                              ; preds = %119, %73, %47, %42, %28
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %124, %struct.sk_buff** %3, align 8
  br label %125

125:                                              ; preds = %123, %56
  %126 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %126
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_udp_tunnel_segment(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @__udp_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @udp_v4_check(i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_segment(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
