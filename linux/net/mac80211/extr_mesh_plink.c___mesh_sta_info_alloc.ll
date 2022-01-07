; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c___mesh_sta_info_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c___mesh_sta_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@MESH_MAX_PLINKS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@NL80211_PLINK_LISTEN = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTHORIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sta_info* (%struct.ieee80211_sub_if_data*, i32*)* @__mesh_sta_info_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sta_info* @__mesh_sta_info_alloc(%struct.ieee80211_sub_if_data* %0, i32* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MESH_MAX_PLINKS, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.sta_info* null, %struct.sta_info** %3, align 8
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %18 = call i32 @mesh_allocate_aid(%struct.ieee80211_sub_if_data* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.sta_info* null, %struct.sta_info** %3, align 8
  br label %53

22:                                               ; preds = %16
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data* %23, i32* %24, i32 %25)
  store %struct.sta_info* %26, %struct.sta_info** %6, align 8
  %27 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %28 = icmp ne %struct.sta_info* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store %struct.sta_info* null, %struct.sta_info** %3, align 8
  br label %53

30:                                               ; preds = %22
  %31 = load i32, i32* @NL80211_PLINK_LISTEN, align 4
  %32 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %37 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %44 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %45 = call i32 @sta_info_pre_move_state(%struct.sta_info* %43, i32 %44)
  %46 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %47 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %48 = call i32 @sta_info_pre_move_state(%struct.sta_info* %46, i32 %47)
  %49 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %50 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %51 = call i32 @sta_info_pre_move_state(%struct.sta_info* %49, i32 %50)
  %52 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  store %struct.sta_info* %52, %struct.sta_info** %3, align 8
  br label %53

53:                                               ; preds = %30, %29, %21, %15
  %54 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  ret %struct.sta_info* %54
}

declare dso_local i32 @mesh_allocate_aid(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @sta_info_pre_move_state(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
