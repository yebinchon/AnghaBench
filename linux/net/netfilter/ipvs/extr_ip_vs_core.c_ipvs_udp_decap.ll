; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ipvs_udp_decap.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ipvs_udp_decap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.sk_buff = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.udphdr = type { i64, i64, i64, i32, i32 }
%struct.ip_vs_dest = type { i64 }
%struct.guehdr = type { i64, i64, i64, i32, i32 }

@IP_VS_CONN_F_TUNNEL_TYPE_GUE = common dso_local global i64 0, align 8
@IPPROTO_IPIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, %struct.sk_buff*, i32, i32, %union.nf_inet_addr*, i64*)* @ipvs_udp_decap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvs_udp_decap(%struct.netns_ipvs* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %union.nf_inet_addr* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.netns_ipvs*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.nf_inet_addr*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.udphdr, align 8
  %15 = alloca %struct.udphdr*, align 8
  %16 = alloca %struct.ip_vs_dest*, align 8
  %17 = alloca %struct.guehdr, align 8
  %18 = alloca %struct.guehdr*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %union.nf_inet_addr* %4, %union.nf_inet_addr** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %19, i32 %20, i32 32, %struct.udphdr* %14)
  store %struct.udphdr* %21, %struct.udphdr** %15, align 8
  %22 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %23 = icmp ne %struct.udphdr* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  br label %86

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = add i64 %27, 32
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load %struct.netns_ipvs*, %struct.netns_ipvs** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %union.nf_inet_addr*, %union.nf_inet_addr** %12, align 8
  %33 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %34 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.ip_vs_dest* @ip_vs_find_tunnel(%struct.netns_ipvs* %30, i32 %31, %union.nf_inet_addr* %32, i32 %35)
  store %struct.ip_vs_dest* %36, %struct.ip_vs_dest** %16, align 8
  %37 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %16, align 8
  %38 = icmp ne %struct.ip_vs_dest* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %25
  br label %86

40:                                               ; preds = %25
  %41 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %16, align 8
  %42 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IP_VS_CONN_F_TUNNEL_TYPE_GUE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = bitcast %struct.guehdr* %17 to %struct.udphdr*
  %50 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %47, i32 %48, i32 32, %struct.udphdr* %49)
  %51 = bitcast %struct.udphdr* %50 to %struct.guehdr*
  store %struct.guehdr* %51, %struct.guehdr** %18, align 8
  %52 = load %struct.guehdr*, %struct.guehdr** %18, align 8
  %53 = icmp ne %struct.guehdr* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %86

55:                                               ; preds = %46
  %56 = load %struct.guehdr*, %struct.guehdr** %18, align 8
  %57 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.guehdr*, %struct.guehdr** %18, align 8
  %62 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %55
  br label %86

66:                                               ; preds = %60
  %67 = load %struct.guehdr*, %struct.guehdr** %18, align 8
  %68 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IPPROTO_IPIP, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %86

73:                                               ; preds = %66
  %74 = load %struct.guehdr*, %struct.guehdr** %18, align 8
  %75 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %13, align 8
  store i64 %76, i64* %77, align 8
  %78 = load %struct.guehdr*, %struct.guehdr** %18, align 8
  %79 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = add i64 64, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  br label %87

85:                                               ; preds = %40
  br label %86

86:                                               ; preds = %85, %72, %65, %54, %39, %24
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %73
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.udphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.udphdr*) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_find_tunnel(%struct.netns_ipvs*, i32, %union.nf_inet_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
