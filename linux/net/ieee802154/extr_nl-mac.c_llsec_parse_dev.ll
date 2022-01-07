; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_parse_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_parse_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64* }
%struct.ieee802154_llsec_device = type { i32, i64, i32, i32, i8*, i8* }

@IEEE802154_ATTR_LLSEC_FRAME_COUNTER = common dso_local global i64 0, align 8
@IEEE802154_ATTR_HW_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ATTR_LLSEC_DEV_OVERRIDE = common dso_local global i64 0, align 8
@IEEE802154_ATTR_LLSEC_DEV_KEY_MODE = common dso_local global i64 0, align 8
@IEEE802154_ATTR_PAN_ID = common dso_local global i64 0, align 8
@IEEE802154_ATTR_SHORT_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_ADDR_UNDEF = common dso_local global i32 0, align 4
@__IEEE802154_LLSEC_DEVKEY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.ieee802154_llsec_device*)* @llsec_parse_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_parse_dev(%struct.genl_info* %0, %struct.ieee802154_llsec_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.ieee802154_llsec_device*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.ieee802154_llsec_device* %1, %struct.ieee802154_llsec_device** %5, align 8
  %6 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %7 = call i32 @memset(%struct.ieee802154_llsec_device* %6, i32 0, i32 40)
  %8 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @IEEE802154_ATTR_LLSEC_FRAME_COUNTER, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %2
  %16 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @IEEE802154_ATTR_HW_ADDR, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %15
  %24 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @IEEE802154_ATTR_LLSEC_DEV_OVERRIDE, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %23
  %32 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %33 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @IEEE802154_ATTR_LLSEC_DEV_KEY_MODE, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %31
  %40 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @IEEE802154_ATTR_PAN_ID, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @IEEE802154_ATTR_SHORT_ADDR, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = icmp ne i32 %49, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %39, %31, %23, %15, %2
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %146

64:                                               ; preds = %39
  %65 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %66 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @IEEE802154_ATTR_PAN_ID, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %64
  %73 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @IEEE802154_ATTR_PAN_ID, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @nla_get_shortaddr(i64 %78)
  %80 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %81 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %83 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @IEEE802154_ATTR_SHORT_ADDR, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @nla_get_shortaddr(i64 %87)
  %89 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %90 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  br label %96

91:                                               ; preds = %64
  %92 = load i32, i32* @IEEE802154_ADDR_UNDEF, align 4
  %93 = call i8* @cpu_to_le16(i32 %92)
  %94 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %95 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %91, %72
  %97 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %98 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @IEEE802154_ATTR_HW_ADDR, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @nla_get_hwaddr(i64 %102)
  %104 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %105 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %107 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* @IEEE802154_ATTR_LLSEC_FRAME_COUNTER, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @nla_get_u32(i64 %111)
  %113 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %114 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %116 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @IEEE802154_ATTR_LLSEC_DEV_OVERRIDE, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @nla_get_u8(i64 %120)
  %122 = icmp ne i64 %121, 0
  %123 = xor i1 %122, true
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %127 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %129 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* @IEEE802154_ATTR_LLSEC_DEV_KEY_MODE, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @nla_get_u8(i64 %133)
  %135 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %136 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %138 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @__IEEE802154_LLSEC_DEVKEY_MAX, align 8
  %141 = icmp sge i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %96
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %146

145:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %142, %61
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @memset(%struct.ieee802154_llsec_device*, i32, i32) #1

declare dso_local i8* @nla_get_shortaddr(i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @nla_get_hwaddr(i64) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i64 @nla_get_u8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
