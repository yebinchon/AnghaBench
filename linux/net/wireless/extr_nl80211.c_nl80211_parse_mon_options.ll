; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_mon_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_mon_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.genl_info = type { i64* }
%struct.vif_params = type { i32, i32*, i8* }

@NL80211_ATTR_MNTR_FLAGS = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MONITOR_FLAG_ACTIVE = common dso_local global i32 0, align 4
@NL80211_FEATURE_ACTIVE_MONITOR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_MU_MIMO_GROUP_DATA = common dso_local global i64 0, align 8
@NL80211_EXT_FEATURE_MU_MIMO_AIR_SNIFFER = common dso_local global i32 0, align 4
@VHT_MUMIMO_GROUPS_DATA_LEN = common dso_local global i32 0, align 4
@NL80211_ATTR_MU_MIMO_FOLLOW_MAC_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, i32, %struct.genl_info*, %struct.vif_params*)* @nl80211_parse_mon_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_mon_options(%struct.cfg80211_registered_device* %0, i32 %1, %struct.genl_info* %2, %struct.vif_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.genl_info*, align 8
  %9 = alloca %struct.vif_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.genl_info* %2, %struct.genl_info** %8, align 8
  store %struct.vif_params* %3, %struct.vif_params** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @NL80211_ATTR_MNTR_FLAGS, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %159

29:                                               ; preds = %22
  %30 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @NL80211_ATTR_MNTR_FLAGS, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %37 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %36, i32 0, i32 0
  %38 = call i32 @parse_monitor_flags(i64 %35, i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %159

43:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %4
  %45 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %46 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MONITOR_FLAG_ACTIVE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %53 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NL80211_FEATURE_ACTIVE_MONITOR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %159

62:                                               ; preds = %51, %44
  %63 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @NL80211_ATTR_MU_MIMO_GROUP_DATA, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %119

70:                                               ; preds = %62
  %71 = load i32, i32* @NL80211_EXT_FEATURE_MU_MIMO_AIR_SNIFFER, align 4
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %159

78:                                               ; preds = %70
  %79 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %80 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %79, i32 0, i32 0
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @wiphy_ext_feature_isset(%struct.TYPE_2__* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %159

87:                                               ; preds = %78
  %88 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %89 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* @NL80211_ATTR_MU_MIMO_GROUP_DATA, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @nla_data(i64 %93)
  %95 = bitcast i8* %94 to i32*
  store i32* %95, i32** %12, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @BIT(i32 0)
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %87
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* @VHT_MUMIMO_GROUPS_DATA_LEN, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @BIT(i32 7)
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102, %87
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %159

115:                                              ; preds = %102
  %116 = load i32*, i32** %12, align 8
  %117 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %118 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %117, i32 0, i32 1
  store i32* %116, i32** %118, align 8
  store i32 1, i32* %10, align 4
  br label %119

119:                                              ; preds = %115, %62
  %120 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %121 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* @NL80211_ATTR_MU_MIMO_FOLLOW_MAC_ADDR, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %119
  %128 = load i32, i32* @NL80211_EXT_FEATURE_MU_MIMO_AIR_SNIFFER, align 4
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %159

135:                                              ; preds = %127
  %136 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %137 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %136, i32 0, i32 0
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @wiphy_ext_feature_isset(%struct.TYPE_2__* %137, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* @EOPNOTSUPP, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %5, align 4
  br label %159

144:                                              ; preds = %135
  %145 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %146 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* @NL80211_ATTR_MU_MIMO_FOLLOW_MAC_ADDR, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = call i8* @nla_data(i64 %150)
  %152 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %153 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  store i32 1, i32* %10, align 4
  br label %154

154:                                              ; preds = %144, %119
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 1, i32 0
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %154, %141, %132, %112, %84, %75, %59, %41, %26
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @parse_monitor_flags(i64, i32*) #1

declare dso_local i32 @wiphy_ext_feature_isset(%struct.TYPE_2__*, i32) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
