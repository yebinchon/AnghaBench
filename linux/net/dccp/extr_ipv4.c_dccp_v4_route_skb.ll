; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_route_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_route_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtable = type { %struct.dst_entry }
%struct.iphdr = type { i32, i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.net*, %struct.sock*, %struct.sk_buff*)* @dccp_v4_route_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @dccp_v4_route_skb(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.flowi4, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %11)
  store %struct.iphdr* %12, %struct.iphdr** %9, align 8
  %13 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 0
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call %struct.TYPE_2__* @dccp_hdr(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call %struct.TYPE_2__* @dccp_hdr(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %18, align 4
  %23 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 2
  %24 = load %struct.sock*, %struct.sock** %6, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 3
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = call i32 @RT_CONN_FLAGS(%struct.sock* %28)
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 4
  %31 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 5
  %35 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %10, i32 0, i32 6
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i32 @inet_iif(%struct.sk_buff* %39)
  store i32 %40, i32* %38, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call i32 @flowi4_to_flowi(%struct.flowi4* %10)
  %43 = call i32 @security_skb_classify_flow(%struct.sk_buff* %41, i32 %42)
  %44 = load %struct.net*, %struct.net** %5, align 8
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = call %struct.rtable* @ip_route_output_flow(%struct.net* %44, %struct.flowi4* %10, %struct.sock* %45)
  store %struct.rtable* %46, %struct.rtable** %8, align 8
  %47 = load %struct.rtable*, %struct.rtable** %8, align 8
  %48 = call i64 @IS_ERR(%struct.rtable* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %3
  %51 = load %struct.net*, %struct.net** %5, align 8
  %52 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %53 = call i32 @IP_INC_STATS(%struct.net* %51, i32 %52)
  store %struct.dst_entry* null, %struct.dst_entry** %4, align 8
  br label %57

54:                                               ; preds = %3
  %55 = load %struct.rtable*, %struct.rtable** %8, align 8
  %56 = getelementptr inbounds %struct.rtable, %struct.rtable* %55, i32 0, i32 0
  store %struct.dst_entry* %56, %struct.dst_entry** %4, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  ret %struct.dst_entry* %58
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local i32 @security_skb_classify_flow(%struct.sk_buff*, i32) #1

declare dso_local i32 @flowi4_to_flowi(%struct.flowi4*) #1

declare dso_local %struct.rtable* @ip_route_output_flow(%struct.net*, %struct.flowi4*, %struct.sock*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @IP_INC_STATS(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
