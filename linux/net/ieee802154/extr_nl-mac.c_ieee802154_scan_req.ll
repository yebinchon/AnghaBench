; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_scan_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_scan_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i64, i32, i64, i64)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE802154_ATTR_SCAN_TYPE = common dso_local global i64 0, align 8
@IEEE802154_ATTR_CHANNELS = common dso_local global i64 0, align 8
@IEEE802154_ATTR_DURATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IEEE802154_ATTR_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802154_scan_req(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @IEEE802154_ATTR_SCAN_TYPE, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @IEEE802154_ATTR_CHANNELS, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @IEEE802154_ATTR_DURATION, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29, %21, %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %108

40:                                               ; preds = %29
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = call %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info* %41)
  store %struct.net_device* %42, %struct.net_device** %6, align 8
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %108

48:                                               ; preds = %40
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = call %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.net_device*, i64, i32, i64, i64)*, i32 (%struct.net_device*, i64, i32, i64, i64)** %51, align 8
  %53 = icmp ne i32 (%struct.net_device*, i64, i32, i64, i64)* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %104

55:                                               ; preds = %48
  %56 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %57 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @IEEE802154_ATTR_SCAN_TYPE, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @nla_get_u8(i64 %61)
  store i64 %62, i64* %8, align 8
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @IEEE802154_ATTR_CHANNELS, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @nla_get_u32(i64 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @IEEE802154_ATTR_DURATION, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @nla_get_u8(i64 %75)
  store i64 %76, i64* %10, align 8
  %77 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %78 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @IEEE802154_ATTR_PAGE, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %55
  %85 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %86 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @IEEE802154_ATTR_PAGE, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @nla_get_u8(i64 %90)
  store i64 %91, i64* %11, align 8
  br label %93

92:                                               ; preds = %55
  store i64 0, i64* %11, align 8
  br label %93

93:                                               ; preds = %92, %84
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = call %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device* %94)
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (%struct.net_device*, i64, i32, i64, i64)*, i32 (%struct.net_device*, i64, i32, i64, i64)** %96, align 8
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i32 %97(%struct.net_device* %98, i64 %99, i32 %100, i64 %101, i64 %102)
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %93, %54
  %105 = load %struct.net_device*, %struct.net_device** %6, align 8
  %106 = call i32 @dev_put(%struct.net_device* %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %45, %37
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info*) #1

declare dso_local %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device*) #1

declare dso_local i64 @nla_get_u8(i64) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
