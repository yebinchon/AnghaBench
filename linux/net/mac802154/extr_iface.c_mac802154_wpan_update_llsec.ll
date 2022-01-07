; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_mac802154_wpan_update_llsec.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_mac802154_wpan_update_llsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee802154_sub_if_data = type { %struct.wpan_dev }
%struct.wpan_dev = type { i32, i32 }
%struct.ieee802154_mlme_ops = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ieee802154_llsec_params*, i32)* }
%struct.ieee802154_llsec_params = type { i32, i32 }

@IEEE802154_LLSEC_PARAM_PAN_ID = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_HWADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac802154_wpan_update_llsec(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ieee802154_sub_if_data*, align 8
  %4 = alloca %struct.ieee802154_mlme_ops*, align 8
  %5 = alloca %struct.wpan_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee802154_llsec_params, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device* %9)
  store %struct.ieee802154_sub_if_data* %10, %struct.ieee802154_sub_if_data** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.ieee802154_mlme_ops* @ieee802154_mlme_ops(%struct.net_device* %11)
  store %struct.ieee802154_mlme_ops* %12, %struct.ieee802154_mlme_ops** %4, align 8
  %13 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %13, i32 0, i32 0
  store %struct.wpan_dev* %14, %struct.wpan_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.ieee802154_mlme_ops*, %struct.ieee802154_mlme_ops** %4, align 8
  %16 = getelementptr inbounds %struct.ieee802154_mlme_ops, %struct.ieee802154_mlme_ops* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %20 = load %struct.wpan_dev*, %struct.wpan_dev** %5, align 8
  %21 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @IEEE802154_LLSEC_PARAM_PAN_ID, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load %struct.wpan_dev*, %struct.wpan_dev** %5, align 8
  %28 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @IEEE802154_LLSEC_PARAM_HWADDR, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ieee802154_mlme_ops*, %struct.ieee802154_mlme_ops** %4, align 8
  %35 = getelementptr inbounds %struct.ieee802154_mlme_ops, %struct.ieee802154_mlme_ops* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.net_device*, %struct.ieee802154_llsec_params*, i32)*, i32 (%struct.net_device*, %struct.ieee802154_llsec_params*, i32)** %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 %38(%struct.net_device* %39, %struct.ieee802154_llsec_params* %7, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %19, %1
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local %struct.ieee802154_mlme_ops* @ieee802154_mlme_ops(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
