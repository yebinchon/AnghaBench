; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_set_csa.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_set_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.beacon_data = type { i64, i64, i64*, i32*, i32*, i32 }
%struct.probe_resp = type { i64*, i32* }

@IEEE80211_MAX_CSA_COUNTERS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.beacon_data*)* @ieee80211_set_csa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_set_csa(%struct.ieee80211_sub_if_data* %0, %struct.beacon_data* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.beacon_data*, align 8
  %5 = alloca %struct.probe_resp*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.beacon_data* %1, %struct.beacon_data** %4, align 8
  %10 = load %struct.beacon_data*, %struct.beacon_data** %4, align 8
  %11 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %38 [
    i32 129, label %17
    i32 130, label %24
    i32 128, label %31
  ]

17:                                               ; preds = %2
  %18 = load %struct.beacon_data*, %struct.beacon_data** %4, align 8
  %19 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load %struct.beacon_data*, %struct.beacon_data** %4, align 8
  %22 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.beacon_data*, %struct.beacon_data** %4, align 8
  %26 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  %28 = load %struct.beacon_data*, %struct.beacon_data** %4, align 8
  %29 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.beacon_data*, %struct.beacon_data** %4, align 8
  %33 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %6, align 8
  %35 = load %struct.beacon_data*, %struct.beacon_data** %4, align 8
  %36 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  br label %39

38:                                               ; preds = %2
  br label %114

39:                                               ; preds = %31, %24, %17
  %40 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %109, %39
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IEEE80211_MAX_CSA_COUNTERS_NUM, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %112

45:                                               ; preds = %41
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.probe_resp* @rcu_dereference(i32 %50)
  store %struct.probe_resp* %51, %struct.probe_resp** %5, align 8
  %52 = load %struct.beacon_data*, %struct.beacon_data** %4, align 8
  %53 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %45
  %61 = load %struct.beacon_data*, %struct.beacon_data** %4, align 8
  %62 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp uge i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @WARN_ON_ONCE(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = call i32 (...) @rcu_read_unlock()
  br label %114

75:                                               ; preds = %60
  %76 = load i32, i32* %9, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.beacon_data*, %struct.beacon_data** %4, align 8
  %79 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %77, i64 %84
  store i32 %76, i32* %85, align 4
  br label %86

86:                                               ; preds = %75, %45
  %87 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 129
  br i1 %91, label %92, label %108

92:                                               ; preds = %86
  %93 = load %struct.probe_resp*, %struct.probe_resp** %5, align 8
  %94 = icmp ne %struct.probe_resp* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.probe_resp*, %struct.probe_resp** %5, align 8
  %98 = getelementptr inbounds %struct.probe_resp, %struct.probe_resp* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.probe_resp*, %struct.probe_resp** %5, align 8
  %101 = getelementptr inbounds %struct.probe_resp, %struct.probe_resp* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %99, i64 %106
  store i32 %96, i32* %107, align 4
  br label %108

108:                                              ; preds = %95, %92, %86
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %41

112:                                              ; preds = %41
  %113 = call i32 (...) @rcu_read_unlock()
  br label %114

114:                                              ; preds = %112, %73, %38
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.probe_resp* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
