; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ipv6_local_rxpmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ipv6_local_rxpmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.flowi6 = type { i32, i32 }
%struct.ipv6_pinfo = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ip6_mtuinfo = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_local_rxpmtu(%struct.sock* %0, %struct.flowi6* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.flowi6*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipv6_pinfo*, align 8
  %8 = alloca %struct.ipv6hdr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ip6_mtuinfo*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.flowi6* %1, %struct.flowi6** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %11)
  store %struct.ipv6_pinfo* %12, %struct.ipv6_pinfo** %7, align 8
  %13 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %7, align 8
  %14 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %82

20:                                               ; preds = %3
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %82

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call i32 @skb_put(%struct.sk_buff* %27, i32 4)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = call i32 @skb_reset_network_header(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %31)
  store %struct.ipv6hdr* %32, %struct.ipv6hdr** %8, align 8
  %33 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %34 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %37 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = call %struct.ip6_mtuinfo* @IP6CBMTU(%struct.sk_buff* %38)
  store %struct.ip6_mtuinfo* %39, %struct.ip6_mtuinfo** %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ip6_mtuinfo*, %struct.ip6_mtuinfo** %10, align 8
  %42 = getelementptr inbounds %struct.ip6_mtuinfo, %struct.ip6_mtuinfo* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @AF_INET6, align 4
  %44 = load %struct.ip6_mtuinfo*, %struct.ip6_mtuinfo** %10, align 8
  %45 = getelementptr inbounds %struct.ip6_mtuinfo, %struct.ip6_mtuinfo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 8
  %47 = load %struct.ip6_mtuinfo*, %struct.ip6_mtuinfo** %10, align 8
  %48 = getelementptr inbounds %struct.ip6_mtuinfo, %struct.ip6_mtuinfo* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.ip6_mtuinfo*, %struct.ip6_mtuinfo** %10, align 8
  %51 = getelementptr inbounds %struct.ip6_mtuinfo, %struct.ip6_mtuinfo* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %54 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ip6_mtuinfo*, %struct.ip6_mtuinfo** %10, align 8
  %57 = getelementptr inbounds %struct.ip6_mtuinfo, %struct.ip6_mtuinfo* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ip6_mtuinfo*, %struct.ip6_mtuinfo** %10, align 8
  %64 = getelementptr inbounds %struct.ip6_mtuinfo, %struct.ip6_mtuinfo* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = call i64 @skb_tail_pointer(%struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = call i32 @__skb_pull(%struct.sk_buff* %66, i64 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = call i32 @skb_reset_transport_header(%struct.sk_buff* %74)
  %76 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %7, align 8
  %77 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %76, i32 0, i32 0
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = call %struct.sk_buff* @xchg(i32* %77, %struct.sk_buff* %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %9, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = call i32 @kfree_skb(%struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %26, %25, %19
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ip6_mtuinfo* @IP6CBMTU(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @xchg(i32*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
