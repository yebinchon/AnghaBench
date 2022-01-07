; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_mac_cmd.c_mac802154_get_mac_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_mac_cmd.c_mac802154_get_mac_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee802154_mac_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee802154_sub_if_data = type { %struct.wpan_dev }
%struct.wpan_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ieee802154_mac_params*)* @mac802154_get_mac_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac802154_get_mac_params(%struct.net_device* %0, %struct.ieee802154_mac_params* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ieee802154_mac_params*, align 8
  %5 = alloca %struct.ieee802154_sub_if_data*, align 8
  %6 = alloca %struct.wpan_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ieee802154_mac_params* %1, %struct.ieee802154_mac_params** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device* %7)
  store %struct.ieee802154_sub_if_data* %8, %struct.ieee802154_sub_if_data** %5, align 8
  %9 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %5, align 8
  %10 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %9, i32 0, i32 0
  store %struct.wpan_dev* %10, %struct.wpan_dev** %6, align 8
  %11 = call i32 (...) @ASSERT_RTNL()
  %12 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %13 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %4, align 8
  %18 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %20 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %19, i32 0, i32 5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %4, align 8
  %25 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %27 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %4, align 8
  %32 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %34 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %4, align 8
  %37 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %39 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %4, align 8
  %42 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %44 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %4, align 8
  %47 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %49 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %4, align 8
  %52 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %54 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %4, align 8
  %57 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
