; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ipvs_gre_decap.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ipvs_gre_decap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.sk_buff = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.gre_base_hdr = type { i32, i64 }
%struct.ip_vs_dest = type { i64 }

@IP_VS_CONN_F_TUNNEL_TYPE_GRE = common dso_local global i64 0, align 8
@GRE_CSUM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, %struct.sk_buff*, i32, i32, %union.nf_inet_addr*, i32*)* @ipvs_gre_decap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvs_gre_decap(%struct.netns_ipvs* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %union.nf_inet_addr* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.netns_ipvs*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.nf_inet_addr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.gre_base_hdr, align 8
  %15 = alloca %struct.gre_base_hdr*, align 8
  %16 = alloca %struct.ip_vs_dest*, align 8
  %17 = alloca i64, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %union.nf_inet_addr* %4, %union.nf_inet_addr** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.gre_base_hdr* @skb_header_pointer(%struct.sk_buff* %18, i32 %19, i32 16, %struct.gre_base_hdr* %14)
  store %struct.gre_base_hdr* %20, %struct.gre_base_hdr** %15, align 8
  %21 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %15, align 8
  %22 = icmp ne %struct.gre_base_hdr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  br label %65

24:                                               ; preds = %6
  %25 = load %struct.netns_ipvs*, %struct.netns_ipvs** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %union.nf_inet_addr*, %union.nf_inet_addr** %12, align 8
  %28 = call %struct.ip_vs_dest* @ip_vs_find_tunnel(%struct.netns_ipvs* %25, i32 %26, %union.nf_inet_addr* %27, i32 0)
  store %struct.ip_vs_dest* %28, %struct.ip_vs_dest** %16, align 8
  %29 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %16, align 8
  %30 = icmp ne %struct.ip_vs_dest* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %65

32:                                               ; preds = %24
  %33 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %16, align 8
  %34 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IP_VS_CONN_F_TUNNEL_TYPE_GRE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %15, align 8
  %40 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GRE_CSUM, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %65

47:                                               ; preds = %38
  %48 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %15, align 8
  %49 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %17, align 8
  %51 = load i64, i64* %17, align 8
  %52 = load i32, i32* @ETH_P_IP, align 4
  %53 = call i64 @htons(i32 %52)
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %65

56:                                               ; preds = %47
  %57 = load i32, i32* @IPPROTO_IPIP, align 4
  %58 = load i32*, i32** %13, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %15, align 8
  %60 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @gre_flags_to_tnl_flags(i32 %61)
  %63 = call i32 @gre_calc_hlen(i32 %62)
  store i32 %63, i32* %7, align 4
  br label %66

64:                                               ; preds = %32
  br label %65

65:                                               ; preds = %64, %55, %46, %31, %23
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.gre_base_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.gre_base_hdr*) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_find_tunnel(%struct.netns_ipvs*, i32, %union.nf_inet_addr*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @gre_calc_hlen(i32) #1

declare dso_local i32 @gre_flags_to_tnl_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
