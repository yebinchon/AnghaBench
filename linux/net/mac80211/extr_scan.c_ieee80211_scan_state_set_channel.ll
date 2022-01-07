; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_state_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_state_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i64, i8*, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_channel*, i64, i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.cfg80211_scan_request = type { i32, i32, %struct.ieee80211_channel** }

@NL80211_CHAN_WIDTH_5 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_10 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@SCAN_DECISION = common dso_local global i8* null, align 8
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_PASSIVE_CHANNEL_TIME = common dso_local global i64 0, align 8
@IEEE80211_PROBE_DELAY = common dso_local global i64 0, align 8
@SCAN_SEND_PROBE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, i64*)* @ieee80211_scan_state_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_scan_state_set_channel(%struct.ieee80211_local* %0, i64* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfg80211_scan_request*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 4
  %14 = call i32 @lockdep_is_held(i32* %13)
  %15 = call %struct.cfg80211_scan_request* @rcu_dereference_protected(i32 %11, i32 %14)
  store %struct.cfg80211_scan_request* %15, %struct.cfg80211_scan_request** %8, align 8
  store i32 0, i32* %5, align 4
  %16 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %8, align 8
  %17 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %16, i32 0, i32 2
  %18 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %17, align 8
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, i64 %21
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %22, align 8
  store %struct.ieee80211_channel* %23, %struct.ieee80211_channel** %6, align 8
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.ieee80211_channel* %24, %struct.ieee80211_channel** %27, align 8
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 8
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %8, align 8
  %38 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %79 [
    i32 128, label %40
    i32 130, label %45
    i32 129, label %50
  ]

40:                                               ; preds = %2
  %41 = load i32, i32* @NL80211_CHAN_WIDTH_5, align 4
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  br label %79

45:                                               ; preds = %2
  %46 = load i32, i32* @NL80211_CHAN_WIDTH_10, align 4
  %47 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  br label %79

50:                                               ; preds = %2
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %51, i32 0, i32 3
  %53 = call i32 @cfg80211_chandef_to_scan_width(%struct.TYPE_2__* %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %55 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %57, align 8
  %59 = icmp eq %struct.ieee80211_channel* %54, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %8, align 8
  %63 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %67, i32 0, i32 2
  %69 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %69, i32 0, i32 3
  %71 = bitcast %struct.TYPE_2__* %68 to i8*
  %72 = bitcast %struct.TYPE_2__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 32, i1 false)
  br label %78

73:                                               ; preds = %60, %50
  %74 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  %75 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  br label %78

78:                                               ; preds = %73, %66
  br label %79

79:                                               ; preds = %2, %78, %45, %40
  %80 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %81 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %82 = call i64 @ieee80211_hw_config(%struct.ieee80211_local* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i8*, i8** @SCAN_DECISION, align 8
  %94 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %95 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %122

96:                                               ; preds = %85
  %97 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %101 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %96
  %106 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %8, align 8
  %107 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %105, %96
  %111 = load i64, i64* @IEEE80211_PASSIVE_CHANNEL_TIME, align 8
  %112 = load i64*, i64** %4, align 8
  store i64 %111, i64* %112, align 8
  %113 = load i8*, i8** @SCAN_DECISION, align 8
  %114 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %115 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  br label %122

116:                                              ; preds = %105
  %117 = load i64, i64* @IEEE80211_PROBE_DELAY, align 8
  %118 = load i64*, i64** %4, align 8
  store i64 %117, i64* %118, align 8
  %119 = load i8*, i8** @SCAN_SEND_PROBE, align 8
  %120 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %121 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %116, %110, %92
  ret void
}

declare dso_local %struct.cfg80211_scan_request* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @cfg80211_chandef_to_scan_width(%struct.TYPE_2__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
