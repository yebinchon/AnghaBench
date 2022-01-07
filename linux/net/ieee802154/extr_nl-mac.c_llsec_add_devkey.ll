; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_add_devkey.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_add_devkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.genl_info = type { i32* }
%struct.ieee802154_mlme_ops = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, %struct.ieee802154_llsec_device_key*)* }
%struct.ieee802154_llsec_device_key = type { i32, i32 }

@IEEE802154_ATTR_LLSEC_FRAME_COUNTER = common dso_local global i64 0, align 8
@IEEE802154_ATTR_HW_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.genl_info*)* @llsec_add_devkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_add_devkey(%struct.net_device* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.ieee802154_mlme_ops*, align 8
  %7 = alloca %struct.ieee802154_llsec_device_key, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ieee802154_mlme_ops* @ieee802154_mlme_ops(%struct.net_device* %9)
  store %struct.ieee802154_mlme_ops* %10, %struct.ieee802154_mlme_ops** %6, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @IEEE802154_ATTR_LLSEC_FRAME_COUNTER, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @IEEE802154_ATTR_HW_ADDR, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = getelementptr inbounds %struct.ieee802154_llsec_device_key, %struct.ieee802154_llsec_device_key* %7, i32 0, i32 1
  %29 = call i64 @ieee802154_llsec_parse_key_id(%struct.genl_info* %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %18, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %58

34:                                               ; preds = %26
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @IEEE802154_ATTR_HW_ADDR, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nla_get_hwaddr(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @IEEE802154_ATTR_LLSEC_FRAME_COUNTER, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nla_get_u32(i32 %47)
  %49 = getelementptr inbounds %struct.ieee802154_llsec_device_key, %struct.ieee802154_llsec_device_key* %7, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.ieee802154_mlme_ops*, %struct.ieee802154_mlme_ops** %6, align 8
  %51 = getelementptr inbounds %struct.ieee802154_mlme_ops, %struct.ieee802154_mlme_ops* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.net_device*, i32, %struct.ieee802154_llsec_device_key*)*, i32 (%struct.net_device*, i32, %struct.ieee802154_llsec_device_key*)** %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 %54(%struct.net_device* %55, i32 %56, %struct.ieee802154_llsec_device_key* %7)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %34, %31
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ieee802154_mlme_ops* @ieee802154_mlme_ops(%struct.net_device*) #1

declare dso_local i64 @ieee802154_llsec_parse_key_id(%struct.genl_info*, i32*) #1

declare dso_local i32 @nla_get_hwaddr(i32) #1

declare dso_local i32 @nla_get_u32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
