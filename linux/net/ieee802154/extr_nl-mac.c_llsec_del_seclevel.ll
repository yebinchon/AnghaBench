; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_del_seclevel.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_del_seclevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.genl_info = type { i32 }
%struct.ieee802154_mlme_ops = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ieee802154_llsec_seclevel*)* }
%struct.ieee802154_llsec_seclevel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.genl_info*)* @llsec_del_seclevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_del_seclevel(%struct.net_device* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.ieee802154_mlme_ops*, align 8
  %7 = alloca %struct.ieee802154_llsec_seclevel, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ieee802154_mlme_ops* @ieee802154_mlme_ops(%struct.net_device* %8)
  store %struct.ieee802154_mlme_ops* %9, %struct.ieee802154_mlme_ops** %6, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = call i64 @llsec_parse_seclevel(%struct.genl_info* %10, %struct.ieee802154_llsec_seclevel* %7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.ieee802154_mlme_ops*, %struct.ieee802154_mlme_ops** %6, align 8
  %18 = getelementptr inbounds %struct.ieee802154_mlme_ops, %struct.ieee802154_mlme_ops* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.net_device*, %struct.ieee802154_llsec_seclevel*)*, i32 (%struct.net_device*, %struct.ieee802154_llsec_seclevel*)** %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 %21(%struct.net_device* %22, %struct.ieee802154_llsec_seclevel* %7)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.ieee802154_mlme_ops* @ieee802154_mlme_ops(%struct.net_device*) #1

declare dso_local i64 @llsec_parse_seclevel(%struct.genl_info*, %struct.ieee802154_llsec_seclevel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
