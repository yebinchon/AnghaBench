; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ibss.c_ieee80211_ibss_csa_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ibss.c_ieee80211_ibss_csa_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.ieee80211_if_ibss }
%struct.ieee80211_if_ibss = type { i32, %struct.TYPE_14__, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.cfg80211_csa_settings = type { i32 }
%struct.beacon_data = type { i32 }
%struct.cfg80211_bss = type { i32 }
%struct.cfg80211_bss_ies = type { i32 }

@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@IEEE80211_BSS_TYPE_IBSS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_ibss_csa_beacon(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_csa_settings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_csa_settings*, align 8
  %6 = alloca %struct.ieee80211_if_ibss*, align 8
  %7 = alloca %struct.beacon_data*, align 8
  %8 = alloca %struct.beacon_data*, align 8
  %9 = alloca %struct.cfg80211_bss*, align 8
  %10 = alloca %struct.cfg80211_bss_ies*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_csa_settings* %1, %struct.cfg80211_csa_settings** %5, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.ieee80211_if_ibss* %16, %struct.ieee80211_if_ibss** %6, align 8
  %17 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %19 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %18)
  %20 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IEEE80211_BSS_TYPE_IBSS, align 4
  %49 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @IEEE80211_PRIVACY(i64 %51)
  %53 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %34, i32 %38, i32 %41, i32 %44, i32 %47, i32 %48, i32 %52)
  store %struct.cfg80211_bss* %53, %struct.cfg80211_bss** %9, align 8
  %54 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %55 = icmp ne %struct.cfg80211_bss* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @WARN_ON(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %28
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %125

63:                                               ; preds = %28
  %64 = call i32 (...) @rcu_read_lock()
  %65 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %66 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %67)
  store %struct.cfg80211_bss_ies* %68, %struct.cfg80211_bss_ies** %10, align 8
  %69 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %70 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %12, align 4
  %72 = call i32 (...) @rcu_read_unlock()
  %73 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %80 = call i32 @cfg80211_put_bss(i32 %78, %struct.cfg80211_bss* %79)
  %81 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %6, align 8
  %82 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = call i32 @lockdep_is_held(i32* %86)
  %88 = call %struct.beacon_data* @rcu_dereference_protected(i32 %83, i32 %87)
  store %struct.beacon_data* %88, %struct.beacon_data** %8, align 8
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %90 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %6, align 8
  %103 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %102, i32 0, i32 1
  %104 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %5, align 8
  %105 = call %struct.beacon_data* @ieee80211_ibss_build_presp(%struct.ieee80211_sub_if_data* %89, i32 %94, i32 %99, i32 %100, i32 %101, %struct.TYPE_14__* %103, i32* null, %struct.cfg80211_csa_settings* %104)
  store %struct.beacon_data* %105, %struct.beacon_data** %7, align 8
  %106 = load %struct.beacon_data*, %struct.beacon_data** %7, align 8
  %107 = icmp ne %struct.beacon_data* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %63
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %13, align 4
  br label %125

111:                                              ; preds = %63
  %112 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %6, align 8
  %113 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.beacon_data*, %struct.beacon_data** %7, align 8
  %116 = call i32 @rcu_assign_pointer(i32 %114, %struct.beacon_data* %115)
  %117 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %118 = icmp ne %struct.beacon_data* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %121 = load i32, i32* @rcu_head, align 4
  %122 = call i32 @kfree_rcu(%struct.beacon_data* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %111
  %124 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  store i32 %124, i32* %3, align 4
  br label %127

125:                                              ; preds = %108, %60
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IEEE80211_PRIVACY(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #1

declare dso_local %struct.beacon_data* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.beacon_data* @ieee80211_ibss_build_presp(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32, %struct.TYPE_14__*, i32*, %struct.cfg80211_csa_settings*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.beacon_data*) #1

declare dso_local i32 @kfree_rcu(%struct.beacon_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
