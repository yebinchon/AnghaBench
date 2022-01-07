; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_setup_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_setup_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lowpan_btle_dev = type { i32, i32, %struct.TYPE_4__*, %struct.net_device* }
%struct.net_device = type { i32, i32, i32*, i64, i32 }

@IFACE_NAME_TEMPLATE = common dso_local global i32 0, align 4
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@netdev_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NET_ADDR_PERM = common dso_local global i32 0, align 4
@netdev_ops = common dso_local global i32 0, align 4
@bt_type = common dso_local global i32 0, align 4
@devices_lock = common dso_local global i32 0, align 4
@bt_6lowpan_devices = common dso_local global i32 0, align 4
@LOWPAN_LLTYPE_BTLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"register_netdev failed %d\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"ifindex %d peer bdaddr %pMR type %d my addr %pMR type %d\00", align 1
@__LINK_STATE_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.lowpan_btle_dev**)* @setup_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_netdev(%struct.l2cap_chan* %0, %struct.lowpan_btle_dev** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca %struct.lowpan_btle_dev**, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store %struct.lowpan_btle_dev** %1, %struct.lowpan_btle_dev*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @LOWPAN_PRIV_SIZE(i32 24)
  %9 = load i32, i32* @IFACE_NAME_TEMPLATE, align 4
  %10 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %11 = load i32, i32* @netdev_setup, align 4
  %12 = call %struct.net_device* @alloc_netdev(i32 %8, i32 %9, i32 %10, i32 %11)
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %111

18:                                               ; preds = %2
  %19 = load i32, i32* @NET_ADDR_PERM, align 4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 1
  %28 = call i32 @baswap(i8* %25, i32* %27)
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 2
  store i32* @netdev_ops, i32** %30, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %33 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %32, i32 0, i32 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @SET_NETDEV_DEV(%struct.net_device* %31, i32* %39)
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %41, i32* @bt_type)
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call %struct.lowpan_btle_dev* @lowpan_btle_dev(%struct.net_device* %43)
  %45 = load %struct.lowpan_btle_dev**, %struct.lowpan_btle_dev*** %5, align 8
  store %struct.lowpan_btle_dev* %44, %struct.lowpan_btle_dev** %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = load %struct.lowpan_btle_dev**, %struct.lowpan_btle_dev*** %5, align 8
  %48 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %47, align 8
  %49 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %48, i32 0, i32 3
  store %struct.net_device* %46, %struct.net_device** %49, align 8
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %51 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %50, i32 0, i32 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.lowpan_btle_dev**, %struct.lowpan_btle_dev*** %5, align 8
  %58 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %57, align 8
  %59 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %58, i32 0, i32 2
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %59, align 8
  %60 = load %struct.lowpan_btle_dev**, %struct.lowpan_btle_dev*** %5, align 8
  %61 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %60, align 8
  %62 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %61, i32 0, i32 1
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = call i32 @spin_lock(i32* @devices_lock)
  %65 = load %struct.lowpan_btle_dev**, %struct.lowpan_btle_dev*** %5, align 8
  %66 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %65, align 8
  %67 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %66, i32 0, i32 0
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.lowpan_btle_dev**, %struct.lowpan_btle_dev*** %5, align 8
  %70 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %69, align 8
  %71 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %70, i32 0, i32 0
  %72 = call i32 @list_add_rcu(i32* %71, i32* @bt_6lowpan_devices)
  %73 = call i32 @spin_unlock(i32* @devices_lock)
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = load i32, i32* @LOWPAN_LLTYPE_BTLE, align 4
  %76 = call i32 @lowpan_register_netdev(%struct.net_device* %74, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %18
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @BT_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = call i32 @spin_lock(i32* @devices_lock)
  %83 = load %struct.lowpan_btle_dev**, %struct.lowpan_btle_dev*** %5, align 8
  %84 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %83, align 8
  %85 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %84, i32 0, i32 0
  %86 = call i32 @list_del_rcu(i32* %85)
  %87 = call i32 @spin_unlock(i32* @devices_lock)
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = call i32 @free_netdev(%struct.net_device* %88)
  br label %109

90:                                               ; preds = %18
  %91 = load %struct.net_device*, %struct.net_device** %6, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %95 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %94, i32 0, i32 3
  %96 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %97 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %100 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %99, i32 0, i32 1
  %101 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %102 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @BT_DBG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32* %95, i32 %98, i32* %100, i32 %103)
  %105 = load i32, i32* @__LINK_STATE_PRESENT, align 4
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = call i32 @set_bit(i32 %105, i32* %107)
  store i32 0, i32* %3, align 4
  br label %111

109:                                              ; preds = %79
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %90, %15
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i32, i32, i32) #1

declare dso_local i32 @LOWPAN_PRIV_SIZE(i32) #1

declare dso_local i32 @baswap(i8*, i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

declare dso_local %struct.lowpan_btle_dev* @lowpan_btle_dev(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @lowpan_register_netdev(%struct.net_device*, i32) #1

declare dso_local i32 @BT_INFO(i8*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
