; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_ip4_multicast_mrd_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_ip4_multicast_mrd_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@IPPROTO_IGMP = common dso_local global i64 0, align 8
@IGMP_MRDISC_ADV = common dso_local global i64 0, align 8
@ENOMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*)* @br_ip4_multicast_mrd_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_ip4_multicast_mrd_rcv(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %5, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %9 = call %struct.TYPE_3__* @ip_hdr(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IPPROTO_IGMP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call %struct.TYPE_4__* @igmp_hdr(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IGMP_MRDISC_ADV, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %3
  %22 = load i32, i32* @ENOMSG, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %26 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %27 = call i32 @br_multicast_mark_router(%struct.net_bridge* %25, %struct.net_bridge_port* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.TYPE_3__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @igmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @br_multicast_mark_router(%struct.net_bridge*, %struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
