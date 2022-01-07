; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tdls_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tdls_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }

@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_TDLS_ACTION = common dso_local global i64 0, align 8
@NL80211_ATTR_STATUS_CODE = common dso_local global i64 0, align 8
@NL80211_ATTR_TDLS_DIALOG_TOKEN = common dso_local global i64 0, align 8
@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_TDLS_INITIATOR = common dso_local global i64 0, align 8
@NL80211_ATTR_TDLS_PEER_CAPABILITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_tdls_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_tdls_mgmt(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 1
  %16 = load %struct.net_device**, %struct.net_device*** %15, align 8
  %17 = getelementptr inbounds %struct.net_device*, %struct.net_device** %16, i64 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = bitcast %struct.net_device* %18 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %6, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 1
  %22 = load %struct.net_device**, %struct.net_device*** %21, align 8
  %23 = getelementptr inbounds %struct.net_device*, %struct.net_device** %22, i64 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %7, align 8
  store i32 0, i32* %10, align 4
  %25 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %26 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32, %2
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %161

42:                                               ; preds = %32
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @NL80211_ATTR_TDLS_ACTION, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %42
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @NL80211_ATTR_STATUS_CODE, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %50
  %59 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @NL80211_ATTR_TDLS_DIALOG_TOKEN, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %58
  %67 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %68 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @NL80211_ATTR_IE, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %76 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %74, %66, %58, %50, %42
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %161

85:                                               ; preds = %74
  %86 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %87 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i32* @nla_data(i64 %91)
  store i32* %92, i32** %12, align 8
  %93 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %94 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @NL80211_ATTR_TDLS_ACTION, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @nla_get_u8(i64 %98)
  store i32 %99, i32* %8, align 4
  %100 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %101 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @NL80211_ATTR_STATUS_CODE, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @nla_get_u16(i64 %105)
  store i32 %106, i32* %11, align 4
  %107 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %108 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @NL80211_ATTR_TDLS_DIALOG_TOKEN, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @nla_get_u8(i64 %112)
  store i32 %113, i32* %9, align 4
  %114 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %115 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* @NL80211_ATTR_TDLS_INITIATOR, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @nla_get_flag(i64 %119)
  store i32 %120, i32* %13, align 4
  %121 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %122 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* @NL80211_ATTR_TDLS_PEER_CAPABILITY, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %85
  %129 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %130 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* @NL80211_ATTR_TDLS_PEER_CAPABILITY, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @nla_get_u32(i64 %134)
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %128, %85
  %137 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %138 = bitcast %struct.cfg80211_registered_device* %137 to %struct.net_device*
  %139 = load %struct.net_device*, %struct.net_device** %7, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %147 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* @NL80211_ATTR_IE, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = call i32* @nla_data(i64 %151)
  %153 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %154 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* @NL80211_ATTR_IE, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @nla_len(i64 %158)
  %160 = call i32 @rdev_tdls_mgmt(%struct.net_device* %138, %struct.net_device* %139, i32* %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32* %152, i32 %159)
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %136, %82, %39
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32* @nla_data(i64) #1

declare dso_local i32 @nla_get_u8(i64) #1

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i32 @nla_get_flag(i64) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @rdev_tdls_mgmt(%struct.net_device*, %struct.net_device*, i32*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @nla_len(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
