; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_ieee802154_setup_hw.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_ieee802154_setup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_sub_if_data = type { %struct.wpan_dev, %struct.ieee802154_local* }
%struct.wpan_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee802154_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE802154_HW_PROMISCUOUS = common dso_local global i32 0, align 4
@IEEE802154_HW_AFILT = common dso_local global i32 0, align 4
@IEEE802154_HW_LBT = common dso_local global i32 0, align 4
@IEEE802154_HW_CSMA_PARAMS = common dso_local global i32 0, align 4
@IEEE802154_HW_FRAME_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_sub_if_data*)* @ieee802154_setup_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_setup_hw(%struct.ieee802154_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee802154_sub_if_data*, align 8
  %4 = alloca %struct.ieee802154_local*, align 8
  %5 = alloca %struct.wpan_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee802154_sub_if_data* %0, %struct.ieee802154_sub_if_data** %3, align 8
  %7 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %3, align 8
  %8 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %7, i32 0, i32 1
  %9 = load %struct.ieee802154_local*, %struct.ieee802154_local** %8, align 8
  store %struct.ieee802154_local* %9, %struct.ieee802154_local** %4, align 8
  %10 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %10, i32 0, i32 0
  store %struct.wpan_dev* %11, %struct.wpan_dev** %5, align 8
  %12 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %13 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE802154_HW_PROMISCUOUS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %21 = load %struct.wpan_dev*, %struct.wpan_dev** %5, align 8
  %22 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @drv_set_promiscuous_mode(%struct.ieee802154_local* %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %133

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %32 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE802154_HW_AFILT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %30
  %39 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %40 = load %struct.wpan_dev*, %struct.wpan_dev** %5, align 8
  %41 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @drv_set_pan_id(%struct.ieee802154_local* %39, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %133

48:                                               ; preds = %38
  %49 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %50 = load %struct.wpan_dev*, %struct.wpan_dev** %5, align 8
  %51 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @drv_set_extended_addr(%struct.ieee802154_local* %49, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %133

58:                                               ; preds = %48
  %59 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %60 = load %struct.wpan_dev*, %struct.wpan_dev** %5, align 8
  %61 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @drv_set_short_addr(%struct.ieee802154_local* %59, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %133

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %30
  %70 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %71 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IEEE802154_HW_LBT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %69
  %78 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %79 = load %struct.wpan_dev*, %struct.wpan_dev** %5, align 8
  %80 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @drv_set_lbt_mode(%struct.ieee802154_local* %78, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %133

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %69
  %89 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %90 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IEEE802154_HW_CSMA_PARAMS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %88
  %97 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %98 = load %struct.wpan_dev*, %struct.wpan_dev** %5, align 8
  %99 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.wpan_dev*, %struct.wpan_dev** %5, align 8
  %102 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.wpan_dev*, %struct.wpan_dev** %5, align 8
  %105 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @drv_set_csma_params(%struct.ieee802154_local* %97, i32 %100, i32 %103, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %133

112:                                              ; preds = %96
  br label %113

113:                                              ; preds = %112, %88
  %114 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %115 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IEEE802154_HW_FRAME_RETRIES, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %113
  %122 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %123 = load %struct.wpan_dev*, %struct.wpan_dev** %5, align 8
  %124 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @drv_set_max_frame_retries(%struct.ieee802154_local* %122, i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %2, align 4
  br label %133

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %113
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %129, %110, %85, %66, %56, %46, %27
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @drv_set_promiscuous_mode(%struct.ieee802154_local*, i32) #1

declare dso_local i32 @drv_set_pan_id(%struct.ieee802154_local*, i32) #1

declare dso_local i32 @drv_set_extended_addr(%struct.ieee802154_local*, i32) #1

declare dso_local i32 @drv_set_short_addr(%struct.ieee802154_local*, i32) #1

declare dso_local i32 @drv_set_lbt_mode(%struct.ieee802154_local*, i32) #1

declare dso_local i32 @drv_set_csma_params(%struct.ieee802154_local*, i32, i32, i32) #1

declare dso_local i32 @drv_set_max_frame_retries(%struct.ieee802154_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
