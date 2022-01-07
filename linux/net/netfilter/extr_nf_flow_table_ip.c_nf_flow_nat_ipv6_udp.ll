; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_nat_ipv6_udp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_nat_ipv6_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.in6_addr = type { i32 }
%struct.udphdr = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.in6_addr*, %struct.in6_addr*)* @nf_flow_nat_ipv6_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_flow_nat_ipv6_udp(%struct.sk_buff* %0, i32 %1, %struct.in6_addr* %2, %struct.in6_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.udphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = add i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = add i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @skb_try_make_writable(%struct.sk_buff* %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %4
  store i32 -1, i32* %5, align 4
  br label %66

27:                                               ; preds = %18
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i64 @skb_network_header(%struct.sk_buff* %28)
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.udphdr*
  store %struct.udphdr* %34, %struct.udphdr** %10, align 8
  %35 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %36 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %27
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %39, %27
  %46 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %47 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %46, i32 0, i32 0
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %50 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %53 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @inet_proto_csum_replace16(i64* %47, %struct.sk_buff* %48, i32 %51, i32 %54, i32 1)
  %56 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %57 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %45
  %61 = load i64, i64* @CSUM_MANGLED_0, align 8
  %62 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %63 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %45
  br label %65

65:                                               ; preds = %64, %39
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_try_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @inet_proto_csum_replace16(i64*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
