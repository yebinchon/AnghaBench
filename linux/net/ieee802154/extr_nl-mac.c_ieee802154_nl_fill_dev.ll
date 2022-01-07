; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_nl_fill_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_nl_fill_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee802154_llsec_device = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32, i32 }

@nl802154_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_LIST_DEV = common dso_local global i32 0, align 4
@IEEE802154_ATTR_DEV_NAME = common dso_local global i32 0, align 4
@IEEE802154_ATTR_DEV_INDEX = common dso_local global i32 0, align 4
@IEEE802154_ATTR_PAN_ID = common dso_local global i32 0, align 4
@IEEE802154_ATTR_SHORT_ADDR = common dso_local global i32 0, align 4
@IEEE802154_ATTR_HW_ADDR = common dso_local global i32 0, align 4
@IEEE802154_ATTR_PAD = common dso_local global i32 0, align 4
@IEEE802154_ATTR_LLSEC_FRAME_COUNTER = common dso_local global i32 0, align 4
@IEEE802154_ATTR_LLSEC_DEV_OVERRIDE = common dso_local global i32 0, align 4
@IEEE802154_ATTR_LLSEC_DEV_KEY_MODE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.ieee802154_llsec_device*, %struct.net_device*)* @ieee802154_nl_fill_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_nl_fill_dev(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.ieee802154_llsec_device* %3, %struct.net_device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee802154_llsec_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ieee802154_llsec_device* %3, %struct.ieee802154_llsec_device** %10, align 8
  store %struct.net_device* %4, %struct.net_device** %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @NLM_F_MULTI, align 4
  %16 = load i32, i32* @IEEE802154_LLSEC_LIST_DEV, align 4
  %17 = call i8* @genlmsg_put(%struct.sk_buff* %13, i32 0, i32 %14, i32* @nl802154_family, i32 %15, i32 %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %95

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load i32, i32* @IEEE802154_ATTR_DEV_NAME, align 4
  %24 = load %struct.net_device*, %struct.net_device** %11, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @nla_put_string(%struct.sk_buff* %22, i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %86, label %29

29:                                               ; preds = %21
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load i32, i32* @IEEE802154_ATTR_DEV_INDEX, align 4
  %32 = load %struct.net_device*, %struct.net_device** %11, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nla_put_u32(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %86, label %37

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i32, i32* @IEEE802154_ATTR_PAN_ID, align 4
  %40 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %10, align 8
  %41 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @nla_put_shortaddr(%struct.sk_buff* %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %86, label %45

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load i32, i32* @IEEE802154_ATTR_SHORT_ADDR, align 4
  %48 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %10, align 8
  %49 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_shortaddr(%struct.sk_buff* %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %86, label %53

53:                                               ; preds = %45
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load i32, i32* @IEEE802154_ATTR_HW_ADDR, align 4
  %56 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %10, align 8
  %57 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IEEE802154_ATTR_PAD, align 4
  %60 = call i64 @nla_put_hwaddr(%struct.sk_buff* %54, i32 %55, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load i32, i32* @IEEE802154_ATTR_LLSEC_FRAME_COUNTER, align 4
  %65 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %10, align 8
  %66 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @nla_put_u32(%struct.sk_buff* %63, i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %62
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = load i32, i32* @IEEE802154_ATTR_LLSEC_DEV_OVERRIDE, align 4
  %73 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %10, align 8
  %74 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @nla_put_u8(%struct.sk_buff* %71, i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = load i32, i32* @IEEE802154_ATTR_LLSEC_DEV_KEY_MODE, align 4
  %81 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %10, align 8
  %82 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @nla_put_u8(%struct.sk_buff* %79, i32 %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78, %70, %62, %53, %45, %37, %29, %21
  br label %91

87:                                               ; preds = %78
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @genlmsg_end(%struct.sk_buff* %88, i8* %89)
  store i32 0, i32* %6, align 4
  br label %98

91:                                               ; preds = %86
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @genlmsg_cancel(%struct.sk_buff* %92, i8* %93)
  br label %95

95:                                               ; preds = %91, %20
  %96 = load i32, i32* @EMSGSIZE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %87
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_shortaddr(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_hwaddr(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
