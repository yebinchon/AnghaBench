; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_offload.c_ipv6_gso_pull_exthdrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_offload.c_ipv6_gso_pull_exthdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_offload = type { i32 }
%struct.ipv6_opt_hdr = type { i32 }

@NEXTHDR_HOP = common dso_local global i32 0, align 4
@inet6_offloads = common dso_local global i32* null, align 8
@INET6_PROTO_GSO_EXTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ipv6_gso_pull_exthdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_gso_pull_exthdrs(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_offload*, align 8
  %6 = alloca %struct.ipv6_opt_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.net_offload* null, %struct.net_offload** %5, align 8
  br label %8

8:                                                ; preds = %61, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NEXTHDR_HOP, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load i32*, i32** @inet6_offloads, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net_offload* @rcu_dereference(i32 %17)
  store %struct.net_offload* %18, %struct.net_offload** %5, align 8
  %19 = load %struct.net_offload*, %struct.net_offload** %5, align 8
  %20 = icmp ne %struct.net_offload* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %73

26:                                               ; preds = %12
  %27 = load %struct.net_offload*, %struct.net_offload** %5, align 8
  %28 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @INET6_PROTO_GSO_EXTHDR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %73

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call i32 @pskb_may_pull(%struct.sk_buff* %36, i32 8)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %73

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = bitcast i8* %48 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %49, %struct.ipv6_opt_hdr** %6, align 8
  %50 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %6, align 8
  %51 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @pskb_may_pull(%struct.sk_buff* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %73

61:                                               ; preds = %44
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = bitcast i8* %65 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %66, %struct.ipv6_opt_hdr** %6, align 8
  %67 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %6, align 8
  %68 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %4, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @__skb_pull(%struct.sk_buff* %70, i32 %71)
  br label %8

73:                                               ; preds = %60, %43, %33, %25
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.net_offload* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
