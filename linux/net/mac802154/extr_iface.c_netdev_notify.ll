; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_netdev_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_netdev_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ieee802154_sub_if_data = type { i32 }

@NETDEV_CHANGENAME = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@mac802154_wpan_phy_privid = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @netdev_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ieee802154_sub_if_data*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %10)
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @NETDEV_CHANGENAME, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %16, i32* %4, align 4
  br label %55

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %22, %17
  %30 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %30, i32* %4, align 4
  br label %55

31:                                               ; preds = %22
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @mac802154_wpan_phy_privid, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %31
  %44 = load %struct.net_device*, %struct.net_device** %8, align 8
  %45 = call %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device* %44)
  store %struct.ieee802154_sub_if_data* %45, %struct.ieee802154_sub_if_data** %9, align 8
  %46 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %9, align 8
  %47 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IFNAMSIZ, align 4
  %53 = call i32 @memcpy(i32 %48, i32 %51, i32 %52)
  %54 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %43, %41, %29, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
