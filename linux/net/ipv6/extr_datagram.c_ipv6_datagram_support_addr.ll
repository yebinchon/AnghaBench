; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ipv6_datagram_support_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ipv6_datagram_support_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_exterr_skb = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SO_EE_ORIGIN_ICMP6 = common dso_local global i64 0, align 8
@SO_EE_ORIGIN_ICMP = common dso_local global i64 0, align 8
@SO_EE_ORIGIN_LOCAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_exterr_skb*)* @ipv6_datagram_support_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_datagram_support_addr(%struct.sock_exterr_skb* %0) #0 {
  %2 = alloca %struct.sock_exterr_skb*, align 8
  store %struct.sock_exterr_skb* %0, %struct.sock_exterr_skb** %2, align 8
  %3 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %2, align 8
  %4 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SO_EE_ORIGIN_ICMP6, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %2, align 8
  %11 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SO_EE_ORIGIN_ICMP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %9
  %17 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %2, align 8
  %18 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SO_EE_ORIGIN_LOCAL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %2, align 8
  %25 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %16, %9, %1
  %29 = phi i1 [ true, %16 ], [ true, %9 ], [ true, %1 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
