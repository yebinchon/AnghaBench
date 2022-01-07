; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ipv6_local_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ipv6_local_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.flowi6 = type { i32, i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.sock_exterr_skb = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i64, i64, i64, i32 }
%struct.ipv6hdr = type { i32 }
%struct.sk_buff = type { i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@SO_EE_ORIGIN_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_local_error(%struct.sock* %0, i32 %1, %struct.flowi6* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flowi6*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca %struct.sock_exterr_skb*, align 8
  %11 = alloca %struct.ipv6hdr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.flowi6* %2, %struct.flowi6** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %13)
  store %struct.ipv6_pinfo* %14, %struct.ipv6_pinfo** %9, align 8
  %15 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %16 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %101

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %101

26:                                               ; preds = %20
  %27 = load i32, i32* @ETH_P_IPV6, align 4
  %28 = call i32 @htons(i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = call i32 @skb_put(%struct.sk_buff* %31, i32 4)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %34 = call i32 @skb_reset_network_header(%struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %35)
  store %struct.ipv6hdr* %36, %struct.ipv6hdr** %11, align 8
  %37 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %38 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %41 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %43 = call i32 @ip6_flow_hdr(%struct.ipv6hdr* %42, i32 0, i32 0)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %44)
  store %struct.sock_exterr_skb* %45, %struct.sock_exterr_skb** %10, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %48 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @SO_EE_ORIGIN_LOCAL, align 4
  %51 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %52 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 6
  store i32 %50, i32* %53, align 8
  %54 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %55 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %58 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %61 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %65 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  %67 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %68 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %71 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %70, i32 0, i32 0
  %72 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %73 = call i32 @skb_network_header(%struct.sk_buff* %72)
  %74 = sext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %78 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %80 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %10, align 8
  %83 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %86 = call i64 @skb_tail_pointer(%struct.sk_buff* %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = call i32 @__skb_pull(%struct.sk_buff* %84, i64 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %93 = call i32 @skb_reset_transport_header(%struct.sk_buff* %92)
  %94 = load %struct.sock*, %struct.sock** %5, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %96 = call i64 @sock_queue_err_skb(%struct.sock* %94, %struct.sk_buff* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %26
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = call i32 @kfree_skb(%struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %19, %25, %98, %26
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6_flow_hdr(%struct.ipv6hdr*, i32, i32) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @sock_queue_err_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
