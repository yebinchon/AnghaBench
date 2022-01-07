; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_core.c_cfg802154_netdev_notifier_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_core.c_cfg802154_netdev_notifier_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32, %struct.wpan_dev* }
%struct.wpan_dev = type { i32, i32, %struct.net_device*, i32, i32 }
%struct.cfg802154_registered_device = type { i32, i32, i32, i32, i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @cfg802154_netdev_notifier_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg802154_netdev_notifier_call(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.wpan_dev*, align 8
  %10 = alloca %struct.cfg802154_registered_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %11)
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %8, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load %struct.wpan_dev*, %struct.wpan_dev** %14, align 8
  store %struct.wpan_dev* %15, %struct.wpan_dev** %9, align 8
  %16 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %17 = icmp ne %struct.wpan_dev* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %19, i32* %4, align 4
  br label %95

20:                                               ; preds = %3
  %21 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %22 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cfg802154_registered_device* @wpan_phy_to_rdev(i32 %23)
  store %struct.cfg802154_registered_device* %24, %struct.cfg802154_registered_device** %10, align 8
  %25 = load i64, i64* %6, align 8
  switch i64 %25, label %91 [
    i64 130, label %26
    i64 131, label %50
    i64 128, label %63
    i64 129, label %73
  ]

26:                                               ; preds = %20
  %27 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %10, align 8
  %33 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %37 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %39 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %38, i32 0, i32 0
  %40 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %10, align 8
  %41 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %40, i32 0, i32 3
  %42 = call i32 @list_add_rcu(i32* %39, i32* %41)
  %43 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %10, align 8
  %44 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.net_device*, %struct.net_device** %8, align 8
  %48 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %49 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %48, i32 0, i32 2
  store %struct.net_device* %47, %struct.net_device** %49, align 8
  br label %93

50:                                               ; preds = %20
  %51 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %10, align 8
  %52 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %53 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cfg802154_update_iface_num(%struct.cfg802154_registered_device* %51, i32 %54, i32 -1)
  %56 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %10, align 8
  %57 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %10, align 8
  %61 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %60, i32 0, i32 2
  %62 = call i32 @wake_up(i32* %61)
  br label %93

63:                                               ; preds = %20
  %64 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %10, align 8
  %65 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %66 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cfg802154_update_iface_num(%struct.cfg802154_registered_device* %64, i32 %67, i32 1)
  %69 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %10, align 8
  %70 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %93

73:                                               ; preds = %20
  %74 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %75 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %74, i32 0, i32 0
  %76 = call i32 @list_empty(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %80 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %79, i32 0, i32 0
  %81 = call i32 @list_del_rcu(i32* %80)
  %82 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %10, align 8
  %83 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78, %73
  %87 = call i32 (...) @synchronize_rcu()
  %88 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %89 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %88, i32 0, i32 0
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  br label %93

91:                                               ; preds = %20
  %92 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %92, i32* %4, align 4
  br label %95

93:                                               ; preds = %86, %63, %50, %26
  %94 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %91, %18
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.cfg802154_registered_device* @wpan_phy_to_rdev(i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @cfg802154_update_iface_num(%struct.cfg802154_registered_device*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
