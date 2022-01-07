; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_sta.c_ieee80211_sta_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_sta.c_ieee80211_sta_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sta_info = type { i32, %struct.TYPE_12__, i32, %struct.ieee80211_sub_if_data*, %struct.ieee80211_local* }
%struct.TYPE_12__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%pM\00", align 1
@flags = common dso_local global i32 0, align 4
@aid = common dso_local global i32 0, align 4
@num_ps_buf_frames = common dso_local global i32 0, align 4
@last_seq_ctrl = common dso_local global i32 0, align 4
@agg_status = common dso_local global i32 0, align 4
@ht_capa = common dso_local global i32 0, align 4
@vht_capa = common dso_local global i32 0, align 4
@he_capa = common dso_local global i32 0, align 4
@rx_duplicates = common dso_local global i32 0, align 4
@rx_stats = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@rx_fragments = common dso_local global i32 0, align 4
@tx_filtered = common dso_local global i32 0, align 4
@status_stats = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@aqm = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_AIRTIME_FAIRNESS = common dso_local global i32 0, align 4
@airtime = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"driver_buffered_tids\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_debugfs_add(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 4
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  store %struct.ieee80211_local* %11, %struct.ieee80211_local** %3, align 8
  %12 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 3
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %4, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 3
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  store %struct.dentry* %20, %struct.dentry** %5, align 8
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = mul nsw i32 3, %21
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = icmp ne %struct.dentry* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %101

29:                                               ; preds = %1
  %30 = mul nuw i64 4, %23
  %31 = trunc i64 %30 to i32
  %32 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snprintf(i32* %25, i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = call i32 @debugfs_create_dir(i32* %25, %struct.dentry* %37)
  %39 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @flags, align 4
  %42 = call i32 @DEBUGFS_ADD(i32 %41)
  %43 = load i32, i32* @aid, align 4
  %44 = call i32 @DEBUGFS_ADD(i32 %43)
  %45 = load i32, i32* @num_ps_buf_frames, align 4
  %46 = call i32 @DEBUGFS_ADD(i32 %45)
  %47 = load i32, i32* @last_seq_ctrl, align 4
  %48 = call i32 @DEBUGFS_ADD(i32 %47)
  %49 = load i32, i32* @agg_status, align 4
  %50 = call i32 @DEBUGFS_ADD(i32 %49)
  %51 = load i32, i32* @ht_capa, align 4
  %52 = call i32 @DEBUGFS_ADD(i32 %51)
  %53 = load i32, i32* @vht_capa, align 4
  %54 = call i32 @DEBUGFS_ADD(i32 %53)
  %55 = load i32, i32* @he_capa, align 4
  %56 = call i32 @DEBUGFS_ADD(i32 %55)
  %57 = load i32, i32* @rx_duplicates, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rx_stats, i32 0, i32 1), align 4
  %59 = call i32 @DEBUGFS_ADD_COUNTER(i32 %57, i32 %58)
  %60 = load i32, i32* @rx_fragments, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rx_stats, i32 0, i32 0), align 4
  %62 = call i32 @DEBUGFS_ADD_COUNTER(i32 %60, i32 %61)
  %63 = load i32, i32* @tx_filtered, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @status_stats, i32 0, i32 0), align 4
  %65 = call i32 @DEBUGFS_ADD_COUNTER(i32 %63, i32 %64)
  %66 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %29
  %73 = load i32, i32* @aqm, align 4
  %74 = call i32 @DEBUGFS_ADD(i32 %73)
  br label %75

75:                                               ; preds = %72, %29
  %76 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @NL80211_EXT_FEATURE_AIRTIME_FAIRNESS, align 4
  %81 = call i64 @wiphy_ext_feature_isset(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @airtime, align 4
  %85 = call i32 @DEBUGFS_ADD(i32 %84)
  br label %86

86:                                               ; preds = %83, %75
  %87 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %88 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %91 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %90, i32 0, i32 2
  %92 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 256, i32 %89, i32* %91)
  %93 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %94 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %95 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %96 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %95, i32 0, i32 1
  %97 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %98 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @drv_sta_add_debugfs(%struct.ieee80211_local* %93, %struct.ieee80211_sub_if_data* %94, %struct.TYPE_12__* %96, i32 %99)
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %86, %28
  %102 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %8, align 4
  switch i32 %103, label %105 [
    i32 0, label %104
    i32 1, label %104
  ]

104:                                              ; preds = %101, %101
  ret void

105:                                              ; preds = %101
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #2

declare dso_local i32 @debugfs_create_dir(i32*, %struct.dentry*) #2

declare dso_local i32 @DEBUGFS_ADD(i32) #2

declare dso_local i32 @DEBUGFS_ADD_COUNTER(i32, i32) #2

declare dso_local i64 @wiphy_ext_feature_isset(i32, i32) #2

declare dso_local i32 @debugfs_create_x32(i8*, i32, i32, i32*) #2

declare dso_local i32 @drv_sta_add_debugfs(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.TYPE_12__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
