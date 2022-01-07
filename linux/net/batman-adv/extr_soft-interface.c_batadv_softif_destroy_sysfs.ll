; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_softif_destroy_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_softif_destroy_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_softif_vlan = type { i32 }

@BATADV_NO_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_softif_destroy_sysfs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_softif_vlan*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.batadv_priv* %6, %struct.batadv_priv** %3, align 8
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %9 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %10 = call %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv* %8, i32 %9)
  store %struct.batadv_softif_vlan* %10, %struct.batadv_softif_vlan** %4, align 8
  %11 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %12 = icmp ne %struct.batadv_softif_vlan* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %15 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %16 = call i32 @batadv_softif_destroy_vlan(%struct.batadv_priv* %14, %struct.batadv_softif_vlan* %15)
  %17 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  %18 = call i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan* %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @batadv_sysfs_del_meshif(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @unregister_netdevice(%struct.net_device* %22)
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_softif_destroy_vlan(%struct.batadv_priv*, %struct.batadv_softif_vlan*) #1

declare dso_local i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan*) #1

declare dso_local i32 @batadv_sysfs_del_meshif(%struct.net_device*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
