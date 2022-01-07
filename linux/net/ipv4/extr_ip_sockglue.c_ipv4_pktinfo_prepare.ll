; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_sockglue.c_ipv4_pktinfo_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_sockglue.c_ipv4_pktinfo_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.in_pktinfo = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.rtable = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IP_CMSG_PKTINFO = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv4_pktinfo_prepare(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.in_pktinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.in_pktinfo* @PKTINFO_SKB_CB(%struct.sk_buff* %9)
  store %struct.in_pktinfo* %10, %struct.in_pktinfo** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.TYPE_5__* @inet_sk(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IP_CMSG_PKTINFO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call i64 @ipv6_sk_rxinfo(%struct.sock* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i1 [ true, %2 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %22
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %28)
  %30 = icmp ne %struct.rtable* %29, null
  br i1 %30, label %31, label %73

31:                                               ; preds = %27
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %32)
  store %struct.rtable* %33, %struct.rtable** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.TYPE_6__* @IPCB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ipv4_l3mdev_skb(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.in_pktinfo*, %struct.in_pktinfo** %5, align 8
  %40 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LOOPBACK_IFINDEX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i64 @inet_iif(%struct.sk_buff* %45)
  %47 = load %struct.in_pktinfo*, %struct.in_pktinfo** %5, align 8
  %48 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %67

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load %struct.rtable*, %struct.rtable** %7, align 8
  %54 = icmp ne %struct.rtable* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.rtable*, %struct.rtable** %7, align 8
  %57 = getelementptr inbounds %struct.rtable, %struct.rtable* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.rtable*, %struct.rtable** %7, align 8
  %62 = getelementptr inbounds %struct.rtable, %struct.rtable* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.in_pktinfo*, %struct.in_pktinfo** %5, align 8
  %65 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %55, %52, %49
  br label %67

67:                                               ; preds = %66, %44
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i64 @fib_compute_spec_dst(%struct.sk_buff* %68)
  %70 = load %struct.in_pktinfo*, %struct.in_pktinfo** %5, align 8
  %71 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  br label %79

73:                                               ; preds = %27, %22
  %74 = load %struct.in_pktinfo*, %struct.in_pktinfo** %5, align 8
  %75 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.in_pktinfo*, %struct.in_pktinfo** %5, align 8
  %77 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %67
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @skb_dst_drop(%struct.sk_buff* %80)
  ret void
}

declare dso_local %struct.in_pktinfo* @PKTINFO_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @inet_sk(%struct.sock*) #1

declare dso_local i64 @ipv6_sk_rxinfo(%struct.sock*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @ipv4_l3mdev_skb(i32) #1

declare dso_local %struct.TYPE_6__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @inet_iif(%struct.sk_buff*) #1

declare dso_local i64 @fib_compute_spec_dst(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
