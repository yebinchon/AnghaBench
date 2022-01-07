; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip6_tnl = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ip6gre_net = type { i32 }

@ip6gre_net_id = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip6gre_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6gre_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
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
  %23 = call i32 @ip6gre_netlink_parms(%struct.nlattr** %20, %struct.TYPE_3__* %22)
  %24 = load %struct.net*, %struct.net** %13, align 8
  %25 = load i32, i32* @ip6gre_net_id, align 4
  %26 = call %struct.ip6gre_net* @net_generic(%struct.net* %24, i32 %25)
  store %struct.ip6gre_net* %26, %struct.ip6gre_net** %14, align 8
  %27 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %28 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %5
  %33 = load %struct.ip6gre_net*, %struct.ip6gre_net** %14, align 8
  %34 = getelementptr inbounds %struct.ip6gre_net, %struct.ip6gre_net* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @rtnl_dereference(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EEXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %84

41:                                               ; preds = %32
  br label %55

42:                                               ; preds = %5
  %43 = load %struct.net*, %struct.net** %13, align 8
  %44 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %45 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %44, i32 0, i32 0
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ip6gre_tunnel_find(%struct.net* %43, %struct.TYPE_3__* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EEXIST, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %84

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.net*, %struct.net** %7, align 8
  %57 = load %struct.net_device*, %struct.net_device** %8, align 8
  %58 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %59 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %60 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %61 = call i32 @ip6gre_newlink_common(%struct.net* %56, %struct.net_device* %57, %struct.nlattr** %58, %struct.nlattr** %59, %struct.netlink_ext_ack* %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %55
  %65 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %66 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %67 = load i64, i64* @IFLA_MTU, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @ip6gre_tnl_link_config(%struct.ip6_tnl* %65, i32 %72)
  %74 = load %struct.ip6gre_net*, %struct.ip6gre_net** %14, align 8
  %75 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %76 = call i32 @ip6gre_tunnel_link_md(%struct.ip6gre_net* %74, %struct.ip6_tnl* %75)
  %77 = load %struct.net*, %struct.net** %13, align 8
  %78 = load i32, i32* @ip6gre_net_id, align 4
  %79 = call %struct.ip6gre_net* @net_generic(%struct.net* %77, i32 %78)
  %80 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %81 = call i32 @ip6gre_tunnel_link(%struct.ip6gre_net* %79, %struct.ip6_tnl* %80)
  br label %82

82:                                               ; preds = %64, %55
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %51, %38
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @ip6gre_netlink_parms(%struct.nlattr**, %struct.TYPE_3__*) #1

declare dso_local %struct.ip6gre_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @rtnl_dereference(i32) #1

declare dso_local i64 @ip6gre_tunnel_find(%struct.net*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @ip6gre_newlink_common(%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @ip6gre_tnl_link_config(%struct.ip6_tnl*, i32) #1

declare dso_local i32 @ip6gre_tunnel_link_md(%struct.ip6gre_net*, %struct.ip6_tnl*) #1

declare dso_local i32 @ip6gre_tunnel_link(%struct.ip6gre_net*, %struct.ip6_tnl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
