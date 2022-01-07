; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6erspan_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6erspan_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip6_tnl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ip6gre_net = type { i32 }

@ip6gre_net_id = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip6erspan_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6erspan_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.ip6_tnl*, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.ip6gre_net*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %16)
  store %struct.ip6_tnl* %17, %struct.ip6_tnl** %12, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call %struct.net* @dev_net(%struct.net_device* %18)
  store %struct.net* %19, %struct.net** %13, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %21 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %22 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %21, i32 0, i32 0
  %23 = call i32 @ip6gre_netlink_parms(%struct.nlattr** %20, %struct.TYPE_4__* %22)
  %24 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %25 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %26 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %25, i32 0, i32 0
  %27 = call i32 @ip6erspan_set_version(%struct.nlattr** %24, %struct.TYPE_4__* %26)
  %28 = load %struct.net*, %struct.net** %13, align 8
  %29 = load i32, i32* @ip6gre_net_id, align 4
  %30 = call %struct.ip6gre_net* @net_generic(%struct.net* %28, i32 %29)
  store %struct.ip6gre_net* %30, %struct.ip6gre_net** %14, align 8
  %31 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %32 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %5
  %37 = load %struct.ip6gre_net*, %struct.ip6gre_net** %14, align 8
  %38 = getelementptr inbounds %struct.ip6gre_net, %struct.ip6gre_net* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @rtnl_dereference(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EEXIST, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %88

45:                                               ; preds = %36
  br label %59

46:                                               ; preds = %5
  %47 = load %struct.net*, %struct.net** %13, align 8
  %48 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %49 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %48, i32 0, i32 0
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ip6gre_tunnel_find(%struct.net* %47, %struct.TYPE_4__* %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EEXIST, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %88

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %45
  %60 = load %struct.net*, %struct.net** %7, align 8
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %63 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %64 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %65 = call i32 @ip6gre_newlink_common(%struct.net* %60, %struct.net_device* %61, %struct.nlattr** %62, %struct.nlattr** %63, %struct.netlink_ext_ack* %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %59
  %69 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %70 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %71 = load i64, i64* @IFLA_MTU, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @ip6erspan_tnl_link_config(%struct.ip6_tnl* %69, i32 %76)
  %78 = load %struct.ip6gre_net*, %struct.ip6gre_net** %14, align 8
  %79 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %80 = call i32 @ip6erspan_tunnel_link_md(%struct.ip6gre_net* %78, %struct.ip6_tnl* %79)
  %81 = load %struct.net*, %struct.net** %13, align 8
  %82 = load i32, i32* @ip6gre_net_id, align 4
  %83 = call %struct.ip6gre_net* @net_generic(%struct.net* %81, i32 %82)
  %84 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %85 = call i32 @ip6gre_tunnel_link(%struct.ip6gre_net* %83, %struct.ip6_tnl* %84)
  br label %86

86:                                               ; preds = %68, %59
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %55, %42
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @ip6gre_netlink_parms(%struct.nlattr**, %struct.TYPE_4__*) #1

declare dso_local i32 @ip6erspan_set_version(%struct.nlattr**, %struct.TYPE_4__*) #1

declare dso_local %struct.ip6gre_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @rtnl_dereference(i32) #1

declare dso_local i64 @ip6gre_tunnel_find(%struct.net*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ip6gre_newlink_common(%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @ip6erspan_tnl_link_config(%struct.ip6_tnl*, i32) #1

declare dso_local i32 @ip6erspan_tunnel_link_md(%struct.ip6gre_net*, %struct.ip6_tnl*) #1

declare dso_local i32 @ip6gre_tunnel_link(%struct.ip6gre_net*, %struct.ip6_tnl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
