; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_changelink_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_changelink_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.net_device*, %struct.net* }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.__ip6_tnl_parm = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip6gre_net = type { %struct.net_device* }
%struct.ip_tunnel_encap = type { i32 }

@ip6gre_net_id = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip6_tnl* (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.__ip6_tnl_parm*, %struct.netlink_ext_ack*)* @ip6gre_changelink_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip6_tnl* @ip6gre_changelink_common(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.__ip6_tnl_parm* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.ip6_tnl*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.__ip6_tnl_parm*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.ip6_tnl*, align 8
  %13 = alloca %struct.ip6_tnl*, align 8
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.ip6gre_net*, align 8
  %16 = alloca %struct.ip_tunnel_encap, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.__ip6_tnl_parm* %3, %struct.__ip6_tnl_parm** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %18)
  store %struct.ip6_tnl* %19, %struct.ip6_tnl** %13, align 8
  %20 = load %struct.ip6_tnl*, %struct.ip6_tnl** %13, align 8
  %21 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %20, i32 0, i32 1
  %22 = load %struct.net*, %struct.net** %21, align 8
  store %struct.net* %22, %struct.net** %14, align 8
  %23 = load %struct.net*, %struct.net** %14, align 8
  %24 = load i32, i32* @ip6gre_net_id, align 4
  %25 = call %struct.ip6gre_net* @net_generic(%struct.net* %23, i32 %24)
  store %struct.ip6gre_net* %25, %struct.ip6gre_net** %15, align 8
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = load %struct.ip6gre_net*, %struct.ip6gre_net** %15, align 8
  %28 = getelementptr inbounds %struct.ip6gre_net, %struct.ip6gre_net* %27, i32 0, i32 0
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = icmp eq %struct.net_device* %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.ip6_tnl* @ERR_PTR(i32 %33)
  store %struct.ip6_tnl* %34, %struct.ip6_tnl** %6, align 8
  br label %72

35:                                               ; preds = %5
  %36 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %37 = call i64 @ip6gre_netlink_encap_parms(%struct.nlattr** %36, %struct.ip_tunnel_encap* %16)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.ip6_tnl*, %struct.ip6_tnl** %13, align 8
  %41 = call i32 @ip6_tnl_encap_setup(%struct.ip6_tnl* %40, %struct.ip_tunnel_encap* %16)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %17, align 4
  %46 = call %struct.ip6_tnl* @ERR_PTR(i32 %45)
  store %struct.ip6_tnl* %46, %struct.ip6_tnl** %6, align 8
  br label %72

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %50 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %10, align 8
  %51 = call i32 @ip6gre_netlink_parms(%struct.nlattr** %49, %struct.__ip6_tnl_parm* %50)
  %52 = load %struct.net*, %struct.net** %14, align 8
  %53 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %10, align 8
  %54 = call %struct.ip6_tnl* @ip6gre_tunnel_locate(%struct.net* %52, %struct.__ip6_tnl_parm* %53, i32 0)
  store %struct.ip6_tnl* %54, %struct.ip6_tnl** %12, align 8
  %55 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %56 = icmp ne %struct.ip6_tnl* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %48
  %58 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  %59 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %58, i32 0, i32 0
  %60 = load %struct.net_device*, %struct.net_device** %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = icmp ne %struct.net_device* %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @EEXIST, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.ip6_tnl* @ERR_PTR(i32 %65)
  store %struct.ip6_tnl* %66, %struct.ip6_tnl** %6, align 8
  br label %72

67:                                               ; preds = %57
  br label %70

68:                                               ; preds = %48
  %69 = load %struct.ip6_tnl*, %struct.ip6_tnl** %13, align 8
  store %struct.ip6_tnl* %69, %struct.ip6_tnl** %12, align 8
  br label %70

70:                                               ; preds = %68, %67
  %71 = load %struct.ip6_tnl*, %struct.ip6_tnl** %12, align 8
  store %struct.ip6_tnl* %71, %struct.ip6_tnl** %6, align 8
  br label %72

72:                                               ; preds = %70, %63, %44, %31
  %73 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  ret %struct.ip6_tnl* %73
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ip6gre_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.ip6_tnl* @ERR_PTR(i32) #1

declare dso_local i64 @ip6gre_netlink_encap_parms(%struct.nlattr**, %struct.ip_tunnel_encap*) #1

declare dso_local i32 @ip6_tnl_encap_setup(%struct.ip6_tnl*, %struct.ip_tunnel_encap*) #1

declare dso_local i32 @ip6gre_netlink_parms(%struct.nlattr**, %struct.__ip6_tnl_parm*) #1

declare dso_local %struct.ip6_tnl* @ip6gre_tunnel_locate(%struct.net*, %struct.__ip6_tnl_parm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
