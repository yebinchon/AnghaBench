; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ipv6_icmp_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ipv6_icmp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.icmp6hdr = type { i32, i32 }
%struct.sock_exterr_skb = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i64, i32, i32, i32 }
%struct.ipv6hdr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@SO_EE_ORIGIN_ICMP6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_icmp_error(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ipv6_pinfo*, align 8
  %14 = alloca %struct.icmp6hdr*, align 8
  %15 = alloca %struct.sock_exterr_skb*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %16)
  store %struct.ipv6_pinfo* %17, %struct.ipv6_pinfo** %13, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff* %18)
  store %struct.icmp6hdr* %19, %struct.icmp6hdr** %14, align 8
  %20 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %13, align 8
  %21 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  br label %101

25:                                               ; preds = %6
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %101

32:                                               ; preds = %25
  %33 = load i32, i32* @ETH_P_IPV6, align 4
  %34 = call i32 @htons(i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %37)
  store %struct.sock_exterr_skb* %38, %struct.sock_exterr_skb** %15, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %41 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @SO_EE_ORIGIN_ICMP6, align 4
  %44 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %45 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  store i32 %43, i32* %46, align 8
  %47 = load %struct.icmp6hdr*, %struct.icmp6hdr** %14, align 8
  %48 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %51 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  store i32 %49, i32* %52, align 4
  %53 = load %struct.icmp6hdr*, %struct.icmp6hdr** %14, align 8
  %54 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %57 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 8
  %59 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %60 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %64 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %67 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.icmp6hdr*, %struct.icmp6hdr** %14, align 8
  %70 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %69, i64 1
  %71 = bitcast %struct.icmp6hdr* %70 to %struct.ipv6hdr*
  %72 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %71, i32 0, i32 0
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i32 @skb_network_header(%struct.sk_buff* %73)
  %75 = sext i32 %74 to i64
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %79 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %15, align 8
  %82 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 0, %88
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  %91 = call i32 @__skb_pull(%struct.sk_buff* %83, i32* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call i32 @skb_reset_transport_header(%struct.sk_buff* %92)
  %94 = load %struct.sock*, %struct.sock** %7, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = call i64 @sock_queue_err_skb(%struct.sock* %94, %struct.sk_buff* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %32
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = call i32 @kfree_skb(%struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %24, %31, %98, %32
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @sock_queue_err_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
