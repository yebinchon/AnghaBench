; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_start_mesh.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_start_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_8__, i32, %struct.ieee80211_local*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211_local = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.TYPE_6__, i32, i64, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_MCAST_RATE = common dso_local global i32 0, align 4
@MESH_WORK_HOUSEKEEPING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_start_mesh(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_if_mesh*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %9, %struct.ieee80211_if_mesh** %4, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 3
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  store %struct.ieee80211_local* %12, %struct.ieee80211_local** %5, align 8
  %13 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %14 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @BSS_CHANGED_HT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BSS_CHANGED_MCAST_RATE, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %28, i32 0, i32 1
  %30 = call i32 @atomic_inc(i32* %29)
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %32 = call i32 @ieee80211_configure_filter(%struct.ieee80211_local* %31)
  %33 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ieee80211_mesh_sync_ops_get(i32 %37)
  %39 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @MESH_WORK_HOUSEKEEPING, align 4
  %44 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %44, i32 0, i32 1
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  %47 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %48 = call i32 @ieee80211_mesh_root_setup(%struct.ieee80211_if_mesh* %47)
  %49 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %49, i32 0, i32 0
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 2
  %53 = call i32 @ieee80211_queue_work(i32* %50, i32* %52)
  %54 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %67 = call i32 @ieee80211_mps_local_status_update(%struct.ieee80211_sub_if_data* %66)
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %71 = call i64 @ieee80211_mesh_build_beacon(%struct.ieee80211_if_mesh* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %1
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %75 = call i32 @ieee80211_stop_mesh(%struct.ieee80211_sub_if_data* %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %89

78:                                               ; preds = %1
  %79 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %81 = call i32 @ieee80211_recalc_dtim(%struct.ieee80211_local* %79, %struct.ieee80211_sub_if_data* %80)
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %82, i32 %83)
  %85 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @netif_carrier_on(i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %78, %73
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ieee80211_configure_filter(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_mesh_sync_ops_get(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_mesh_root_setup(%struct.ieee80211_if_mesh*) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

declare dso_local i32 @ieee80211_mps_local_status_update(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @ieee80211_mesh_build_beacon(%struct.ieee80211_if_mesh*) #1

declare dso_local i32 @ieee80211_stop_mesh(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_recalc_dtim(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
