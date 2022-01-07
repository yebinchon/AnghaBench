; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_newlink_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_newlink_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip6_tnl = type { i32, %struct.net_device* }
%struct.ip_tunnel_encap = type { i32 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@IFLA_ADDRESS = common dso_local global i64 0, align 8
@IFLA_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip6gre_newlink_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6gre_newlink_common(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.ip6_tnl*, align 8
  %13 = alloca %struct.ip_tunnel_encap, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %16)
  store %struct.ip6_tnl* %17, %struct.ip6_tnl** %12, align 8
  %18 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %19 = call i64 @ip6gre_netlink_encap_parms(%struct.nlattr** %18, %struct.ip_tunnel_encap* %13)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %23 = call i32 @ip6_tnl_encap_setup(%struct.ip6_tnl* %22, %struct.ip_tunnel_encap* %13)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %6, align 4
  br label %76

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %5
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ARPHRD_ETHER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %37 = load i64, i64* @IFLA_ADDRESS, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = call i32 @eth_hw_addr_random(%struct.net_device* %42)
  br label %44

44:                                               ; preds = %41, %35, %29
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %47 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %46, i32 0, i32 1
  store %struct.net_device* %45, %struct.net_device** %47, align 8
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = call i32 @dev_net(%struct.net_device* %48)
  %50 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %51 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %8, align 8
  %53 = call i32 @register_netdevice(%struct.net_device* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %74

57:                                               ; preds = %44
  %58 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %59 = load i64, i64* @IFLA_MTU, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %58, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.net_device*, %struct.net_device** %8, align 8
  %65 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %66 = load i64, i64* @IFLA_MTU, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %65, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i32 @nla_get_u32(%struct.nlattr* %68)
  %70 = call i32 @ip6_tnl_change_mtu(%struct.net_device* %64, i32 %69)
  br label %71

71:                                               ; preds = %63, %57
  %72 = load %struct.net_device*, %struct.net_device** %8, align 8
  %73 = call i32 @dev_hold(%struct.net_device* %72)
  br label %74

74:                                               ; preds = %71, %56
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %26
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ip6gre_netlink_encap_parms(%struct.nlattr**, %struct.ip_tunnel_encap*) #1

declare dso_local i32 @ip6_tnl_encap_setup(%struct.ip6_tnl*, %struct.ip_tunnel_encap*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @ip6_tnl_change_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
