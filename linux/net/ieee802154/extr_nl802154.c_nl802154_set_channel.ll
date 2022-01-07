; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.cfg802154_registered_device** }
%struct.cfg802154_registered_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@NL802154_ATTR_PAGE = common dso_local global i64 0, align 8
@NL802154_ATTR_CHANNEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_MAX_PAGE = common dso_local global i64 0, align 8
@IEEE802154_MAX_CHANNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl802154_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_set_channel(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg802154_registered_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 1
  %11 = load %struct.cfg802154_registered_device**, %struct.cfg802154_registered_device*** %10, align 8
  %12 = getelementptr inbounds %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %11, i64 0
  %13 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %12, align 8
  store %struct.cfg802154_registered_device* %13, %struct.cfg802154_registered_device** %6, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @NL802154_ATTR_PAGE, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @NL802154_ATTR_CHANNEL, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %75

32:                                               ; preds = %21
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @NL802154_ATTR_PAGE, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @nla_get_u8(i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @NL802154_ATTR_CHANNEL, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @nla_get_u8(i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @IEEE802154_MAX_PAGE, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %67, label %50

50:                                               ; preds = %32
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @IEEE802154_MAX_CHANNEL, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %56 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @BIT(i64 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %54, %50, %32
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %54
  %71 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @rdev_set_channel(%struct.cfg802154_registered_device* %71, i64 %72, i64 %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %67, %29
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @nla_get_u8(i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @rdev_set_channel(%struct.cfg802154_registered_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
