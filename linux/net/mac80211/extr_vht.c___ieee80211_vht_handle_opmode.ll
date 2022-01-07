; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c___ieee80211_vht_handle_opmode.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c___ieee80211_vht_handle_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.sta_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sta_opmode_info = type { i32, i32, i32 }

@IEEE80211_OPMODE_NOTIF_RX_NSS_TYPE_BF = common dso_local global i32 0, align 4
@IEEE80211_OPMODE_NOTIF_RX_NSS_MASK = common dso_local global i32 0, align 4
@IEEE80211_OPMODE_NOTIF_RX_NSS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_RC_NSS_CHANGED = common dso_local global i32 0, align 4
@STA_OPMODE_N_SS_CHANGED = common dso_local global i32 0, align 4
@IEEE80211_OPMODE_NOTIF_CHANWIDTH_MASK = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_20 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_40 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_80 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_160 = common dso_local global i32 0, align 4
@IEEE80211_RC_BW_CHANGED = common dso_local global i32 0, align 4
@STA_OPMODE_MAX_BW_CHANGED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ieee80211_vht_handle_opmode(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sta_opmode_info, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = bitcast %struct.sta_opmode_info* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 12, i1 false)
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @IEEE80211_OPMODE_NOTIF_RX_NSS_TYPE_BF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %108

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @IEEE80211_OPMODE_NOTIF_RX_NSS_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @IEEE80211_OPMODE_NOTIF_RX_NSS_SHIFT, align 4
  %25 = load i32, i32* %13, align 4
  %26 = ashr i32 %25, %24
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  %29 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %20
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds %struct.sta_opmode_info, %struct.sta_opmode_info* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @IEEE80211_RC_NSS_CHANGED, align 4
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @STA_OPMODE_N_SS_CHANGED, align 4
  %46 = getelementptr inbounds %struct.sta_opmode_info, %struct.sta_opmode_info* %11, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %35, %20
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @IEEE80211_OPMODE_NOTIF_CHANWIDTH_MASK, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %69 [
    i32 130, label %53
    i32 129, label %57
    i32 128, label %61
    i32 131, label %65
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* @IEEE80211_STA_RX_BW_20, align 4
  %55 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %56 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %69

57:                                               ; preds = %49
  %58 = load i32, i32* @IEEE80211_STA_RX_BW_40, align 4
  %59 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %69

61:                                               ; preds = %49
  %62 = load i32, i32* @IEEE80211_STA_RX_BW_80, align 4
  %63 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %64 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %49
  %66 = load i32, i32* @IEEE80211_STA_RX_BW_160, align 4
  %67 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %49, %65, %61, %57, %53
  %70 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %71 = call i32 @ieee80211_sta_cur_vht_bw(%struct.sta_info* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %74 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %72, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %81 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %84 = call i32 @ieee80211_sta_rx_bw_to_chan_width(%struct.sta_info* %83)
  %85 = getelementptr inbounds %struct.sta_opmode_info, %struct.sta_opmode_info* %11, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @IEEE80211_RC_BW_CHANGED, align 4
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* @STA_OPMODE_MAX_BW_CHANGED, align 4
  %90 = getelementptr inbounds %struct.sta_opmode_info, %struct.sta_opmode_info* %11, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %78, %69
  %94 = getelementptr inbounds %struct.sta_opmode_info, %struct.sta_opmode_info* %11, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %102 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i32 @cfg80211_sta_opmode_change_notify(i32 %100, i32 %103, %struct.sta_opmode_info* %11, i32 %104)
  br label %106

106:                                              ; preds = %97, %93
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %19
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ieee80211_sta_cur_vht_bw(%struct.sta_info*) #2

declare dso_local i32 @ieee80211_sta_rx_bw_to_chan_width(%struct.sta_info*) #2

declare dso_local i32 @cfg80211_sta_opmode_change_notify(i32, i32, %struct.sta_opmode_info*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
