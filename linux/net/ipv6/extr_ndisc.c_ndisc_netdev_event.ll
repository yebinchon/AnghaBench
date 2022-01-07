; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_netdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_notifier_change_info = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@nd_tbl = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ndisc_netdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndisc_netdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netdev_notifier_change_info*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.inet6_dev*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %11)
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call %struct.net* @dev_net(%struct.net_device* %13)
  store %struct.net* %14, %struct.net** %9, align 8
  %15 = load i64, i64* %5, align 8
  switch i64 %15, label %75 [
    i64 131, label %16
    i64 128, label %21
    i64 132, label %47
    i64 130, label %67
    i64 129, label %72
  ]

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call i32 @neigh_changeaddr(i32* @nd_tbl, %struct.net_device* %17)
  %19 = load %struct.net*, %struct.net** %9, align 8
  %20 = call i32 @fib6_run_gc(i32 0, %struct.net* %19, i32 0)
  br label %21

21:                                               ; preds = %3, %16
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %22)
  store %struct.inet6_dev* %23, %struct.inet6_dev** %10, align 8
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %25 = icmp ne %struct.inet6_dev* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %76

27:                                               ; preds = %21
  %28 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %29 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = load %struct.net*, %struct.net** %9, align 8
  %35 = getelementptr inbounds %struct.net, %struct.net* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %27
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = call i32 @ndisc_send_unsol_na(%struct.net_device* %42)
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %46 = call i32 @in6_dev_put(%struct.inet6_dev* %45)
  br label %76

47:                                               ; preds = %3
  %48 = load i8*, i8** %6, align 8
  %49 = bitcast i8* %48 to %struct.netdev_notifier_change_info*
  store %struct.netdev_notifier_change_info* %49, %struct.netdev_notifier_change_info** %8, align 8
  %50 = load %struct.netdev_notifier_change_info*, %struct.netdev_notifier_change_info** %8, align 8
  %51 = getelementptr inbounds %struct.netdev_notifier_change_info, %struct.netdev_notifier_change_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFF_NOARP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = call i32 @neigh_changeaddr(i32* @nd_tbl, %struct.net_device* %57)
  br label %59

59:                                               ; preds = %56, %47
  %60 = load %struct.net_device*, %struct.net_device** %7, align 8
  %61 = call i32 @netif_carrier_ok(%struct.net_device* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = call i32 @neigh_carrier_down(i32* @nd_tbl, %struct.net_device* %64)
  br label %66

66:                                               ; preds = %63, %59
  br label %76

67:                                               ; preds = %3
  %68 = load %struct.net_device*, %struct.net_device** %7, align 8
  %69 = call i32 @neigh_ifdown(i32* @nd_tbl, %struct.net_device* %68)
  %70 = load %struct.net*, %struct.net** %9, align 8
  %71 = call i32 @fib6_run_gc(i32 0, %struct.net* %70, i32 0)
  br label %76

72:                                               ; preds = %3
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = call i32 @ndisc_send_unsol_na(%struct.net_device* %73)
  br label %76

75:                                               ; preds = %3
  br label %76

76:                                               ; preds = %75, %72, %67, %66, %44, %26
  %77 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %77
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @neigh_changeaddr(i32*, %struct.net_device*) #1

declare dso_local i32 @fib6_run_gc(i32, %struct.net*, i32) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @ndisc_send_unsol_na(%struct.net_device*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @neigh_carrier_down(i32*, %struct.net_device*) #1

declare dso_local i32 @neigh_ifdown(i32*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
