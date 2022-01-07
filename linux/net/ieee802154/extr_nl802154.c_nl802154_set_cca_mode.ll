; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_set_cca_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_set_cca_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.cfg802154_registered_device** }
%struct.cfg802154_registered_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wpan_phy_cca = type { i64, i64 }

@WPAN_PHY_FLAG_CCA_MODE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL802154_ATTR_CCA_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL802154_CCA_ENERGY = common dso_local global i64 0, align 8
@NL802154_CCA_ATTR_MAX = common dso_local global i64 0, align 8
@NL802154_CCA_ENERGY_CARRIER = common dso_local global i64 0, align 8
@NL802154_ATTR_CCA_OPT = common dso_local global i64 0, align 8
@NL802154_CCA_OPT_ATTR_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl802154_set_cca_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_set_cca_mode(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg802154_registered_device*, align 8
  %7 = alloca %struct.wpan_phy_cca, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 1
  %10 = load %struct.cfg802154_registered_device**, %struct.cfg802154_registered_device*** %9, align 8
  %11 = getelementptr inbounds %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %10, i64 0
  %12 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %11, align 8
  store %struct.cfg802154_registered_device* %12, %struct.cfg802154_registered_device** %6, align 8
  %13 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %14 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WPAN_PHY_FLAG_CCA_MODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %115

23:                                               ; preds = %2
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @NL802154_ATTR_CCA_MODE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %115

34:                                               ; preds = %23
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @NL802154_ATTR_CCA_MODE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @nla_get_u32(i32 %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %7, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %7, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NL802154_CCA_ENERGY, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %64, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %7, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NL802154_CCA_ATTR_MAX, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %64, label %53

53:                                               ; preds = %48
  %54 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %55 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %7, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @BIT(i64 %60)
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %53, %48, %34
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %115

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %7, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NL802154_CCA_ENERGY_CARRIER, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %112

72:                                               ; preds = %67
  %73 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @NL802154_ATTR_CCA_OPT, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %115

83:                                               ; preds = %72
  %84 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %85 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @NL802154_ATTR_CCA_OPT, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @nla_get_u32(i32 %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %7, i32 0, i32 1
  store i64 %91, i64* %92, align 8
  %93 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %7, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NL802154_CCA_OPT_ATTR_MAX, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %108, label %97

97:                                               ; preds = %83
  %98 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %99 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %7, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @BIT(i64 %104)
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %97, %83
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %115

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %67
  %113 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %114 = call i32 @rdev_set_cca_mode(%struct.cfg802154_registered_device* %113, %struct.wpan_phy_cca* %7)
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %108, %80, %64, %31, %20
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i8* @nla_get_u32(i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @rdev_set_cca_mode(%struct.cfg802154_registered_device*, %struct.wpan_phy_cca*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
