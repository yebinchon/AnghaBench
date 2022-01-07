; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_notify_radar_detection.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_notify_radar_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.net_device** }
%struct.net_device = type { i32, %struct.cfg80211_chan_def, %struct.wireless_dev* }
%struct.cfg80211_chan_def = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.wireless_dev = type { i32, %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.cfg80211_chan_def, %struct.wireless_dev* }

@NL80211_DFS_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"DFS Region is not set. Unexpected Radar indication\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to extract chandef info\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"chandef is invalid\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Unexpected Radar indication for chandef/iftype\00", align 1
@NL80211_DFS_UNAVAILABLE = common dso_local global i64 0, align 8
@cfg80211_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_notify_radar_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_notify_radar_detection(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.cfg80211_chan_def, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 0
  %15 = load %struct.net_device**, %struct.net_device*** %14, align 8
  %16 = getelementptr inbounds %struct.net_device*, %struct.net_device** %15, i64 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = bitcast %struct.net_device* %17 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %6, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load %struct.net_device**, %struct.net_device*** %20, align 8
  %22 = getelementptr inbounds %struct.net_device*, %struct.net_device** %21, i64 1
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %7, align 8
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 2
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %25, align 8
  store %struct.wireless_dev* %26, %struct.wireless_dev** %8, align 8
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %28 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %27, i32 0, i32 1
  %29 = load %struct.wiphy*, %struct.wiphy** %28, align 8
  store %struct.wiphy* %29, %struct.wiphy** %9, align 8
  %30 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %31 = call i32 @reg_get_dfs_region(%struct.wiphy* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @NL80211_DFS_UNSET, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %94

40:                                               ; preds = %2
  %41 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %42 = bitcast %struct.cfg80211_registered_device* %41 to %struct.net_device*
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = call i32 @nl80211_parse_chandef(%struct.net_device* %42, %struct.genl_info* %43, %struct.cfg80211_chan_def* %10)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %3, align 4
  br label %94

51:                                               ; preds = %40
  %52 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @cfg80211_chandef_dfs_required(%struct.wiphy* %52, %struct.cfg80211_chan_def* %10, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %3, align 4
  br label %94

63:                                               ; preds = %51
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %68 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %94

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NL80211_DFS_UNAVAILABLE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %94

79:                                               ; preds = %71
  %80 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %81 = load i64, i64* @NL80211_DFS_UNAVAILABLE, align 8
  %82 = call i32 @cfg80211_set_dfs_state(%struct.wiphy* %80, %struct.cfg80211_chan_def* %10, i64 %81)
  %83 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %84 = bitcast %struct.cfg80211_registered_device* %83 to %struct.net_device*
  %85 = call i32 @cfg80211_sched_dfs_chan_update(%struct.net_device* %84)
  %86 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %87 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %86, i32 0, i32 1
  %88 = bitcast %struct.cfg80211_chan_def* %87 to i8*
  %89 = bitcast %struct.cfg80211_chan_def* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 8, i1 false)
  %90 = load i32, i32* @cfg80211_wq, align 4
  %91 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %92 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %91, i32 0, i32 0
  %93 = call i32 @queue_work(i32 %90, i32* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %79, %78, %66, %59, %47, %35
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @reg_get_dfs_region(%struct.wiphy*) #1

declare dso_local i32 @GENL_SET_ERR_MSG(%struct.genl_info*, i8*) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.net_device*, %struct.genl_info*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_dfs_required(%struct.wiphy*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @cfg80211_set_dfs_state(%struct.wiphy*, %struct.cfg80211_chan_def*, i64) #1

declare dso_local i32 @cfg80211_sched_dfs_chan_update(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
