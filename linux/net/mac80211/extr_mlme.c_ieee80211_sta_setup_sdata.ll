; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_sta_setup_sdata.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_sta_setup_sdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32*, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ieee80211_sta_monitor_work = common dso_local global i32 0, align 4
@ieee80211_chswitch_work = common dso_local global i32 0, align 4
@ieee80211_beacon_connection_loss_work = common dso_local global i32 0, align 4
@ieee80211_csa_connection_drop_work = common dso_local global i32 0, align 4
@ieee80211_request_smps_mgd_work = common dso_local global i32 0, align 4
@ieee80211_tdls_peer_del_work = common dso_local global i32 0, align 4
@ieee80211_sta_timer = common dso_local global i32 0, align 4
@ieee80211_sta_bcn_mon_timer = common dso_local global i32 0, align 4
@ieee80211_sta_conn_mon_timer = common dso_local global i32 0, align 4
@ieee80211_chswitch_timer = common dso_local global i32 0, align 4
@ieee80211_sta_handle_tspec_ac_params_wk = common dso_local global i32 0, align 4
@NL80211_FEATURE_DYNAMIC_SMPS = common dso_local global i32 0, align 4
@IEEE80211_SMPS_AUTOMATIC = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_setup_sdata(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_managed*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %4 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store %struct.ieee80211_if_managed* %6, %struct.ieee80211_if_managed** %3, align 8
  %7 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %7, i32 0, i32 19
  %9 = load i32, i32* @ieee80211_sta_monitor_work, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  %11 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %11, i32 0, i32 18
  %13 = load i32, i32* @ieee80211_chswitch_work, align 4
  %14 = call i32 @INIT_WORK(i32* %12, i32 %13)
  %15 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %15, i32 0, i32 17
  %17 = load i32, i32* @ieee80211_beacon_connection_loss_work, align 4
  %18 = call i32 @INIT_WORK(i32* %16, i32 %17)
  %19 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %19, i32 0, i32 16
  %21 = load i32, i32* @ieee80211_csa_connection_drop_work, align 4
  %22 = call i32 @INIT_WORK(i32* %20, i32 %21)
  %23 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %23, i32 0, i32 15
  %25 = load i32, i32* @ieee80211_request_smps_mgd_work, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %27, i32 0, i32 14
  %29 = load i32, i32* @ieee80211_tdls_peer_del_work, align 4
  %30 = call i32 @INIT_DELAYED_WORK(i32* %28, i32 %29)
  %31 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %31, i32 0, i32 13
  %33 = load i32, i32* @ieee80211_sta_timer, align 4
  %34 = call i32 @timer_setup(i32* %32, i32 %33, i32 0)
  %35 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %35, i32 0, i32 12
  %37 = load i32, i32* @ieee80211_sta_bcn_mon_timer, align 4
  %38 = call i32 @timer_setup(i32* %36, i32 %37, i32 0)
  %39 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %39, i32 0, i32 11
  %41 = load i32, i32* @ieee80211_sta_conn_mon_timer, align 4
  %42 = call i32 @timer_setup(i32* %40, i32 %41, i32 0)
  %43 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %43, i32 0, i32 10
  %45 = load i32, i32* @ieee80211_chswitch_timer, align 4
  %46 = call i32 @timer_setup(i32* %44, i32 %45, i32 0)
  %47 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %47, i32 0, i32 9
  %49 = load i32, i32* @ieee80211_sta_handle_tspec_ac_params_wk, align 4
  %50 = call i32 @INIT_DELAYED_WORK(i32* %48, i32 %49)
  %51 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %51, i32 0, i32 8
  store i64 0, i64* %52, align 8
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %74 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 8
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NL80211_FEATURE_DYNAMIC_SMPS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %1
  %89 = load i32, i32* @IEEE80211_SMPS_AUTOMATIC, align 4
  %90 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %91 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  br label %96

92:                                               ; preds = %1
  %93 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  %94 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %95 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %98 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %97, i32 0, i32 3
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %101 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  %102 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %103 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %102, i32 0, i32 1
  store i32* null, i32** %103, align 8
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
