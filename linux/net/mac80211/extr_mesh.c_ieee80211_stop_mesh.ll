; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_stop_mesh.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_stop_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, %struct.ieee80211_local* }
%struct.TYPE_10__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i64, i32, i32, i32, %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_local = type { i32, i32, i32 }
%struct.beacon_data = type { i32 }

@SDATA_STATE_OFFCHANNEL_BEACON_STOPPED = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_stop_mesh(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_if_mesh*, align 8
  %5 = alloca %struct.beacon_data*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %6 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %6, i32 0, i32 5
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  store %struct.ieee80211_local* %8, %struct.ieee80211_local** %3, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %11, %struct.ieee80211_if_mesh** %4, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @netif_carrier_off(i32 %14)
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %17 = call i32 @sta_info_flush(%struct.ieee80211_sub_if_data* %16)
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %19 = call i32 @ieee80211_free_keys(%struct.ieee80211_sub_if_data* %18, i32 1)
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %21 = call i32 @mesh_path_flush_by_iface(%struct.ieee80211_sub_if_data* %20)
  %22 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* @SDATA_STATE_OFFCHANNEL_BEACON_STOPPED, align 4
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 2
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %33 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %34 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %32, i32 %33)
  %35 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = call i32 @lockdep_is_held(i32* %40)
  %42 = call %struct.beacon_data* @rcu_dereference_protected(i32 %37, i32 %41)
  store %struct.beacon_data* %42, %struct.beacon_data** %5, align 8
  %43 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @RCU_INIT_POINTER(i32 %45, i32* null)
  %47 = load %struct.beacon_data*, %struct.beacon_data** %5, align 8
  %48 = load i32, i32* @rcu_head, align 4
  %49 = call i32 @kfree_rcu(%struct.beacon_data* %47, i32 %48)
  %50 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = call i64 @skb_queue_len(i32* %52)
  %54 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %61 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = call i32 @skb_queue_purge(i32* %62)
  %64 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %66, i32 0, i32 4
  %68 = call i32 @del_timer_sync(i32* %67)
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %71, i32 0, i32 3
  %73 = call i32 @del_timer_sync(i32* %72)
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %76, i32 0, i32 2
  %78 = call i32 @del_timer_sync(i32* %77)
  %79 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %80 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %84 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %88 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %87, i32 0, i32 0
  %89 = call i32 @atomic_dec(i32* %88)
  %90 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %91 = call i32 @ieee80211_configure_filter(%struct.ieee80211_local* %90)
  ret void
}

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @sta_info_flush(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_free_keys(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @mesh_path_flush_by_iface(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local %struct.beacon_data* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.beacon_data*, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ieee80211_configure_filter(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
