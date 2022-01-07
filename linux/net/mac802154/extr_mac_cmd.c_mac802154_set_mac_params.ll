; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_mac_cmd.c_mac802154_set_mac_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_mac_cmd.c_mac802154_set_mac_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee802154_mac_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee802154_sub_if_data = type { %struct.wpan_dev, %struct.ieee802154_local* }
%struct.wpan_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ieee802154_local = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@WPAN_PHY_FLAG_TXPOWER = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_CCA_MODE = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_CCA_ED_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee802154_mac_params*)* @mac802154_set_mac_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac802154_set_mac_params(%struct.net_device* %0, %struct.ieee802154_mac_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee802154_mac_params*, align 8
  %6 = alloca %struct.ieee802154_sub_if_data*, align 8
  %7 = alloca %struct.ieee802154_local*, align 8
  %8 = alloca %struct.wpan_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee802154_mac_params* %1, %struct.ieee802154_mac_params** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device* %10)
  store %struct.ieee802154_sub_if_data* %11, %struct.ieee802154_sub_if_data** %6, align 8
  %12 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %6, align 8
  %13 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %12, i32 0, i32 1
  %14 = load %struct.ieee802154_local*, %struct.ieee802154_local** %13, align 8
  store %struct.ieee802154_local* %14, %struct.ieee802154_local** %7, align 8
  %15 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %6, align 8
  %16 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %15, i32 0, i32 0
  store %struct.wpan_dev* %16, %struct.wpan_dev** %8, align 8
  %17 = call i32 (...) @ASSERT_RTNL()
  %18 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %5, align 8
  %19 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %22 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %21, i32 0, i32 5
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %20, i32* %24, align 4
  %25 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %5, align 8
  %26 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %29 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %28, i32 0, i32 5
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %5, align 8
  %33 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %36 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %35, i32 0, i32 5
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %5, align 8
  %40 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %43 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %5, align 8
  %45 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %48 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %5, align 8
  %50 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %53 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %5, align 8
  %55 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %58 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %5, align 8
  %60 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %63 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %65 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @WPAN_PHY_FLAG_TXPOWER, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %2
  %74 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %75 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %5, align 8
  %76 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @drv_set_tx_power(%struct.ieee802154_local* %74, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %126

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %2
  %85 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %86 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @WPAN_PHY_FLAG_CCA_MODE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %84
  %95 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %96 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %5, align 8
  %97 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %96, i32 0, i32 1
  %98 = call i32 @drv_set_cca_mode(%struct.ieee802154_local* %95, i32* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %126

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %84
  %105 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %106 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @WPAN_PHY_FLAG_CCA_ED_LEVEL, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %104
  %115 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %116 = load %struct.ieee802154_mac_params*, %struct.ieee802154_mac_params** %5, align 8
  %117 = getelementptr inbounds %struct.ieee802154_mac_params, %struct.ieee802154_mac_params* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @drv_set_cca_ed_level(%struct.ieee802154_local* %115, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %126

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %104
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %122, %101, %81
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @drv_set_tx_power(%struct.ieee802154_local*, i32) #1

declare dso_local i32 @drv_set_cca_mode(%struct.ieee802154_local*, i32*) #1

declare dso_local i32 @drv_set_cca_ed_level(%struct.ieee802154_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
