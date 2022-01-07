; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_wifi_flags_evaluate.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_wifi_flags_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@BATADV_HARDIF_WIFI_WEXT_DIRECT = common dso_local global i32 0, align 4
@BATADV_HARDIF_WIFI_CFG80211_DIRECT = common dso_local global i32 0, align 4
@BATADV_HARDIF_WIFI_WEXT_INDIRECT = common dso_local global i32 0, align 4
@BATADV_HARDIF_WIFI_CFG80211_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @batadv_wifi_flags_evaluate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_wifi_flags_evaluate(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call i64 @batadv_is_wext_netdev(%struct.net_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @BATADV_HARDIF_WIFI_WEXT_DIRECT, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i64 @batadv_is_cfg80211_netdev(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @BATADV_HARDIF_WIFI_CFG80211_DIRECT, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call %struct.net_device* @batadv_get_real_netdevice(%struct.net_device* %22)
  store %struct.net_device* %23, %struct.net_device** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = icmp eq %struct.net_device* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %50

33:                                               ; preds = %28
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i64 @batadv_is_wext_netdev(%struct.net_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @BATADV_HARDIF_WIFI_WEXT_INDIRECT, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i64 @batadv_is_cfg80211_netdev(%struct.net_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @BATADV_HARDIF_WIFI_CFG80211_INDIRECT, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %32
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 @dev_put(%struct.net_device* %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %26
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @batadv_is_wext_netdev(%struct.net_device*) #1

declare dso_local i64 @batadv_is_cfg80211_netdev(%struct.net_device*) #1

declare dso_local %struct.net_device* @batadv_get_real_netdevice(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
