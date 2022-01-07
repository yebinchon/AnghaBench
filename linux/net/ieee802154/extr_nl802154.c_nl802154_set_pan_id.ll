; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_set_pan_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_set_pan_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { %struct.wpan_dev* }
%struct.wpan_dev = type { i64, %struct.net_device* }
%struct.cfg802154_registered_device = type { %struct.wpan_dev* }

@EBUSY = common dso_local global i32 0, align 4
@NL802154_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@NL802154_ATTR_PAN_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_PAN_ID_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl802154_set_pan_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_set_pan_id(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg802154_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wpan_dev*, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 1
  %12 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = bitcast %struct.net_device* %14 to %struct.cfg802154_registered_device*
  store %struct.cfg802154_registered_device* %15, %struct.cfg802154_registered_device** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 1
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.wpan_dev*, %struct.wpan_dev** %22, align 8
  store %struct.wpan_dev* %23, %struct.wpan_dev** %8, align 8
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = call i64 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %83

30:                                               ; preds = %2
  %31 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %32 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %31, i32 0, i32 1
  %33 = load %struct.net_device*, %struct.net_device** %32, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %37 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %36, i32 0, i32 1
  %38 = load %struct.net_device*, %struct.net_device** %37, align 8
  %39 = call i64 @netif_running(%struct.net_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %83

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %47 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL802154_IFTYPE_MONITOR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @NL802154_ATTR_PAN_ID, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51, %45
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %83

62:                                               ; preds = %51
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @NL802154_ATTR_PAN_ID, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @nla_get_le16(i32 %68)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* @IEEE802154_PAN_ID_BROADCAST, align 4
  %72 = call i64 @cpu_to_le16(i32 %71)
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %83

77:                                               ; preds = %62
  %78 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %79 = bitcast %struct.cfg802154_registered_device* %78 to %struct.net_device*
  %80 = load %struct.wpan_dev*, %struct.wpan_dev** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @rdev_set_pan_id(%struct.net_device* %79, %struct.wpan_dev* %80, i64 %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %74, %59, %41, %27
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @nla_get_le16(i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @rdev_set_pan_id(%struct.net_device*, %struct.wpan_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
