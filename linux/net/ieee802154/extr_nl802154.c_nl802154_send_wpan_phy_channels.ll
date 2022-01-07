; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_send_wpan_phy_channels.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_send_wpan_phy_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg802154_registered_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NL802154_ATTR_CHANNELS_SUPPORTED = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IEEE802154_MAX_PAGE = common dso_local global i64 0, align 8
@NL802154_ATTR_SUPPORTED_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg802154_registered_device*, %struct.sk_buff*)* @nl802154_send_wpan_phy_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_send_wpan_phy_channels(%struct.cfg802154_registered_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg802154_registered_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i64, align 8
  store %struct.cfg802154_registered_device* %0, %struct.cfg802154_registered_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = load i32, i32* @NL802154_ATTR_CHANNELS_SUPPORTED, align 4
  %10 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %8, i32 %9)
  store %struct.nlattr* %10, %struct.nlattr** %6, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOBUFS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @IEEE802154_MAX_PAGE, align 8
  %20 = icmp ule i64 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load i32, i32* @NL802154_ATTR_SUPPORTED_CHANNEL, align 4
  %24 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %4, align 8
  %25 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @nla_put_u32(%struct.sk_buff* %22, i32 %23, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32, i32* @ENOBUFS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %17

41:                                               ; preds = %17
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %44 = call i32 @nla_nest_end(%struct.sk_buff* %42, %struct.nlattr* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %34, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
