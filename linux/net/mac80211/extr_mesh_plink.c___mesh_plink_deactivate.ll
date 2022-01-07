; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c___mesh_plink_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c___mesh_plink_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_2__*, %struct.ieee80211_sub_if_data* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@NL80211_PLINK_BLOCKED = common dso_local global i64 0, align 8
@NL80211_MESH_POWER_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sta_info*)* @__mesh_plink_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mesh_plink_deactivate(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %6 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %5, i32 0, i32 1
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_sub_if_data* %7, %struct.ieee80211_sub_if_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %22 = call i32 @mesh_plink_dec_estab_count(%struct.ieee80211_sub_if_data* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i64, i64* @NL80211_PLINK_BLOCKED, align 8
  %25 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  %29 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %30 = call i32 @ieee80211_mps_sta_status_update(%struct.sta_info* %29)
  %31 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %32 = load i32, i32* @NL80211_MESH_POWER_UNKNOWN, align 4
  %33 = call i32 @ieee80211_mps_set_sta_local_pm(%struct.sta_info* %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @mesh_plink_dec_estab_count(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_mps_sta_status_update(%struct.sta_info*) #1

declare dso_local i32 @ieee80211_mps_set_sta_local_pm(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
