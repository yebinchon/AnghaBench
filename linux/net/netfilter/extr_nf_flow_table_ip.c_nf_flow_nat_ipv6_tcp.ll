; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_nat_ipv6_tcp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_nat_ipv6_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.in6_addr = type { i32 }
%struct.tcphdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.in6_addr*, %struct.in6_addr*)* @nf_flow_nat_ipv6_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_flow_nat_ipv6_tcp(%struct.sk_buff* %0, i32 %1, %struct.in6_addr* %2, %struct.in6_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = add i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = add i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i64 @skb_try_make_writable(%struct.sk_buff* %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %4
  store i32 -1, i32* %5, align 4
  br label %45

27:                                               ; preds = %18
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i64 @skb_network_header(%struct.sk_buff* %28)
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.tcphdr*
  store %struct.tcphdr* %34, %struct.tcphdr** %10, align 8
  %35 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %36 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %39 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %42 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @inet_proto_csum_replace16(i32* %36, %struct.sk_buff* %37, i32 %40, i32 %43, i32 1)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %27, %26
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_try_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @inet_proto_csum_replace16(i32*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
