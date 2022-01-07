; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_ah_esp.c_ah_esp_conn_in_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_ah_esp.c_ah_esp_conn_in_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32 }
%struct.netns_ipvs = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_iphdr = type { i32, i32, i32 }
%struct.ip_vs_conn_param = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Unknown ISAKMP entry for outin packet %s%s %s->%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ICMP+\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_conn* (%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_iphdr*)* @ah_esp_conn_in_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_conn* @ah_esp_conn_in_get(%struct.netns_ipvs* %0, i32 %1, %struct.sk_buff* %2, %struct.ip_vs_iphdr* %3) #0 {
  %5 = alloca %struct.netns_ipvs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ip_vs_iphdr*, align 8
  %9 = alloca %struct.ip_vs_conn*, align 8
  %10 = alloca %struct.ip_vs_conn_param, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %8, align 8
  %11 = load %struct.netns_ipvs*, %struct.netns_ipvs** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %8, align 8
  %14 = call i32 @ah_esp_conn_fill_param_proto(%struct.netns_ipvs* %11, i32 %12, %struct.ip_vs_iphdr* %13, %struct.ip_vs_conn_param* %10)
  %15 = call %struct.ip_vs_conn* @ip_vs_conn_in_get(%struct.ip_vs_conn_param* %10)
  store %struct.ip_vs_conn* %15, %struct.ip_vs_conn** %9, align 8
  %16 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %9, align 8
  %17 = icmp ne %struct.ip_vs_conn* %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %4
  %19 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %8, align 8
  %20 = call i64 @ip_vs_iph_icmp(%struct.ip_vs_iphdr* %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %8, align 8
  %25 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_2__* @ip_vs_proto_get(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %8, align 8
  %32 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %31, i32 0, i32 1
  %33 = call i32 @IP_VS_DBG_ADDR(i32 %30, i32* %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %8, align 8
  %36 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %35, i32 0, i32 0
  %37 = call i32 @IP_VS_DBG_ADDR(i32 %34, i32* %36)
  %38 = call i32 @IP_VS_DBG_BUF(i32 12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %29, i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %18, %4
  %40 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %9, align 8
  ret %struct.ip_vs_conn* %40
}

declare dso_local i32 @ah_esp_conn_fill_param_proto(%struct.netns_ipvs*, i32, %struct.ip_vs_iphdr*, %struct.ip_vs_conn_param*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_conn_in_get(%struct.ip_vs_conn_param*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @ip_vs_iph_icmp(%struct.ip_vs_iphdr*) #1

declare dso_local %struct.TYPE_2__* @ip_vs_proto_get(i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
