; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_netdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_notifier_change_info = type { i32 }

@arp_tbl = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @arp_netdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_netdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netdev_notifier_change_info*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %9)
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load i64, i64* %5, align 8
  switch i64 %11, label %38 [
    i64 128, label %12
    i64 129, label %18
  ]

12:                                               ; preds = %3
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call i32 @neigh_changeaddr(i32* @arp_tbl, %struct.net_device* %13)
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call i32 @dev_net(%struct.net_device* %15)
  %17 = call i32 @rt_cache_flush(i32 %16)
  br label %39

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.netdev_notifier_change_info*
  store %struct.netdev_notifier_change_info* %20, %struct.netdev_notifier_change_info** %8, align 8
  %21 = load %struct.netdev_notifier_change_info*, %struct.netdev_notifier_change_info** %8, align 8
  %22 = getelementptr inbounds %struct.netdev_notifier_change_info, %struct.netdev_notifier_change_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_NOARP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call i32 @neigh_changeaddr(i32* @arp_tbl, %struct.net_device* %28)
  br label %30

30:                                               ; preds = %27, %18
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = call i32 @netif_carrier_ok(%struct.net_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = call i32 @neigh_carrier_down(i32* @arp_tbl, %struct.net_device* %35)
  br label %37

37:                                               ; preds = %34, %30
  br label %39

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38, %37, %12
  %40 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %40
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @neigh_changeaddr(i32*, %struct.net_device*) #1

declare dso_local i32 @rt_cache_flush(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @neigh_carrier_down(i32*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
