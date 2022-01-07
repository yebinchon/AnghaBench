; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tnl_ptk_info = type { i32 }
%struct.metadata_dst = type { i32 }

@ip6ip6_dscp_ecn_decapsulate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_tnl_rcv(%struct.ip6_tnl* %0, %struct.sk_buff* %1, %struct.tnl_ptk_info* %2, %struct.metadata_dst* %3, i32 %4) #0 {
  %6 = alloca %struct.ip6_tnl*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tnl_ptk_info*, align 8
  %9 = alloca %struct.metadata_dst*, align 8
  %10 = alloca i32, align 4
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.tnl_ptk_info* %2, %struct.tnl_ptk_info** %8, align 8
  store %struct.metadata_dst* %3, %struct.metadata_dst** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %8, align 8
  %14 = load %struct.metadata_dst*, %struct.metadata_dst** %9, align 8
  %15 = load i32, i32* @ip6ip6_dscp_ecn_decapsulate, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @__ip6_tnl_rcv(%struct.ip6_tnl* %11, %struct.sk_buff* %12, %struct.tnl_ptk_info* %13, %struct.metadata_dst* %14, i32 %15, i32 %16)
  ret i32 %17
}

declare dso_local i32 @__ip6_tnl_rcv(%struct.ip6_tnl*, %struct.sk_buff*, %struct.tnl_ptk_info*, %struct.metadata_dst*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
