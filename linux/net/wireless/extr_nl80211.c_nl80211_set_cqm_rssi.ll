; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_cqm_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_cqm_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { %struct.net_device** }
%struct.net_device = type { i32, %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.wireless_dev = type { i64, %struct.cfg80211_cqm_config* }
%struct.cfg80211_cqm_config = type { i32, i32, i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__*, %struct.wireless_dev* }

@S32_MIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, i64*, i32, i32)* @nl80211_set_cqm_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_cqm_rssi(%struct.genl_info* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.wireless_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.cfg80211_cqm_config*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 0
  %19 = load %struct.net_device**, %struct.net_device*** %18, align 8
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %19, i64 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = bitcast %struct.net_device* %21 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %10, align 8
  %23 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load %struct.net_device**, %struct.net_device*** %24, align 8
  %26 = getelementptr inbounds %struct.net_device*, %struct.net_device** %25, i64 1
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %11, align 8
  %28 = load %struct.net_device*, %struct.net_device** %11, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 2
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %29, align 8
  store %struct.wireless_dev* %30, %struct.wireless_dev** %12, align 8
  %31 = load i64, i64* @S32_MIN, align 8
  store i64 %31, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %60, %4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load i64*, i64** %7, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = load i64*, i64** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43, %36
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %180

54:                                               ; preds = %43
  %55 = load i64*, i64** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %15, align 8
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %32

63:                                               ; preds = %32
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %65 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %71 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %180

78:                                               ; preds = %69, %63
  %79 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %80 = call i32 @wdev_lock(%struct.wireless_dev* %79)
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %82 = call i32 @cfg80211_cqm_config_free(%struct.wireless_dev* %81)
  %83 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %84 = call i32 @wdev_unlock(%struct.wireless_dev* %83)
  %85 = load i32, i32* %8, align 4
  %86 = icmp sle i32 %85, 1
  br i1 %86, label %87, label %116

87:                                               ; preds = %78
  %88 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %89 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %87
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i64*, i64** %7, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97, %94
  %103 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %104 = bitcast %struct.cfg80211_registered_device* %103 to %struct.net_device*
  %105 = load %struct.net_device*, %struct.net_device** %11, align 8
  %106 = call i32 @rdev_set_cqm_rssi_config(%struct.net_device* %104, %struct.net_device* %105, i64 0, i32 0)
  store i32 %106, i32* %5, align 4
  br label %180

107:                                              ; preds = %97
  %108 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %109 = bitcast %struct.cfg80211_registered_device* %108 to %struct.net_device*
  %110 = load %struct.net_device*, %struct.net_device** %11, align 8
  %111 = load i64*, i64** %7, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @rdev_set_cqm_rssi_config(%struct.net_device* %109, %struct.net_device* %110, i64 %113, i32 %114)
  store i32 %115, i32* %5, align 4
  br label %180

116:                                              ; preds = %87, %78
  %117 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %118 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %117, i32 0, i32 0
  %119 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %120 = call i32 @wiphy_ext_feature_isset(i32* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @EOPNOTSUPP, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %180

125:                                              ; preds = %116
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i64*, i64** %7, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %133, %128, %125
  %135 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %136 = call i32 @wdev_lock(%struct.wireless_dev* %135)
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %171

139:                                              ; preds = %134
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 8
  %143 = add i64 12, %142
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call %struct.cfg80211_cqm_config* @kzalloc(i32 %144, i32 %145)
  store %struct.cfg80211_cqm_config* %146, %struct.cfg80211_cqm_config** %16, align 8
  %147 = load %struct.cfg80211_cqm_config*, %struct.cfg80211_cqm_config** %16, align 8
  %148 = icmp ne %struct.cfg80211_cqm_config* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %139
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %14, align 4
  br label %176

152:                                              ; preds = %139
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.cfg80211_cqm_config*, %struct.cfg80211_cqm_config** %16, align 8
  %155 = getelementptr inbounds %struct.cfg80211_cqm_config, %struct.cfg80211_cqm_config* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.cfg80211_cqm_config*, %struct.cfg80211_cqm_config** %16, align 8
  %158 = getelementptr inbounds %struct.cfg80211_cqm_config, %struct.cfg80211_cqm_config* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load %struct.cfg80211_cqm_config*, %struct.cfg80211_cqm_config** %16, align 8
  %160 = getelementptr inbounds %struct.cfg80211_cqm_config, %struct.cfg80211_cqm_config* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i64*, i64** %7, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @memcpy(i32 %161, i64* %162, i32 %166)
  %168 = load %struct.cfg80211_cqm_config*, %struct.cfg80211_cqm_config** %16, align 8
  %169 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %170 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %169, i32 0, i32 1
  store %struct.cfg80211_cqm_config* %168, %struct.cfg80211_cqm_config** %170, align 8
  br label %171

171:                                              ; preds = %152, %134
  %172 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %173 = bitcast %struct.cfg80211_registered_device* %172 to %struct.net_device*
  %174 = load %struct.net_device*, %struct.net_device** %11, align 8
  %175 = call i32 @cfg80211_cqm_rssi_update(%struct.net_device* %173, %struct.net_device* %174)
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %171, %149
  %177 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %178 = call i32 @wdev_unlock(%struct.wireless_dev* %177)
  %179 = load i32, i32* %14, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %176, %122, %107, %102, %75, %51
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_cqm_config_free(%struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_set_cqm_rssi_config(%struct.net_device*, %struct.net_device*, i64, i32) #1

declare dso_local i32 @wiphy_ext_feature_isset(i32*, i32) #1

declare dso_local %struct.cfg80211_cqm_config* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @cfg80211_cqm_rssi_update(%struct.net_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
