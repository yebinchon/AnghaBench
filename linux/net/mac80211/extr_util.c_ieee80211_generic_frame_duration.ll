; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_generic_frame_duration.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_generic_frame_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_rate = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_SDATA_OPERATING_GMODE = common dso_local global i32 0, align 4
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_generic_frame_duration(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, i64 %3, %struct.ieee80211_rate* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_rate*, align 8
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.ieee80211_rate* %4, %struct.ieee80211_rate** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %17 = icmp ne %struct.ieee80211_vif* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %5
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %20 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %19)
  store %struct.ieee80211_sub_if_data* %20, %struct.ieee80211_sub_if_data** %11, align 8
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_SDATA_OPERATING_GMODE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %18
  %33 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %32, %18
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %40 = call i32 @ieee80211_vif_get_shift(%struct.ieee80211_vif* %39)
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %38, %5
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @ieee80211_frame_duration(i32 %42, i64 %43, i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @cpu_to_le16(i32 %51)
  ret i32 %52
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_vif_get_shift(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_frame_duration(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
