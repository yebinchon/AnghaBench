; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ip6_datagram_recv_common_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ip6_datagram_recv_common_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ipv6_pinfo = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.in6_pktinfo = type { i64, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@SOL_IPV6 = common dso_local global i32 0, align 4
@IPV6_PKTINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_datagram_recv_common_ctl(%struct.sock* %0, %struct.msghdr* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ipv6_pinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_pktinfo, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %10)
  store %struct.ipv6_pinfo* %11, %struct.ipv6_pinfo** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_IPV6, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp eq i64 %14, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %7, align 8
  %20 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call %struct.TYPE_12__* @IP6CB(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %9, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %9, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  br label %51

39:                                               ; preds = %25
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call %struct.TYPE_11__* @PKTINFO_SKB_CB(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %9, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %9, i32 0, i32 1
  %50 = call i32 @ipv6_addr_set_v4mapped(i32 %48, i32* %49)
  br label %51

51:                                               ; preds = %39, %28
  %52 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %9, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %57 = load i32, i32* @SOL_IPV6, align 4
  %58 = load i32, i32* @IPV6_PKTINFO, align 4
  %59 = call i32 @put_cmsg(%struct.msghdr* %56, i32 %57, i32 %58, i32 16, %struct.in6_pktinfo* %9)
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60, %3
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_12__* @IP6CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_11__* @PKTINFO_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_set_v4mapped(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, %struct.in6_pktinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
