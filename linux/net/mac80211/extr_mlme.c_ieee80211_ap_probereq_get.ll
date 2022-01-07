; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_ap_probereq_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_ap_probereq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.cfg80211_bss* }
%struct.TYPE_7__ = type { %struct.cfg80211_bss* }
%struct.TYPE_6__ = type { %struct.cfg80211_bss* }
%struct.cfg80211_bss = type { i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid SSID element (len=%d)\00", align 1
@IEEE80211_PROBE_FLAG_DIRECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_ap_probereq_get(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_if_managed*, align 8
  %8 = alloca %struct.cfg80211_bss*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %13 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %12)
  store %struct.ieee80211_sub_if_data* %13, %struct.ieee80211_sub_if_data** %6, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.ieee80211_if_managed* %16, %struct.ieee80211_if_managed** %7, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %114

27:                                               ; preds = %2
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %29 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %28)
  %30 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %30, i32 0, i32 2
  %32 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %31, align 8
  %33 = icmp ne %struct.cfg80211_bss* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %35, i32 0, i32 2
  %37 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %36, align 8
  store %struct.cfg80211_bss* %37, %struct.cfg80211_bss** %8, align 8
  br label %63

38:                                               ; preds = %27
  %39 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %47, align 8
  store %struct.cfg80211_bss* %48, %struct.cfg80211_bss** %8, align 8
  br label %62

49:                                               ; preds = %38
  %50 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %58, align 8
  store %struct.cfg80211_bss* %59, %struct.cfg80211_bss** %8, align 8
  br label %61

60:                                               ; preds = %49
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %114

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %34
  %64 = call i32 (...) @rcu_read_lock()
  %65 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %66 = load i32, i32* @WLAN_EID_SSID, align 4
  %67 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %65, i32 %66)
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %75 = icmp sgt i32 %73, %74
  br label %76

76:                                               ; preds = %70, %63
  %77 = phi i1 [ true, %63 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  br label %86

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi i32 [ %84, %81 ], [ -1, %85 ]
  %88 = call i64 @WARN_ONCE(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  br label %95

91:                                               ; preds = %86
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %91, %90
  %96 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %97 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %102 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %105 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @IEEE80211_PROBE_FLAG_DIRECTED, align 4
  %111 = call %struct.sk_buff* @ieee80211_build_probe_req(%struct.ieee80211_sub_if_data* %96, i32 %100, i32 %103, i32 -1, i32 %106, i32* %108, i32 %109, i32* null, i32 0, i32 %110)
  store %struct.sk_buff* %111, %struct.sk_buff** %9, align 8
  %112 = call i32 (...) @rcu_read_unlock()
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %113, %struct.sk_buff** %3, align 8
  br label %114

114:                                              ; preds = %95, %60, %26
  %115 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %115
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss*, i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_build_probe_req(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
