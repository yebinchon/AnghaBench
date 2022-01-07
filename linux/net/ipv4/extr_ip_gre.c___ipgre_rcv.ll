; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c___ipgre_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c___ipgre_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tnl_ptk_info = type { i32, i32, i32 }
%struct.ip_tunnel_net = type { i32 }
%struct.metadata_dst = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.ip_tunnel = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ARPHRD_NONE = common dso_local global i64 0, align 8
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@TUNNEL_KEY = common dso_local global i32 0, align 4
@PACKET_REJECT = common dso_local global i32 0, align 4
@log_ecn_error = common dso_local global i32 0, align 4
@PACKET_RCVD = common dso_local global i32 0, align 4
@PACKET_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tnl_ptk_info*, %struct.ip_tunnel_net*, i32, i32)* @__ipgre_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ipgre_rcv(%struct.sk_buff* %0, %struct.tnl_ptk_info* %1, %struct.ip_tunnel_net* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tnl_ptk_info*, align 8
  %9 = alloca %struct.ip_tunnel_net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.metadata_dst*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.ip_tunnel*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.tnl_ptk_info* %1, %struct.tnl_ptk_info** %8, align 8
  store %struct.ip_tunnel_net* %2, %struct.ip_tunnel_net** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.metadata_dst* null, %struct.metadata_dst** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %17)
  store %struct.iphdr* %18, %struct.iphdr** %13, align 8
  %19 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %26 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %35 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net* %19, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36)
  store %struct.ip_tunnel* %37, %struct.ip_tunnel** %14, align 8
  %38 = load %struct.ip_tunnel*, %struct.ip_tunnel** %14, align 8
  %39 = icmp ne %struct.ip_tunnel* %38, null
  br i1 %39, label %40, label %98

40:                                               ; preds = %5
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %44 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @__iptunnel_pull_header(%struct.sk_buff* %41, i32 %42, i32 %45, i32 %46, i32 0)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %100

50:                                               ; preds = %40
  %51 = load %struct.ip_tunnel*, %struct.ip_tunnel** %14, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ARPHRD_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call i32 @skb_pop_mac_header(%struct.sk_buff* %59)
  br label %64

61:                                               ; preds = %50
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call i32 @skb_reset_mac_header(%struct.sk_buff* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.ip_tunnel*, %struct.ip_tunnel** %14, align 8
  %66 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %64
  %70 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %71 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TUNNEL_CSUM, align 4
  %74 = load i32, i32* @TUNNEL_KEY, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  store i32 %76, i32* %15, align 4
  %77 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %78 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @key32_to_tunnel_id(i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call %struct.metadata_dst* @ip_tun_rx_dst(%struct.sk_buff* %81, i32 %82, i32 %83, i32 0)
  store %struct.metadata_dst* %84, %struct.metadata_dst** %12, align 8
  %85 = load %struct.metadata_dst*, %struct.metadata_dst** %12, align 8
  %86 = icmp ne %struct.metadata_dst* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %69
  %88 = load i32, i32* @PACKET_REJECT, align 4
  store i32 %88, i32* %6, align 4
  br label %104

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %89, %64
  %91 = load %struct.ip_tunnel*, %struct.ip_tunnel** %14, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %94 = load %struct.metadata_dst*, %struct.metadata_dst** %12, align 8
  %95 = load i32, i32* @log_ecn_error, align 4
  %96 = call i32 @ip_tunnel_rcv(%struct.ip_tunnel* %91, %struct.sk_buff* %92, %struct.tnl_ptk_info* %93, %struct.metadata_dst* %94, i32 %95)
  %97 = load i32, i32* @PACKET_RCVD, align 4
  store i32 %97, i32* %6, align 4
  br label %104

98:                                               ; preds = %5
  %99 = load i32, i32* @PACKET_NEXT, align 4
  store i32 %99, i32* %6, align 4
  br label %104

100:                                              ; preds = %49
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = call i32 @kfree_skb(%struct.sk_buff* %101)
  %103 = load i32, i32* @PACKET_RCVD, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %98, %90, %87
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__iptunnel_pull_header(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_pop_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @key32_to_tunnel_id(i32) #1

declare dso_local %struct.metadata_dst* @ip_tun_rx_dst(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ip_tunnel_rcv(%struct.ip_tunnel*, %struct.sk_buff*, %struct.tnl_ptk_info*, %struct.metadata_dst*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
