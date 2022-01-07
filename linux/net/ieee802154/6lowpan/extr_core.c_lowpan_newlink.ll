; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_core.c_lowpan_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_core.c_lowpan_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i64, i32, %struct.TYPE_3__*, i32, i64, i32 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.TYPE_4__ = type { %struct.net_device* }

@.str = private unnamed_addr constant [17 x i8] c"adding new link\0A\00", align 1
@IFLA_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_IEEE802154 = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LEN = common dso_local global i32 0, align 4
@LOWPAN_IPHC_MAX_HEADER_LEN = common dso_local global i64 0, align 8
@LOWPAN_LLTYPE_IEEE802154 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @lowpan_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = call i32 (...) @ASSERT_RTNL()
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %17 = load i64, i64* @IFLA_LINK, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %103

24:                                               ; preds = %5
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = call i32 @dev_net(%struct.net_device* %25)
  %27 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %28 = load i64, i64* @IFLA_LINK, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @nla_get_u32(%struct.nlattr* %30)
  %32 = call %struct.net_device* @dev_get_by_index(i32 %26, i32 %31)
  store %struct.net_device* %32, %struct.net_device** %12, align 8
  %33 = load %struct.net_device*, %struct.net_device** %12, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %103

38:                                               ; preds = %24
  %39 = load %struct.net_device*, %struct.net_device** %12, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ARPHRD_IEEE802154, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.net_device*, %struct.net_device** %12, align 8
  %46 = call i32 @dev_put(%struct.net_device* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %103

49:                                               ; preds = %38
  %50 = load %struct.net_device*, %struct.net_device** %12, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.net_device*, %struct.net_device** %53, align 8
  %55 = icmp ne %struct.net_device* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.net_device*, %struct.net_device** %12, align 8
  %58 = call i32 @dev_put(%struct.net_device* %57)
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %103

61:                                               ; preds = %49
  %62 = load %struct.net_device*, %struct.net_device** %12, align 8
  %63 = load %struct.net_device*, %struct.net_device** %8, align 8
  %64 = call %struct.TYPE_4__* @lowpan_802154_dev(%struct.net_device* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store %struct.net_device* %62, %struct.net_device** %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %8, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.net_device*, %struct.net_device** %12, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IEEE802154_ADDR_LEN, align 4
  %73 = call i32 @memcpy(i32 %68, i32 %71, i32 %72)
  %74 = load i64, i64* @LOWPAN_IPHC_MAX_HEADER_LEN, align 8
  %75 = load %struct.net_device*, %struct.net_device** %12, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  %81 = load %struct.net_device*, %struct.net_device** %12, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.net_device*, %struct.net_device** %8, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.net_device*, %struct.net_device** %8, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  store i32 4, i32* %87, align 8
  %88 = load %struct.net_device*, %struct.net_device** %8, align 8
  %89 = load i32, i32* @LOWPAN_LLTYPE_IEEE802154, align 4
  %90 = call i32 @lowpan_register_netdevice(%struct.net_device* %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %61
  %94 = load %struct.net_device*, %struct.net_device** %12, align 8
  %95 = call i32 @dev_put(%struct.net_device* %94)
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %6, align 4
  br label %103

97:                                               ; preds = %61
  %98 = load %struct.net_device*, %struct.net_device** %8, align 8
  %99 = load %struct.net_device*, %struct.net_device** %12, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store %struct.net_device* %98, %struct.net_device** %102, align 8
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %97, %93, %56, %44, %35, %21
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @lowpan_802154_dev(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @lowpan_register_netdevice(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
