; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_netdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_notifier_info_ext = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFF_RUNNING = common dso_local global i32 0, align 4
@IFF_LOWER_UP = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @nh_netdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nh_netdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netdev_notifier_info_ext*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %9)
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load i64, i64* %5, align 8
  switch i64 %11, label %39 [
    i64 129, label %12
    i64 128, label %12
    i64 131, label %15
    i64 130, label %27
  ]

12:                                               ; preds = %3, %3
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call i32 @nexthop_flush_dev(%struct.net_device* %13)
  br label %39

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call i32 @dev_get_flags(%struct.net_device* %16)
  %18 = load i32, i32* @IFF_RUNNING, align 4
  %19 = load i32, i32* @IFF_LOWER_UP, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = call i32 @nexthop_flush_dev(%struct.net_device* %24)
  br label %26

26:                                               ; preds = %23, %15
  br label %39

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to %struct.netdev_notifier_info_ext*
  store %struct.netdev_notifier_info_ext* %29, %struct.netdev_notifier_info_ext** %8, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = load %struct.netdev_notifier_info_ext*, %struct.netdev_notifier_info_ext** %8, align 8
  %32 = getelementptr inbounds %struct.netdev_notifier_info_ext, %struct.netdev_notifier_info_ext* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nexthop_sync_mtu(%struct.net_device* %30, i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = call i32 @dev_net(%struct.net_device* %36)
  %38 = call i32 @rt_cache_flush(i32 %37)
  br label %39

39:                                               ; preds = %3, %27, %26, %12
  %40 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %40
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @nexthop_flush_dev(%struct.net_device*) #1

declare dso_local i32 @dev_get_flags(%struct.net_device*) #1

declare dso_local i32 @nexthop_sync_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @rt_cache_flush(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
