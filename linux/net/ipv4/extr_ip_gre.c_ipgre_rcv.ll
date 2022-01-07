; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tnl_ptk_info = type { i64 }
%struct.net = type { i32 }
%struct.ip_tunnel_net = type { i32 }

@ETH_P_TEB = common dso_local global i32 0, align 4
@gre_tap_net_id = common dso_local global i32 0, align 4
@ipgre_net_id = common dso_local global i32 0, align 4
@PACKET_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tnl_ptk_info*, i32)* @ipgre_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_rcv(%struct.sk_buff* %0, %struct.tnl_ptk_info* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tnl_ptk_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.ip_tunnel_net*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tnl_ptk_info* %1, %struct.tnl_ptk_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net* @dev_net(i32 %12)
  store %struct.net* %13, %struct.net** %7, align 8
  %14 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %15 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ETH_P_TEB, align 4
  %18 = call i64 @htons(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.net*, %struct.net** %7, align 8
  %22 = load i32, i32* @gre_tap_net_id, align 4
  %23 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %21, i32 %22)
  store %struct.ip_tunnel_net* %23, %struct.ip_tunnel_net** %8, align 8
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.net*, %struct.net** %7, align 8
  %26 = load i32, i32* @ipgre_net_id, align 4
  %27 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %25, i32 %26)
  store %struct.ip_tunnel_net* %27, %struct.ip_tunnel_net** %8, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %31 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @__ipgre_rcv(%struct.sk_buff* %29, %struct.tnl_ptk_info* %30, %struct.ip_tunnel_net* %31, i32 %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @PACKET_NEXT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %28
  %38 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %39 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @ETH_P_TEB, align 4
  %42 = call i64 @htons(i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.net*, %struct.net** %7, align 8
  %46 = load i32, i32* @ipgre_net_id, align 4
  %47 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %45, i32 %46)
  store %struct.ip_tunnel_net* %47, %struct.ip_tunnel_net** %8, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %5, align 8
  %50 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @__ipgre_rcv(%struct.sk_buff* %48, %struct.tnl_ptk_info* %49, %struct.ip_tunnel_net* %50, i32 %51, i32 1)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %44, %37, %28
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @__ipgre_rcv(%struct.sk_buff*, %struct.tnl_ptk_info*, %struct.ip_tunnel_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
