; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_add_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.genl_info = type { i32 }
%struct.ieee802154_mlme_ops = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key*)* }
%struct.ieee802154_llsec_key_id = type { i32 }
%struct.ieee802154_llsec_key = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.genl_info*)* @llsec_add_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_add_key(%struct.net_device* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.ieee802154_mlme_ops*, align 8
  %7 = alloca %struct.ieee802154_llsec_key, align 4
  %8 = alloca %struct.ieee802154_llsec_key_id, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ieee802154_mlme_ops* @ieee802154_mlme_ops(%struct.net_device* %9)
  store %struct.ieee802154_mlme_ops* %10, %struct.ieee802154_mlme_ops** %6, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = call i64 @ieee802154_llsec_parse_key(%struct.genl_info* %11, %struct.ieee802154_llsec_key* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = call i64 @ieee802154_llsec_parse_key_id(%struct.genl_info* %15, %struct.ieee802154_llsec_key_id* %8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %14
  %22 = load %struct.ieee802154_mlme_ops*, %struct.ieee802154_mlme_ops** %6, align 8
  %23 = getelementptr inbounds %struct.ieee802154_mlme_ops, %struct.ieee802154_mlme_ops* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.net_device*, %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key*)*, i32 (%struct.net_device*, %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key*)** %25, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 %26(%struct.net_device* %27, %struct.ieee802154_llsec_key_id* %8, %struct.ieee802154_llsec_key* %7)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.ieee802154_mlme_ops* @ieee802154_mlme_ops(%struct.net_device*) #1

declare dso_local i64 @ieee802154_llsec_parse_key(%struct.genl_info*, %struct.ieee802154_llsec_key*) #1

declare dso_local i64 @ieee802154_llsec_parse_key_id(%struct.genl_info*, %struct.ieee802154_llsec_key_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
