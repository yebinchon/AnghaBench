; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip6_tnl = type { i32 }
%struct.ip6gre_net = type { i32 }
%struct.__ip6_tnl_parm = type { i32 }

@ip6gre_net_id = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip6gre_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6gre_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.ip6_tnl*, align 8
  %11 = alloca %struct.ip6gre_net*, align 8
  %12 = alloca %struct.__ip6_tnl_parm, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %13)
  store %struct.ip6_tnl* %14, %struct.ip6_tnl** %10, align 8
  %15 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %16 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ip6gre_net_id, align 4
  %19 = call %struct.ip6gre_net* @net_generic(i32 %17, i32 %18)
  store %struct.ip6gre_net* %19, %struct.ip6gre_net** %11, align 8
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %24 = call %struct.ip6_tnl* @ip6gre_changelink_common(%struct.net_device* %20, %struct.nlattr** %21, %struct.nlattr** %22, %struct.__ip6_tnl_parm* %12, %struct.netlink_ext_ack* %23)
  store %struct.ip6_tnl* %24, %struct.ip6_tnl** %10, align 8
  %25 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %26 = call i64 @IS_ERR(%struct.ip6_tnl* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %30 = call i32 @PTR_ERR(%struct.ip6_tnl* %29)
  store i32 %30, i32* %5, align 4
  br label %53

31:                                               ; preds = %4
  %32 = load %struct.ip6gre_net*, %struct.ip6gre_net** %11, align 8
  %33 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %34 = call i32 @ip6gre_tunnel_unlink_md(%struct.ip6gre_net* %32, %struct.ip6_tnl* %33)
  %35 = load %struct.ip6gre_net*, %struct.ip6gre_net** %11, align 8
  %36 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %37 = call i32 @ip6gre_tunnel_unlink(%struct.ip6gre_net* %35, %struct.ip6_tnl* %36)
  %38 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %39 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %40 = load i64, i64* @IFLA_MTU, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @ip6gre_tnl_change(%struct.ip6_tnl* %38, %struct.__ip6_tnl_parm* %12, i32 %45)
  %47 = load %struct.ip6gre_net*, %struct.ip6gre_net** %11, align 8
  %48 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %49 = call i32 @ip6gre_tunnel_link_md(%struct.ip6gre_net* %47, %struct.ip6_tnl* %48)
  %50 = load %struct.ip6gre_net*, %struct.ip6gre_net** %11, align 8
  %51 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %52 = call i32 @ip6gre_tunnel_link(%struct.ip6gre_net* %50, %struct.ip6_tnl* %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %31, %28
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ip6gre_net* @net_generic(i32, i32) #1

declare dso_local %struct.ip6_tnl* @ip6gre_changelink_common(%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.__ip6_tnl_parm*, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.ip6_tnl*) #1

declare dso_local i32 @PTR_ERR(%struct.ip6_tnl*) #1

declare dso_local i32 @ip6gre_tunnel_unlink_md(%struct.ip6gre_net*, %struct.ip6_tnl*) #1

declare dso_local i32 @ip6gre_tunnel_unlink(%struct.ip6gre_net*, %struct.ip6_tnl*) #1

declare dso_local i32 @ip6gre_tnl_change(%struct.ip6_tnl*, %struct.__ip6_tnl_parm*, i32) #1

declare dso_local i32 @ip6gre_tunnel_link_md(%struct.ip6gre_net*, %struct.ip6_tnl*) #1

declare dso_local i32 @ip6gre_tunnel_link(%struct.ip6gre_net*, %struct.ip6_tnl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
