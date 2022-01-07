; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_pairwise_rekey.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_pairwise_rekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { i32, i32, %struct.TYPE_5__, %struct.sta_info*, %struct.ieee80211_local* }
%struct.TYPE_5__ = type { i32 }
%struct.sta_info = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@IEEE80211_KEY_FLAG_NO_AUTO_TX = common dso_local global i32 0, align 4
@INVALID_PTK_KEYIDX = common dso_local global i64 0, align 8
@AMPDU_KEYBORDER_SUPPORT = common dso_local global i32 0, align 4
@WLAN_STA_BLOCK_BA = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@AGG_STOP_LOCAL_REQUEST = common dso_local global i32 0, align 4
@KEY_FLAG_UPLOADED_TO_HARDWARE = common dso_local global i32 0, align 4
@KEY_FLAG_TAINTED = common dso_local global i32 0, align 4
@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CAN_REPLACE_PTK0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Rekeying PTK for STA %pM but driver can't safely do that.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_key*, %struct.ieee80211_key*)* @ieee80211_pairwise_rekey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_pairwise_rekey(%struct.ieee80211_key* %0, %struct.ieee80211_key* %1) #0 {
  %3 = alloca %struct.ieee80211_key*, align 8
  %4 = alloca %struct.ieee80211_key*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %3, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %4, align 8
  %8 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %8, i32 0, i32 4
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %5, align 8
  %11 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %11, i32 0, i32 3
  %13 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  store %struct.sta_info* %13, %struct.sta_info** %6, align 8
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %15 = call i32 @assert_key_lock(%struct.ieee80211_local* %14)
  %16 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IEEE80211_KEY_FLAG_NO_AUTO_TX, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %2
  %24 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INVALID_PTK_KEYIDX, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 0
  %32 = load i32, i32* @AMPDU_KEYBORDER_SUPPORT, align 4
  %33 = call i64 @ieee80211_hw_check(%struct.TYPE_8__* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %29
  %36 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %37 = load i32, i32* @WLAN_STA_BLOCK_BA, align 4
  %38 = call i32 @set_sta_flag(%struct.sta_info* %36, i32 %37)
  %39 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %52, %35
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @AGG_STOP_LOCAL_REQUEST, align 4
  %51 = call i32 @___ieee80211_stop_tx_ba_session(%struct.sta_info* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %43

55:                                               ; preds = %43
  %56 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %57 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %60

60:                                               ; preds = %55, %29, %23
  br label %113

61:                                               ; preds = %2
  %62 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %63 = icmp ne %struct.ieee80211_key* %62, null
  br i1 %63, label %64, label %112

64:                                               ; preds = %61
  %65 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @KEY_FLAG_UPLOADED_TO_HARDWARE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %113

72:                                               ; preds = %64
  %73 = load i32, i32* @KEY_FLAG_TAINTED, align 4
  %74 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %75 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %79 = call i32 @ieee80211_clear_fast_xmit(%struct.sta_info* %78)
  %80 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %80, i32 0, i32 0
  %82 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %83 = call i64 @ieee80211_hw_check(%struct.TYPE_8__* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %72
  %86 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %87 = load i32, i32* @WLAN_STA_BLOCK_BA, align 4
  %88 = call i32 @set_sta_flag(%struct.sta_info* %86, i32 %87)
  %89 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %90 = load i32, i32* @AGG_STOP_LOCAL_REQUEST, align 4
  %91 = call i32 @ieee80211_sta_tear_down_BA_sessions(%struct.sta_info* %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %72
  %93 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %94 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @NL80211_EXT_FEATURE_CAN_REPLACE_PTK0, align 4
  %98 = call i32 @wiphy_ext_feature_isset(i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %92
  %101 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %102 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %107 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %108 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ieee80211_flush_queues(%struct.ieee80211_local* %106, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %100, %92
  br label %112

112:                                              ; preds = %111, %61
  br label %113

113:                                              ; preds = %71, %112, %60
  ret void
}

declare dso_local i32 @assert_key_lock(%struct.ieee80211_local*) #1

declare dso_local i64 @ieee80211_hw_check(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @___ieee80211_stop_tx_ba_session(%struct.sta_info*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_clear_fast_xmit(%struct.sta_info*) #1

declare dso_local i32 @ieee80211_sta_tear_down_BA_sessions(%struct.sta_info*, i32) #1

declare dso_local i32 @wiphy_ext_feature_isset(i32, i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @ieee80211_flush_queues(%struct.ieee80211_local*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
