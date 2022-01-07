; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ocb.c_ieee80211_ocb_rx_no_sta.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ocb.c_ieee80211_ocb_rx_no_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_9__, i32, %struct.ieee80211_local*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_local = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.TYPE_8__ = type { %struct.ieee80211_if_ocb }
%struct.ieee80211_if_ocb = type { i32, i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.sta_info = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@IEEE80211_OCB_MAX_STA_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: No room for a new OCB STA entry %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Adding new OCB station %pM\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ocb_rx_no_sta(%struct.ieee80211_sub_if_data* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_if_ocb*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sta_info*, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.ieee80211_if_ocb* %18, %struct.ieee80211_if_ocb** %9, align 8
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 3
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %20, align 8
  store %struct.ieee80211_local* %21, %struct.ieee80211_local** %10, align 8
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IEEE80211_OCB_MAX_STA_ENTRIES, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30, i32* %31)
  br label %106

33:                                               ; preds = %4
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @ocb_dbg(%struct.ieee80211_sub_if_data* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %35)
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %41)
  store %struct.ieee80211_chanctx_conf* %42, %struct.ieee80211_chanctx_conf** %11, align 8
  %43 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %11, align 8
  %44 = icmp ne %struct.ieee80211_chanctx_conf* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON_ONCE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = call i32 (...) @rcu_read_unlock()
  br label %106

51:                                               ; preds = %33
  %52 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %11, align 8
  %53 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %11, align 8
  %59 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %58, i32 0, i32 0
  %60 = call i32 @cfg80211_chandef_to_scan_width(%struct.TYPE_14__* %59)
  store i32 %60, i32* %13, align 4
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data* %62, i32* %63, i32 %64)
  store %struct.sta_info* %65, %struct.sta_info** %14, align 8
  %66 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %67 = icmp ne %struct.sta_info* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %51
  br label %106

69:                                               ; preds = %51
  %70 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %71 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %75, i64 %77
  %79 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %78, align 8
  store %struct.ieee80211_supported_band* %79, %struct.ieee80211_supported_band** %12, align 8
  %80 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @ieee80211_mandatory_rates(%struct.ieee80211_supported_band* %80, i32 %81)
  %83 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %84 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %82, i32* %89, align 4
  %90 = load %struct.ieee80211_if_ocb*, %struct.ieee80211_if_ocb** %9, align 8
  %91 = getelementptr inbounds %struct.ieee80211_if_ocb, %struct.ieee80211_if_ocb* %90, i32 0, i32 0
  %92 = call i32 @spin_lock(i32* %91)
  %93 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %94 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %93, i32 0, i32 0
  %95 = load %struct.ieee80211_if_ocb*, %struct.ieee80211_if_ocb** %9, align 8
  %96 = getelementptr inbounds %struct.ieee80211_if_ocb, %struct.ieee80211_if_ocb* %95, i32 0, i32 1
  %97 = call i32 @list_add(i32* %94, i32* %96)
  %98 = load %struct.ieee80211_if_ocb*, %struct.ieee80211_if_ocb** %9, align 8
  %99 = getelementptr inbounds %struct.ieee80211_if_ocb, %struct.ieee80211_if_ocb* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %102 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %101, i32 0, i32 1
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %103, i32 0, i32 0
  %105 = call i32 @ieee80211_queue_work(%struct.TYPE_13__* %102, i32* %104)
  br label %106

106:                                              ; preds = %69, %68, %49, %27
  ret void
}

declare dso_local i32 @net_info_ratelimited(i8*, i32, i32*) #1

declare dso_local i32 @ocb_dbg(%struct.ieee80211_sub_if_data*, i8*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cfg80211_chandef_to_scan_width(%struct.TYPE_14__*) #1

declare dso_local %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @ieee80211_mandatory_rates(%struct.ieee80211_supported_band*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ieee80211_queue_work(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
