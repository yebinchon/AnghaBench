; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_reject_ipv6.c_nf_reject_ip6hdr_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_reject_ipv6.c_nf_reject_ip6hdr_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6hdr = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@DEFAULT_TOS_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipv6hdr* @nf_reject_ip6hdr_put(%struct.sk_buff* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipv6hdr*, align 8
  %10 = alloca %struct.ipv6hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i8* @ipv6_hdr(%struct.sk_buff* %12)
  %14 = bitcast i8* %13 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %14, %struct.ipv6hdr** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @skb_put(%struct.sk_buff* %15, i32 16)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @skb_reset_network_header(%struct.sk_buff* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i8* @ipv6_hdr(%struct.sk_buff* %19)
  %21 = bitcast i8* %20 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %21, %struct.ipv6hdr** %9, align 8
  %22 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %23 = call i32 @ip6_flow_hdr(%struct.ipv6hdr* %22, i32 0, i32 0)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %26 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %29 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %31 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %34 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %36 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %39 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ETH_P_IPV6, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  ret %struct.ipv6hdr* %44
}

declare dso_local i8* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ip6_flow_hdr(%struct.ipv6hdr*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
