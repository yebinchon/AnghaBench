; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_ieee80211_mps_set_sta_local_pm.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_ieee80211_mps_set_sta_local_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"local STA operates in mode %d with %pM\0A\00", align 1
@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mps_set_sta_local_pm(%struct.sta_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 2
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  store %struct.ieee80211_sub_if_data* %9, %struct.ieee80211_sub_if_data** %6, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mps_dbg(%struct.ieee80211_sub_if_data* %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %18
  %39 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %40 = call i32 @mps_qos_null_tx(%struct.sta_info* %39)
  br label %41

41:                                               ; preds = %38, %18
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %43 = call i32 @ieee80211_mps_local_status_update(%struct.ieee80211_sub_if_data* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mps_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, i32) #1

declare dso_local i32 @mps_qos_null_tx(%struct.sta_info*) #1

declare dso_local i32 @ieee80211_mps_local_status_update(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
