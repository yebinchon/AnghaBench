; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_netlink_get_primary.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_netlink_get_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_hard_iface = type { i64 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.batadv_priv = type { i32 }

@BATADV_ATTR_MESH_IFINDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BATADV_IF_ACTIVE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*, %struct.batadv_hard_iface**)* @batadv_mcast_netlink_get_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_mcast_netlink_get_primary(%struct.netlink_callback* %0, %struct.batadv_hard_iface** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.batadv_hard_iface**, align 8
  %6 = alloca %struct.batadv_hard_iface*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.batadv_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.netlink_callback* %0, %struct.netlink_callback** %4, align 8
  store %struct.batadv_hard_iface** %1, %struct.batadv_hard_iface*** %5, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %6, align 8
  %12 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %13 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %7, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %19 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BATADV_ATTR_MESH_IFINDEX, align 4
  %22 = call i32 @batadv_netlink_get_ifindex(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %82

28:                                               ; preds = %2
  %29 = load %struct.net*, %struct.net** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.net_device* @dev_get_by_index(%struct.net* %29, i32 %30)
  store %struct.net_device* %31, %struct.net_device** %8, align 8
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = call i32 @batadv_softif_is_valid(%struct.net_device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %58

41:                                               ; preds = %34
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %42)
  store %struct.batadv_priv* %43, %struct.batadv_priv** %9, align 8
  %44 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %45 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %44)
  store %struct.batadv_hard_iface* %45, %struct.batadv_hard_iface** %6, align 8
  %46 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %47 = icmp ne %struct.batadv_hard_iface* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %50 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BATADV_IF_ACTIVE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %41
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %58

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %54, %38
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = icmp ne %struct.net_device* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.net_device*, %struct.net_device** %8, align 8
  %63 = call i32 @dev_put(%struct.net_device* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load %struct.batadv_hard_iface**, %struct.batadv_hard_iface*** %5, align 8
  %69 = icmp ne %struct.batadv_hard_iface** %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %72 = load %struct.batadv_hard_iface**, %struct.batadv_hard_iface*** %5, align 8
  store %struct.batadv_hard_iface* %71, %struct.batadv_hard_iface** %72, align 8
  br label %80

73:                                               ; preds = %67, %64
  %74 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %75 = icmp ne %struct.batadv_hard_iface* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %78 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %77)
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %70
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %25
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @batadv_netlink_get_ifindex(i32, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @batadv_softif_is_valid(%struct.net_device*) #1

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
