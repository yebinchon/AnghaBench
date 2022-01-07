; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_tunnel = type { i32 }
%struct.ip_tunnel_parm = type { i32 }
%struct.ip_tunnel_encap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipip_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.ip_tunnel*, align 8
  %13 = alloca %struct.ip_tunnel_parm, align 4
  %14 = alloca %struct.ip_tunnel_encap, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %17)
  store %struct.ip_tunnel* %18, %struct.ip_tunnel** %12, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %20 = call i64 @ipip_netlink_encap_parms(%struct.nlattr** %19, %struct.ip_tunnel_encap* %14)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %24 = call i32 @ip_tunnel_encap_setup(%struct.ip_tunnel* %23, %struct.ip_tunnel_encap* %14)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %6, align 4
  br label %39

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %5
  %31 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %32 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %33 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %32, i32 0, i32 0
  %34 = call i32 @ipip_netlink_parms(%struct.nlattr** %31, %struct.ip_tunnel_parm* %13, i32* %33, i32* %15)
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @ip_tunnel_newlink(%struct.net_device* %35, %struct.nlattr** %36, %struct.ip_tunnel_parm* %13, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %30, %27
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ipip_netlink_encap_parms(%struct.nlattr**, %struct.ip_tunnel_encap*) #1

declare dso_local i32 @ip_tunnel_encap_setup(%struct.ip_tunnel*, %struct.ip_tunnel_encap*) #1

declare dso_local i32 @ipip_netlink_parms(%struct.nlattr**, %struct.ip_tunnel_parm*, i32*, i32*) #1

declare dso_local i32 @ip_tunnel_newlink(%struct.net_device*, %struct.nlattr**, %struct.ip_tunnel_parm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
