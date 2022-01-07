; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_state_send_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_state_send_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.cfg80211_scan_request = type { i32, i32, i32*, i32, i32, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@IEEE80211_TX_INTFL_OFFCHAN_TX_OK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_CCK_RATE = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_MIN_PREQ_CONTENT = common dso_local global i32 0, align 4
@IEEE80211_PROBE_FLAG_MIN_CONTENT = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_RANDOM_SN = common dso_local global i32 0, align 4
@IEEE80211_PROBE_FLAG_RANDOM_SN = common dso_local global i32 0, align 4
@IEEE80211_CHANNEL_TIME = common dso_local global i64 0, align 8
@SCAN_DECISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, i64*)* @ieee80211_scan_state_send_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_scan_state_send_probe(%struct.ieee80211_local* %0, i64* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.cfg80211_scan_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store i64* %1, i64** %4, align 8
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 3
  %24 = call i32 @lockdep_is_held(i32* %23)
  %25 = call i8* @rcu_dereference_protected(i32 %21, i32 %24)
  %26 = bitcast i8* %25 to %struct.cfg80211_scan_request*
  store %struct.cfg80211_scan_request* %26, %struct.cfg80211_scan_request** %7, align 8
  %27 = load i32, i32* @IEEE80211_TX_INTFL_OFFCHAN_TX_OK, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %29 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @IEEE80211_TX_CTL_NO_CCK_RATE, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %38 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NL80211_SCAN_FLAG_MIN_PREQ_CONTENT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @IEEE80211_PROBE_FLAG_MIN_CONTENT, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %49 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NL80211_SCAN_FLAG_RANDOM_SN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @IEEE80211_PROBE_FLAG_RANDOM_SN, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %62, i32 0, i32 3
  %64 = call i32 @lockdep_is_held(i32* %63)
  %65 = call i8* @rcu_dereference_protected(i32 %61, i32 %64)
  %66 = bitcast i8* %65 to %struct.ieee80211_sub_if_data*
  store %struct.ieee80211_sub_if_data* %66, %struct.ieee80211_sub_if_data** %6, align 8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %119, %58
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %70 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %122

73:                                               ; preds = %67
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %75 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %79 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %82 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %81, i32 0, i32 5
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %90 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %89, i32 0, i32 5
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %98 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %101 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %104 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %113 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = call i32 @ieee80211_send_scan_probe_req(%struct.ieee80211_sub_if_data* %74, i32 %77, i32 %80, i32 %88, i32 %96, i32 %99, i32 %102, i32 %109, i32 %110, i32 %111, %struct.TYPE_10__* %117)
  br label %119

119:                                              ; preds = %73
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %67

122:                                              ; preds = %67
  %123 = load i64, i64* @IEEE80211_CHANNEL_TIME, align 8
  %124 = load i64*, i64** %4, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i32, i32* @SCAN_DECISION, align 4
  %126 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %127 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  ret void
}

declare dso_local i8* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @ieee80211_send_scan_probe_req(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
