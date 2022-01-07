; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_pmk.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_pmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.wireless_dev* }
%struct.cfg80211_pmk_conf = type { i64, i8*, i8*, i8* }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_1X = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_PMK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_PMK_LEN = common dso_local global i64 0, align 8
@WLAN_PMK_LEN_SUITE_B_192 = common dso_local global i64 0, align 8
@NL80211_ATTR_PMKR0_NAME = common dso_local global i64 0, align 8
@WLAN_PMK_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_pmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_pmk(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.cfg80211_pmk_conf, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 1
  %14 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %14, i64 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = bitcast %struct.net_device* %16 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %6, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 1
  %20 = load %struct.net_device**, %struct.net_device*** %19, align 8
  %21 = getelementptr inbounds %struct.net_device*, %struct.net_device** %20, i64 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %24, align 8
  store %struct.wireless_dev* %25, %struct.wireless_dev** %8, align 8
  %26 = bitcast %struct.cfg80211_pmk_conf* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 32, i1 false)
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %28 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %173

41:                                               ; preds = %32, %2
  %42 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %43 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %42, i32 0, i32 0
  %44 = load i32, i32* @NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_1X, align 4
  %45 = call i32 @wiphy_ext_feature_isset(i32* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %173

50:                                               ; preds = %41
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @NL80211_ATTR_PMK, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58, %50
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %173

69:                                               ; preds = %58
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %71 = call i32 @wdev_lock(%struct.wireless_dev* %70)
  %72 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %73 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = icmp ne %struct.TYPE_4__* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @ENOTCONN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %169

79:                                               ; preds = %69
  %80 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %81 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @nla_data(i64 %85)
  %87 = getelementptr inbounds %struct.cfg80211_pmk_conf, %struct.cfg80211_pmk_conf* %9, i32 0, i32 3
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds %struct.cfg80211_pmk_conf, %struct.cfg80211_pmk_conf* %9, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %91 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = call i64 @memcmp(i8* %89, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %79
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  br label %169

102:                                              ; preds = %79
  %103 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %104 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @NL80211_ATTR_PMK, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @nla_data(i64 %108)
  %110 = getelementptr inbounds %struct.cfg80211_pmk_conf, %struct.cfg80211_pmk_conf* %9, i32 0, i32 2
  store i8* %109, i8** %110, align 8
  %111 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %112 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @NL80211_ATTR_PMK, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @nla_len(i64 %116)
  %118 = ptrtoint i8* %117 to i64
  %119 = getelementptr inbounds %struct.cfg80211_pmk_conf, %struct.cfg80211_pmk_conf* %9, i32 0, i32 0
  store i64 %118, i64* %119, align 8
  %120 = getelementptr inbounds %struct.cfg80211_pmk_conf, %struct.cfg80211_pmk_conf* %9, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @WLAN_PMK_LEN, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %102
  %125 = getelementptr inbounds %struct.cfg80211_pmk_conf, %struct.cfg80211_pmk_conf* %9, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @WLAN_PMK_LEN_SUITE_B_192, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %10, align 4
  br label %169

132:                                              ; preds = %124, %102
  %133 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %134 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* @NL80211_ATTR_PMKR0_NAME, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %132
  %141 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %142 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* @NL80211_ATTR_PMKR0_NAME, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i8* @nla_len(i64 %146)
  %148 = ptrtoint i8* %147 to i32
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @WLAN_PMK_NAME_LEN, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %10, align 4
  br label %169

155:                                              ; preds = %140
  %156 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %157 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %156, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = load i64, i64* @NL80211_ATTR_PMKR0_NAME, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = call i8* @nla_data(i64 %161)
  %163 = getelementptr inbounds %struct.cfg80211_pmk_conf, %struct.cfg80211_pmk_conf* %9, i32 0, i32 1
  store i8* %162, i8** %163, align 8
  br label %164

164:                                              ; preds = %155, %132
  %165 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %166 = bitcast %struct.cfg80211_registered_device* %165 to %struct.net_device*
  %167 = load %struct.net_device*, %struct.net_device** %7, align 8
  %168 = call i32 @rdev_set_pmk(%struct.net_device* %166, %struct.net_device* %167, %struct.cfg80211_pmk_conf* %9)
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %164, %152, %129, %99, %76
  %170 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %171 = call i32 @wdev_unlock(%struct.wireless_dev* %170)
  %172 = load i32, i32* %10, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %169, %66, %47, %38
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wiphy_ext_feature_isset(i32*, i32) #2

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #2

declare dso_local i8* @nla_data(i64) #2

declare dso_local i64 @memcmp(i8*, i32, i32) #2

declare dso_local i8* @nla_len(i64) #2

declare dso_local i32 @rdev_set_pmk(%struct.net_device*, %struct.net_device*, %struct.cfg80211_pmk_conf*) #2

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
