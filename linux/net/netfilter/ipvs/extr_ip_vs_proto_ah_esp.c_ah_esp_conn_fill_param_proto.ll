; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_ah_esp.c_ah_esp_conn_fill_param_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_ah_esp.c_ah_esp_conn_fill_param_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.ip_vs_iphdr = type { i32, i32 }
%struct.ip_vs_conn_param = type { i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@PORT_ISAKMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_ipvs*, i32, %struct.ip_vs_iphdr*, %struct.ip_vs_conn_param*)* @ah_esp_conn_fill_param_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ah_esp_conn_fill_param_proto(%struct.netns_ipvs* %0, i32 %1, %struct.ip_vs_iphdr* %2, %struct.ip_vs_conn_param* %3) #0 {
  %5 = alloca %struct.netns_ipvs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_vs_iphdr*, align 8
  %8 = alloca %struct.ip_vs_conn_param*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ip_vs_iphdr* %2, %struct.ip_vs_iphdr** %7, align 8
  store %struct.ip_vs_conn_param* %3, %struct.ip_vs_conn_param** %8, align 8
  %9 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %7, align 8
  %10 = call i32 @ip_vs_iph_inverse(%struct.ip_vs_iphdr* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load %struct.netns_ipvs*, %struct.netns_ipvs** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @IPPROTO_UDP, align 4
  %20 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %7, align 8
  %21 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %20, i32 0, i32 0
  %22 = load i32, i32* @PORT_ISAKMP, align 4
  %23 = call i32 @htons(i32 %22)
  %24 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %7, align 8
  %25 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %24, i32 0, i32 1
  %26 = load i32, i32* @PORT_ISAKMP, align 4
  %27 = call i32 @htons(i32 %26)
  %28 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %8, align 8
  %29 = call i32 @ip_vs_conn_fill_param(%struct.netns_ipvs* %17, i32 %18, i32 %19, i32* %21, i32 %23, i32* %25, i32 %27, %struct.ip_vs_conn_param* %28)
  br label %44

30:                                               ; preds = %4
  %31 = load %struct.netns_ipvs*, %struct.netns_ipvs** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IPPROTO_UDP, align 4
  %34 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %7, align 8
  %35 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %34, i32 0, i32 1
  %36 = load i32, i32* @PORT_ISAKMP, align 4
  %37 = call i32 @htons(i32 %36)
  %38 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %7, align 8
  %39 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %38, i32 0, i32 0
  %40 = load i32, i32* @PORT_ISAKMP, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %8, align 8
  %43 = call i32 @ip_vs_conn_fill_param(%struct.netns_ipvs* %31, i32 %32, i32 %33, i32* %35, i32 %37, i32* %39, i32 %41, %struct.ip_vs_conn_param* %42)
  br label %44

44:                                               ; preds = %30, %16
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ip_vs_iph_inverse(%struct.ip_vs_iphdr*) #1

declare dso_local i32 @ip_vs_conn_fill_param(%struct.netns_ipvs*, i32, i32, i32*, i32, i32*, i32, %struct.ip_vs_conn_param*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
