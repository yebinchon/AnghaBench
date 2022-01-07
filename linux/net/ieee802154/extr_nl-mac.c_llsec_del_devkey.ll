; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_del_devkey.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_del_devkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.genl_info = type { i32* }
%struct.ieee802154_mlme_ops = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, %struct.ieee802154_llsec_device_key*)* }
%struct.ieee802154_llsec_device_key = type { i32 }

@IEEE802154_ATTR_HW_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.genl_info*)* @llsec_del_devkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_del_devkey(%struct.net_device* %0, %struct.genl_info* %1) #0 {
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
  %14 = load i64, i64* @IEEE802154_ATTR_HW_ADDR, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.ieee802154_llsec_device_key, %struct.ieee802154_llsec_device_key* %7, i32 0, i32 0
  %21 = call i64 @ieee802154_llsec_parse_key_id(%struct.genl_info* %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %18
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @IEEE802154_ATTR_HW_ADDR, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nla_get_hwaddr(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ieee802154_mlme_ops*, %struct.ieee802154_mlme_ops** %6, align 8
  %35 = getelementptr inbounds %struct.ieee802154_mlme_ops, %struct.ieee802154_mlme_ops* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.net_device*, i32, %struct.ieee802154_llsec_device_key*)*, i32 (%struct.net_device*, i32, %struct.ieee802154_llsec_device_key*)** %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 %38(%struct.net_device* %39, i32 %40, %struct.ieee802154_llsec_device_key* %7)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %26, %23
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.ieee802154_mlme_ops* @ieee802154_mlme_ops(%struct.net_device*) #1

declare dso_local i64 @ieee802154_llsec_parse_key_id(%struct.genl_info*, i32*) #1

declare dso_local i32 @nla_get_hwaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
