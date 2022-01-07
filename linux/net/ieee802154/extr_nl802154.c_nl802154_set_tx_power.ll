; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.cfg802154_registered_device** }
%struct.cfg802154_registered_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64* }

@WPAN_PHY_FLAG_TXPOWER = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL802154_ATTR_TX_POWER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl802154_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_set_tx_power(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg802154_registered_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 1
  %11 = load %struct.cfg802154_registered_device**, %struct.cfg802154_registered_device*** %10, align 8
  %12 = getelementptr inbounds %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %11, i64 0
  %13 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %12, align 8
  store %struct.cfg802154_registered_device* %13, %struct.cfg802154_registered_device** %6, align 8
  %14 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %15 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @WPAN_PHY_FLAG_TXPOWER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %74

24:                                               ; preds = %2
  %25 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @NL802154_ATTR_TX_POWER, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %74

35:                                               ; preds = %24
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @NL802154_ATTR_TX_POWER, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @nla_get_s32(i32 %41)
  store i64 %42, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %68, %35
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %46 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %54 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %52, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @rdev_set_tx_power(%struct.cfg802154_registered_device* %64, i64 %65)
  store i32 %66, i32* %3, align 4
  br label %74

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %43

71:                                               ; preds = %43
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %63, %32, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @nla_get_s32(i32) #1

declare dso_local i32 @rdev_set_tx_power(%struct.cfg802154_registered_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
