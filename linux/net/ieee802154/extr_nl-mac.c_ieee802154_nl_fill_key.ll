; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_nl_fill_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_nl_fill_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee802154_llsec_key_entry = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.net_device = type { i32, i32 }

@nl802154_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_LIST_KEY = common dso_local global i32 0, align 4
@IEEE802154_ATTR_DEV_NAME = common dso_local global i32 0, align 4
@IEEE802154_ATTR_DEV_INDEX = common dso_local global i32 0, align 4
@IEEE802154_ATTR_LLSEC_KEY_USAGE_FRAME_TYPES = common dso_local global i32 0, align 4
@IEEE802154_FC_TYPE_MAC_CMD = common dso_local global i32 0, align 4
@IEEE802154_ATTR_LLSEC_KEY_USAGE_COMMANDS = common dso_local global i32 0, align 4
@IEEE802154_ATTR_LLSEC_KEY_BYTES = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_KEY_SIZE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.ieee802154_llsec_key_entry*, %struct.net_device*)* @ieee802154_nl_fill_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_nl_fill_key(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.ieee802154_llsec_key_entry* %3, %struct.net_device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee802154_llsec_key_entry*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [8 x i32], align 16
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ieee802154_llsec_key_entry* %3, %struct.ieee802154_llsec_key_entry** %10, align 8
  store %struct.net_device* %4, %struct.net_device** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @NLM_F_MULTI, align 4
  %17 = load i32, i32* @IEEE802154_LLSEC_LIST_KEY, align 4
  %18 = call i8* @genlmsg_put(%struct.sk_buff* %14, i32 0, i32 %15, i32* @nl802154_family, i32 %16, i32 %17)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %101

22:                                               ; preds = %5
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load i32, i32* @IEEE802154_ATTR_DEV_NAME, align 4
  %25 = load %struct.net_device*, %struct.net_device** %11, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @nla_put_string(%struct.sk_buff* %23, i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load i32, i32* @IEEE802154_ATTR_DEV_INDEX, align 4
  %33 = load %struct.net_device*, %struct.net_device** %11, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nla_put_u32(%struct.sk_buff* %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load %struct.ieee802154_llsec_key_entry*, %struct.ieee802154_llsec_key_entry** %10, align 8
  %41 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, %struct.ieee802154_llsec_key_entry* %40, i32 0, i32 1
  %42 = call i64 @ieee802154_llsec_fill_key_id(%struct.sk_buff* %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %38
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load i32, i32* @IEEE802154_ATTR_LLSEC_KEY_USAGE_FRAME_TYPES, align 4
  %47 = load %struct.ieee802154_llsec_key_entry*, %struct.ieee802154_llsec_key_entry** %10, align 8
  %48 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, %struct.ieee802154_llsec_key_entry* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @nla_put_u8(%struct.sk_buff* %45, i32 %46, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44, %38, %30, %22
  br label %97

55:                                               ; preds = %44
  %56 = load %struct.ieee802154_llsec_key_entry*, %struct.ieee802154_llsec_key_entry** %10, align 8
  %57 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, %struct.ieee802154_llsec_key_entry* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IEEE802154_FC_TYPE_MAC_CMD, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %55
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %67 = call i32 @memset(i32* %66, i32 0, i32 32)
  %68 = load %struct.ieee802154_llsec_key_entry*, %struct.ieee802154_llsec_key_entry** %10, align 8
  %69 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, %struct.ieee802154_llsec_key_entry* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 7
  store i32 %72, i32* %73, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = load i32, i32* @IEEE802154_ATTR_LLSEC_KEY_USAGE_COMMANDS, align 4
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %77 = call i64 @nla_put(%struct.sk_buff* %74, i32 %75, i32 32, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %97

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %55
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = load i32, i32* @IEEE802154_ATTR_LLSEC_KEY_BYTES, align 4
  %84 = load i32, i32* @IEEE802154_LLSEC_KEY_SIZE, align 4
  %85 = load %struct.ieee802154_llsec_key_entry*, %struct.ieee802154_llsec_key_entry** %10, align 8
  %86 = getelementptr inbounds %struct.ieee802154_llsec_key_entry, %struct.ieee802154_llsec_key_entry* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @nla_put(%struct.sk_buff* %82, i32 %83, i32 %84, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %97

93:                                               ; preds = %81
  %94 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @genlmsg_end(%struct.sk_buff* %94, i8* %95)
  store i32 0, i32* %6, align 4
  br label %104

97:                                               ; preds = %92, %79, %54
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @genlmsg_cancel(%struct.sk_buff* %98, i8* %99)
  br label %101

101:                                              ; preds = %97, %21
  %102 = load i32, i32* @EMSGSIZE, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %101, %93
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @ieee802154_llsec_fill_key_id(%struct.sk_buff*, i32*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
