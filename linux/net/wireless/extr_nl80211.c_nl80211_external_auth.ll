; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_external_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_external_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.cfg80211_external_auth_params = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_SSID = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_BSSID = common dso_local global i64 0, align 8
@NL80211_ATTR_STATUS_CODE = common dso_local global i64 0, align 8
@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_ATTR_PMKID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_external_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_external_auth(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cfg80211_external_auth_params, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 1
  %11 = load %struct.net_device**, %struct.net_device*** %10, align 8
  %12 = getelementptr inbounds %struct.net_device*, %struct.net_device** %11, i64 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = bitcast %struct.net_device* %13 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %14, %struct.cfg80211_registered_device** %6, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %7, align 8
  %20 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %21 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %166

29:                                               ; preds = %2
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %29
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %166

56:                                               ; preds = %45, %37, %29
  %57 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %58 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @NL80211_ATTR_BSSID, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %166

67:                                               ; preds = %56
  %68 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %69 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @NL80211_ATTR_STATUS_CODE, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %166

78:                                               ; preds = %67
  %79 = call i32 @memset(%struct.cfg80211_external_auth_params* %8, i32 0, i32 32)
  %80 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %81 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %125

87:                                               ; preds = %78
  %88 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %89 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @nla_len(i64 %93)
  %95 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %87
  %102 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %87
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %166

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %115 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* @NL80211_ATTR_SSID, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @nla_data(i64 %119)
  %121 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @memcpy(i32 %113, i32 %120, i64 %123)
  br label %125

125:                                              ; preds = %110, %78
  %126 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %129 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* @NL80211_ATTR_BSSID, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @nla_data(i64 %133)
  %135 = load i64, i64* @ETH_ALEN, align 8
  %136 = call i32 @memcpy(i32 %127, i32 %134, i64 %135)
  %137 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %138 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* @NL80211_ATTR_STATUS_CODE, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @nla_get_u16(i64 %142)
  %144 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 1
  store i32 %143, i32* %144, align 4
  %145 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %146 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* @NL80211_ATTR_PMKID, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %125
  %153 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %154 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* @NL80211_ATTR_PMKID, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @nla_data(i64 %158)
  %160 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 0
  store i32 %159, i32* %160, align 8
  br label %161

161:                                              ; preds = %152, %125
  %162 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %163 = bitcast %struct.cfg80211_registered_device* %162 to %struct.net_device*
  %164 = load %struct.net_device*, %struct.net_device** %7, align 8
  %165 = call i32 @rdev_external_auth(%struct.net_device* %163, %struct.net_device* %164, %struct.cfg80211_external_auth_params* %8)
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %161, %107, %75, %64, %53, %26
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @memset(%struct.cfg80211_external_auth_params*, i32, i32) #1

declare dso_local i64 @nla_len(i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i32 @rdev_external_auth(%struct.net_device*, %struct.net_device*, %struct.cfg80211_external_auth_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
