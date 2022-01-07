; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_ah_esp.c_ah_esp_conn_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_ah_esp.c_ah_esp_conn_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_proto_data = type { i32 }
%struct.ip_vs_conn = type { i32 }
%struct.ip_vs_iphdr = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*, i32*, %struct.ip_vs_conn**, %struct.ip_vs_iphdr*)* @ah_esp_conn_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah_esp_conn_schedule(%struct.netns_ipvs* %0, i32 %1, %struct.sk_buff* %2, %struct.ip_vs_proto_data* %3, i32* %4, %struct.ip_vs_conn** %5, %struct.ip_vs_iphdr* %6) #0 {
  %8 = alloca %struct.netns_ipvs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ip_vs_proto_data*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ip_vs_conn**, align 8
  %14 = alloca %struct.ip_vs_iphdr*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.ip_vs_proto_data* %3, %struct.ip_vs_proto_data** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.ip_vs_conn** %5, %struct.ip_vs_conn*** %13, align 8
  store %struct.ip_vs_iphdr* %6, %struct.ip_vs_iphdr** %14, align 8
  %15 = load i32, i32* @NF_ACCEPT, align 4
  %16 = load i32*, i32** %12, align 8
  store i32 %15, i32* %16, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
