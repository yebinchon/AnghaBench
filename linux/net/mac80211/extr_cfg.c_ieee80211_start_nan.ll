; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_start_nan.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_start_nan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_nan_conf = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cfg80211_nan_conf }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, %struct.cfg80211_nan_conf*)* @ieee80211_start_nan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_start_nan(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.cfg80211_nan_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.cfg80211_nan_conf*, align 8
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store %struct.cfg80211_nan_conf* %2, %struct.cfg80211_nan_conf** %7, align 8
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %11 = call %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev* %10)
  store %struct.ieee80211_sub_if_data* %11, %struct.ieee80211_sub_if_data** %8, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %18 = call i32 @ieee80211_check_combinations(%struct.ieee80211_sub_if_data* %17, i32* null, i32 0, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %56

28:                                               ; preds = %3
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %30 = call i32 @ieee80211_do_open(%struct.wireless_dev* %29, i32 1)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %56

35:                                               ; preds = %28
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %40 = load %struct.cfg80211_nan_conf*, %struct.cfg80211_nan_conf** %7, align 8
  %41 = call i32 @drv_start_nan(%struct.TYPE_6__* %38, %struct.ieee80211_sub_if_data* %39, %struct.cfg80211_nan_conf* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %46 = call i32 @ieee80211_sdata_stop(%struct.ieee80211_sub_if_data* %45)
  br label %47

47:                                               ; preds = %44, %35
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.cfg80211_nan_conf*, %struct.cfg80211_nan_conf** %7, align 8
  %53 = bitcast %struct.cfg80211_nan_conf* %51 to i8*
  %54 = bitcast %struct.cfg80211_nan_conf* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %47, %33, %26
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_check_combinations(%struct.ieee80211_sub_if_data*, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_do_open(%struct.wireless_dev*, i32) #1

declare dso_local i32 @drv_start_nan(%struct.TYPE_6__*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_nan_conf*) #1

declare dso_local i32 @ieee80211_sdata_stop(%struct.ieee80211_sub_if_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
