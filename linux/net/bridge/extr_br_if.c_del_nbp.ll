; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_del_nbp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_del_nbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i32, i32, %struct.net_device*, %struct.net_bridge* }
%struct.net_device = type { i32, i32 }
%struct.net_bridge = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@RTM_DELLINK = common dso_local global i32 0, align 4
@IFF_BRIDGE_PORT = common dso_local global i32 0, align 4
@KOBJ_REMOVE = common dso_local global i32 0, align 4
@destroy_nbp_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*)* @del_nbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_nbp(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %5 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %6 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %5, i32 0, i32 4
  %7 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  store %struct.net_bridge* %7, %struct.net_bridge** %3, align 8
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 3
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %12 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %15 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %14, i32 0, i32 3
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sysfs_remove_link(i32 %13, i32 %18)
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %21 = call i32 @nbp_delete_promisc(%struct.net_bridge_port* %20)
  %22 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %23 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %26 = call i32 @br_stp_disable_port(%struct.net_bridge_port* %25)
  %27 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %28 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = load i32, i32* @RTM_DELLINK, align 4
  %31 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %32 = call i32 @br_ifinfo_notify(i32 %30, i32* null, %struct.net_bridge_port* %31)
  %33 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %34 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %33, i32 0, i32 2
  %35 = call i32 @list_del_rcu(i32* %34)
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i64 @netdev_get_fwd_headroom(%struct.net_device* %36)
  %38 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %39 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %46 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %47 = call i32 @get_max_headroom(%struct.net_bridge* %46)
  %48 = call i32 @update_headroom(%struct.net_bridge* %45, i32 %47)
  br label %49

49:                                               ; preds = %44, %1
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 @netdev_reset_rx_headroom(%struct.net_device* %50)
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %53 = call i32 @nbp_vlan_flush(%struct.net_bridge_port* %52)
  %54 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %55 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %56 = call i32 @br_fdb_delete_by_port(%struct.net_bridge* %54, %struct.net_bridge_port* %55, i32 0, i32 1)
  %57 = call i32 (...) @switchdev_deferred_process()
  %58 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %59 = call i32 @nbp_backup_clear(%struct.net_bridge_port* %58)
  %60 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %61 = call i32 @nbp_update_port_count(%struct.net_bridge* %60)
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %64 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @netdev_upper_dev_unlink(%struct.net_device* %62, %struct.TYPE_2__* %65)
  %67 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %73)
  %75 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %76 = call i32 @br_multicast_del_port(%struct.net_bridge_port* %75)
  %77 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %78 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %77, i32 0, i32 1
  %79 = load i32, i32* @KOBJ_REMOVE, align 4
  %80 = call i32 @kobject_uevent(i32* %78, i32 %79)
  %81 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %82 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %81, i32 0, i32 1
  %83 = call i32 @kobject_del(i32* %82)
  %84 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %85 = call i32 @br_netpoll_disable(%struct.net_bridge_port* %84)
  %86 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %87 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %86, i32 0, i32 0
  %88 = load i32, i32* @destroy_nbp_rcu, align 4
  %89 = call i32 @call_rcu(i32* %87, i32 %88)
  ret void
}

declare dso_local i32 @sysfs_remove_link(i32, i32) #1

declare dso_local i32 @nbp_delete_promisc(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_stp_disable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @br_ifinfo_notify(i32, i32*, %struct.net_bridge_port*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i64 @netdev_get_fwd_headroom(%struct.net_device*) #1

declare dso_local i32 @update_headroom(%struct.net_bridge*, i32) #1

declare dso_local i32 @get_max_headroom(%struct.net_bridge*) #1

declare dso_local i32 @netdev_reset_rx_headroom(%struct.net_device*) #1

declare dso_local i32 @nbp_vlan_flush(%struct.net_bridge_port*) #1

declare dso_local i32 @br_fdb_delete_by_port(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32) #1

declare dso_local i32 @switchdev_deferred_process(...) #1

declare dso_local i32 @nbp_backup_clear(%struct.net_bridge_port*) #1

declare dso_local i32 @nbp_update_port_count(%struct.net_bridge*) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.net_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

declare dso_local i32 @br_multicast_del_port(%struct.net_bridge_port*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @br_netpoll_disable(%struct.net_bridge_port*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
