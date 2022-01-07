; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_nl_fill_devkey.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_nl_fill_devkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee802154_llsec_device_key = type { i32, i32 }
%struct.net_device = type { i32, i32 }

@nl802154_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_LIST_DEVKEY = common dso_local global i32 0, align 4
@IEEE802154_ATTR_DEV_NAME = common dso_local global i32 0, align 4
@IEEE802154_ATTR_DEV_INDEX = common dso_local global i32 0, align 4
@IEEE802154_ATTR_HW_ADDR = common dso_local global i32 0, align 4
@IEEE802154_ATTR_PAD = common dso_local global i32 0, align 4
@IEEE802154_ATTR_LLSEC_FRAME_COUNTER = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.ieee802154_llsec_device_key*, %struct.net_device*)* @ieee802154_nl_fill_devkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_nl_fill_devkey(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.ieee802154_llsec_device_key* %4, %struct.net_device* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee802154_llsec_device_key*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.ieee802154_llsec_device_key* %4, %struct.ieee802154_llsec_device_key** %12, align 8
  store %struct.net_device* %5, %struct.net_device** %13, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @NLM_F_MULTI, align 4
  %18 = load i32, i32* @IEEE802154_LLSEC_LIST_DEVKEY, align 4
  %19 = call i8* @genlmsg_put(%struct.sk_buff* %15, i32 0, i32 %16, i32* @nl802154_family, i32 %17, i32 %18)
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %69

23:                                               ; preds = %6
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = load i32, i32* @IEEE802154_ATTR_DEV_NAME, align 4
  %26 = load %struct.net_device*, %struct.net_device** %13, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @nla_put_string(%struct.sk_buff* %24, i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %60, label %31

31:                                               ; preds = %23
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load i32, i32* @IEEE802154_ATTR_DEV_INDEX, align 4
  %34 = load %struct.net_device*, %struct.net_device** %13, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load i32, i32* @IEEE802154_ATTR_HW_ADDR, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @IEEE802154_ATTR_PAD, align 4
  %44 = call i64 @nla_put_hwaddr(%struct.sk_buff* %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load i32, i32* @IEEE802154_ATTR_LLSEC_FRAME_COUNTER, align 4
  %49 = load %struct.ieee802154_llsec_device_key*, %struct.ieee802154_llsec_device_key** %12, align 8
  %50 = getelementptr inbounds %struct.ieee802154_llsec_device_key, %struct.ieee802154_llsec_device_key* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = load %struct.ieee802154_llsec_device_key*, %struct.ieee802154_llsec_device_key** %12, align 8
  %57 = getelementptr inbounds %struct.ieee802154_llsec_device_key, %struct.ieee802154_llsec_device_key* %56, i32 0, i32 0
  %58 = call i64 @ieee802154_llsec_fill_key_id(%struct.sk_buff* %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %46, %39, %31, %23
  br label %65

61:                                               ; preds = %54
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @genlmsg_end(%struct.sk_buff* %62, i8* %63)
  store i32 0, i32* %7, align 4
  br label %72

65:                                               ; preds = %60
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @genlmsg_cancel(%struct.sk_buff* %66, i8* %67)
  br label %69

69:                                               ; preds = %65, %22
  %70 = load i32, i32* @EMSGSIZE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %61
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_hwaddr(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @ieee802154_llsec_fill_key_id(%struct.sk_buff*, i32*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
