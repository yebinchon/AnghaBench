; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp_tunnel.c_udp_tun_rx_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp_tunnel.c_udp_tun_rx_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metadata_dst = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@AF_INET = common dso_local global i16 0, align 2
@TUNNEL_CSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.metadata_dst* @udp_tun_rx_dst(%struct.sk_buff* %0, i16 zeroext %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.metadata_dst*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.metadata_dst*, align 8
  %13 = alloca %struct.ip_tunnel_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i16 %1, i16* %8, align 2
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i16, i16* %8, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @AF_INET, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.metadata_dst* @ip_tun_rx_dst(%struct.sk_buff* %20, i32 %21, i32 %22, i32 %23)
  store %struct.metadata_dst* %24, %struct.metadata_dst** %12, align 8
  br label %31

25:                                               ; preds = %5
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.metadata_dst* @ipv6_tun_rx_dst(%struct.sk_buff* %26, i32 %27, i32 %28, i32 %29)
  store %struct.metadata_dst* %30, %struct.metadata_dst** %12, align 8
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.metadata_dst*, %struct.metadata_dst** %12, align 8
  %33 = icmp ne %struct.metadata_dst* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store %struct.metadata_dst* null, %struct.metadata_dst** %6, align 8
  br label %67

35:                                               ; preds = %31
  %36 = load %struct.metadata_dst*, %struct.metadata_dst** %12, align 8
  %37 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.ip_tunnel_info* %38, %struct.ip_tunnel_info** %13, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call %struct.TYPE_6__* @udp_hdr(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %13, align 8
  %44 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call %struct.TYPE_6__* @udp_hdr(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %13, align 8
  %51 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call %struct.TYPE_6__* @udp_hdr(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %35
  %59 = load i32, i32* @TUNNEL_CSUM, align 4
  %60 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %13, align 8
  %61 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %35
  %66 = load %struct.metadata_dst*, %struct.metadata_dst** %12, align 8
  store %struct.metadata_dst* %66, %struct.metadata_dst** %6, align 8
  br label %67

67:                                               ; preds = %65, %34
  %68 = load %struct.metadata_dst*, %struct.metadata_dst** %6, align 8
  ret %struct.metadata_dst* %68
}

declare dso_local %struct.metadata_dst* @ip_tun_rx_dst(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.metadata_dst* @ipv6_tun_rx_dst(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @udp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
