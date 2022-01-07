; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_addr_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_addr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RTCF_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %struct.sctp_sock*, %struct.sk_buff*)* @sctp_v4_addr_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v4_addr_valid(%union.sctp_addr* %0, %struct.sctp_sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %struct.sctp_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %5, align 8
  store %struct.sctp_sock* %1, %struct.sctp_sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %8 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %9 = icmp ne %struct.sctp_sock* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %12 = call i32 @sctp_opt2sk(%struct.sctp_sock* %11)
  %13 = call i64 @ipv6_only_sock(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %38

16:                                               ; preds = %10, %3
  %17 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %18 = bitcast %union.sctp_addr* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_IPV4_UNUSABLE_ADDRESS(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call %struct.TYPE_6__* @skb_rtable(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RTCF_BROADCAST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %38

37:                                               ; preds = %28, %25
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %36, %24, %15
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @ipv6_only_sock(i32) #1

declare dso_local i32 @sctp_opt2sk(%struct.sctp_sock*) #1

declare dso_local i64 @IS_IPV4_UNUSABLE_ADDRESS(i32) #1

declare dso_local %struct.TYPE_6__* @skb_rtable(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
