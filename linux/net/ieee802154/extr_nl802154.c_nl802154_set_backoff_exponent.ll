; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_set_backoff_exponent.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_set_backoff_exponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__, %struct.wpan_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.wpan_dev = type { i32 }
%struct.cfg802154_registered_device = type { %struct.TYPE_4__, %struct.wpan_dev* }

@EBUSY = common dso_local global i32 0, align 4
@NL802154_ATTR_MIN_BE = common dso_local global i64 0, align 8
@NL802154_ATTR_MAX_BE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl802154_set_backoff_exponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_set_backoff_exponent(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg802154_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wpan_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 1
  %13 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %14 = getelementptr inbounds %struct.net_device*, %struct.net_device** %13, i64 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = bitcast %struct.net_device* %15 to %struct.cfg802154_registered_device*
  store %struct.cfg802154_registered_device* %16, %struct.cfg802154_registered_device** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 1
  %19 = load %struct.net_device**, %struct.net_device*** %18, align 8
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %19, i64 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %7, align 8
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load %struct.wpan_dev*, %struct.wpan_dev** %23, align 8
  store %struct.wpan_dev* %24, %struct.wpan_dev** %8, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = call i64 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %110

31:                                               ; preds = %2
  %32 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %33 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @NL802154_ATTR_MIN_BE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @NL802154_ATTR_MAX_BE, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39, %31
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %110

50:                                               ; preds = %39
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @NL802154_ATTR_MIN_BE, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @nla_get_u8(i32 %56)
  store i64 %57, i64* %9, align 8
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @NL802154_ATTR_MAX_BE, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @nla_get_u8(i32 %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %67 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %65, %70
  br i1 %71, label %100, label %72

72:                                               ; preds = %50
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %75 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %73, %78
  br i1 %79, label %100, label %80

80:                                               ; preds = %72
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %83 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %81, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %91 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %89, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %88
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %10, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96, %88, %80, %72, %50
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %110

103:                                              ; preds = %96
  %104 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %105 = bitcast %struct.cfg802154_registered_device* %104 to %struct.net_device*
  %106 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @rdev_set_backoff_exponent(%struct.net_device* %105, %struct.wpan_dev* %106, i64 %107, i64 %108)
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %103, %100, %47, %28
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @nla_get_u8(i32) #1

declare dso_local i32 @rdev_set_backoff_exponent(%struct.net_device*, %struct.wpan_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
