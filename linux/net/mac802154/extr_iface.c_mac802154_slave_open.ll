; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_mac802154_slave_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_mac802154_slave_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee802154_sub_if_data = type { i32, %struct.ieee802154_local* }
%struct.ieee802154_local = type { i32 }

@SDATA_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mac802154_slave_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac802154_slave_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ieee802154_sub_if_data*, align 8
  %5 = alloca %struct.ieee802154_local*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device* %7)
  store %struct.ieee802154_sub_if_data* %8, %struct.ieee802154_sub_if_data** %4, align 8
  %9 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %10 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %9, i32 0, i32 1
  %11 = load %struct.ieee802154_local*, %struct.ieee802154_local** %10, align 8
  store %struct.ieee802154_local* %11, %struct.ieee802154_local** %5, align 8
  %12 = call i32 (...) @ASSERT_RTNL()
  %13 = load i32, i32* @SDATA_STATE_RUNNING, align 4
  %14 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %15 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %14, i32 0, i32 0
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.ieee802154_local*, %struct.ieee802154_local** %5, align 8
  %18 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %1
  %22 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %23 = call i32 @ieee802154_setup_hw(%struct.ieee802154_sub_if_data* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %41

27:                                               ; preds = %21
  %28 = load %struct.ieee802154_local*, %struct.ieee802154_local** %5, align 8
  %29 = call i32 @drv_start(%struct.ieee802154_local* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %41

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.ieee802154_local*, %struct.ieee802154_local** %5, align 8
  %36 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @netif_start_queue(%struct.net_device* %39)
  store i32 0, i32* %2, align 4
  br label %47

41:                                               ; preds = %32, %26
  %42 = load i32, i32* @SDATA_STATE_RUNNING, align 4
  %43 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %4, align 8
  %44 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %43, i32 0, i32 0
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %34
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee802154_setup_hw(%struct.ieee802154_sub_if_data*) #1

declare dso_local i32 @drv_start(%struct.ieee802154_local*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
