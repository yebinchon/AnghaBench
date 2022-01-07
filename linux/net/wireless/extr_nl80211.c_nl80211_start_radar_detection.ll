; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_start_radar_detection.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_start_radar_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.net_device** }
%struct.net_device = type { i32, %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i32, i32, i32, %struct.cfg80211_chan_def, i32, %struct.wiphy* }
%struct.cfg80211_chan_def = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__*, %struct.wireless_dev* }

@NL80211_DFS_UNSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_DFS_OFFLOAD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_DFS_MIN_CAC_TIME_MS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_start_radar_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_start_radar_detection(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.cfg80211_chan_def, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load %struct.net_device**, %struct.net_device*** %15, align 8
  %17 = getelementptr inbounds %struct.net_device*, %struct.net_device** %16, i64 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = bitcast %struct.net_device* %18 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %6, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load %struct.net_device**, %struct.net_device*** %21, align 8
  %23 = getelementptr inbounds %struct.net_device*, %struct.net_device** %22, i64 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 2
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %26, align 8
  store %struct.wireless_dev* %27, %struct.wireless_dev** %8, align 8
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 5
  %30 = load %struct.wiphy*, %struct.wiphy** %29, align 8
  store %struct.wiphy* %30, %struct.wiphy** %9, align 8
  %31 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %32 = call i32 @reg_get_dfs_region(%struct.wiphy* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @NL80211_DFS_UNSET, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %139

39:                                               ; preds = %2
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %41 = bitcast %struct.cfg80211_registered_device* %40 to %struct.net_device*
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = call i32 @nl80211_parse_chandef(%struct.net_device* %41, %struct.genl_info* %42, %struct.cfg80211_chan_def* %10)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %3, align 4
  br label %139

48:                                               ; preds = %39
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = call i64 @netif_carrier_ok(%struct.net_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %139

55:                                               ; preds = %48
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %57 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %139

63:                                               ; preds = %55
  %64 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %66 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @cfg80211_chandef_dfs_required(%struct.wiphy* %64, %struct.cfg80211_chan_def* %10, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %3, align 4
  br label %139

73:                                               ; preds = %63
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %139

79:                                               ; preds = %73
  %80 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %81 = call i32 @cfg80211_chandef_dfs_usable(%struct.wiphy* %80, %struct.cfg80211_chan_def* %10)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %139

86:                                               ; preds = %79
  %87 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %88 = load i32, i32* @NL80211_EXT_FEATURE_DFS_OFFLOAD, align 4
  %89 = call i64 @wiphy_ext_feature_isset(%struct.wiphy* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @EOPNOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %139

94:                                               ; preds = %86
  %95 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %96 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* @EOPNOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %139

104:                                              ; preds = %94
  %105 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %106 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %105, i32 0, i32 0
  %107 = call i32 @cfg80211_chandef_dfs_cac_time(i32* %106, %struct.cfg80211_chan_def* %10)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i64 @WARN_ON(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* @IEEE80211_DFS_MIN_CAC_TIME_MS, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %114, %104
  %117 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %118 = bitcast %struct.cfg80211_registered_device* %117 to %struct.net_device*
  %119 = load %struct.net_device*, %struct.net_device** %7, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @rdev_start_radar_detection(%struct.net_device* %118, %struct.net_device* %119, %struct.cfg80211_chan_def* %10, i32 %120)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %137, label %124

124:                                              ; preds = %116
  %125 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %126 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %125, i32 0, i32 3
  %127 = bitcast %struct.cfg80211_chan_def* %126 to i8*
  %128 = bitcast %struct.cfg80211_chan_def* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 4, i1 false)
  %129 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %130 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load i32, i32* @jiffies, align 4
  %132 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %133 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %136 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %124, %116
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %101, %91, %83, %76, %71, %60, %52, %46, %36
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @reg_get_dfs_region(%struct.wiphy*) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.net_device*, %struct.genl_info*, %struct.cfg80211_chan_def*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @cfg80211_chandef_dfs_required(%struct.wiphy*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @cfg80211_chandef_dfs_usable(%struct.wiphy*, %struct.cfg80211_chan_def*) #1

declare dso_local i64 @wiphy_ext_feature_isset(%struct.wiphy*, i32) #1

declare dso_local i32 @cfg80211_chandef_dfs_cac_time(i32*, %struct.cfg80211_chan_def*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rdev_start_radar_detection(%struct.net_device*, %struct.net_device*, %struct.cfg80211_chan_def*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
