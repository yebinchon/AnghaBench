; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6ip6_dscp_ecn_decapsulate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6ip6_dscp_ecn_decapsulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.sk_buff = type { i32 }

@IP6_TNL_F_RCV_DSCP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_tnl*, %struct.ipv6hdr*, %struct.sk_buff*)* @ip6ip6_dscp_ecn_decapsulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6ip6_dscp_ecn_decapsulate(%struct.ip6_tnl* %0, %struct.ipv6hdr* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ip6_tnl*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %4, align 8
  store %struct.ipv6hdr* %1, %struct.ipv6hdr** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %8 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IP6_TNL_F_RCV_DSCP_COPY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %16 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @ipv6_hdr(%struct.sk_buff* %17)
  %19 = call i32 @ipv6_copy_dscp(i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %14, %3
  %21 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @IP6_ECN_decapsulate(%struct.ipv6hdr* %21, %struct.sk_buff* %22)
  ret i32 %23
}

declare dso_local i32 @ipv6_copy_dscp(i32, i32) #1

declare dso_local i32 @ipv6_get_dsfield(%struct.ipv6hdr*) #1

declare dso_local i32 @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @IP6_ECN_decapsulate(%struct.ipv6hdr*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
