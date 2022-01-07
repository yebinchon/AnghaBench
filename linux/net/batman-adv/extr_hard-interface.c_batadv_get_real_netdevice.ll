; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_get_real_netdevice.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_get_real_netdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.net_device*)* @batadv_get_real_netdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @batadv_get_real_netdevice(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %4, align 8
  store %struct.net_device* null, %struct.net_device** %5, align 8
  %9 = call i32 (...) @ASSERT_RTNL()
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @dev_get_iflink(%struct.net_device* %17)
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @dev_hold(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  store %struct.net_device* %23, %struct.net_device** %2, align 8
  br label %56

24:                                               ; preds = %13
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device* %25)
  store %struct.batadv_hard_iface* %26, %struct.batadv_hard_iface** %4, align 8
  %27 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %28 = icmp ne %struct.batadv_hard_iface* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %31 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24
  br label %48

35:                                               ; preds = %29
  %36 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %37 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.net* @dev_net(i32 %38)
  store %struct.net* %39, %struct.net** %7, align 8
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @dev_get_iflink(%struct.net_device* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = load %struct.net*, %struct.net** %7, align 8
  %44 = call %struct.net* @batadv_getlink_net(%struct.net_device* %42, %struct.net* %43)
  store %struct.net* %44, %struct.net** %6, align 8
  %45 = load %struct.net*, %struct.net** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call %struct.net_device* @dev_get_by_index(%struct.net* %45, i32 %46)
  store %struct.net_device* %47, %struct.net_device** %5, align 8
  br label %48

48:                                               ; preds = %35, %34
  %49 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %50 = icmp ne %struct.batadv_hard_iface* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %53 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %55, %struct.net_device** %2, align 8
  br label %56

56:                                               ; preds = %54, %20, %12
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %57
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @dev_get_iflink(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.net* @batadv_getlink_net(%struct.net_device*, %struct.net*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
