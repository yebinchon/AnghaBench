; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_del_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_del_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__, i32*, %struct.ieee80211_local* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_local = type { i32, i32 }
%struct.sta_info = type { i32*, i32* }
%struct.ieee80211_key = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i64, i32, i64*)* @ieee80211_del_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_del_key(%struct.wiphy* %0, %struct.net_device* %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca %struct.ieee80211_key*, align 8
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %16)
  store %struct.ieee80211_sub_if_data* %17, %struct.ieee80211_sub_if_data** %11, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 2
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %19, align 8
  store %struct.ieee80211_local* %20, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_key* null, %struct.ieee80211_key** %14, align 8
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i64*, i64** %10, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %15, align 4
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %32, i64* %33)
  store %struct.sta_info* %34, %struct.sta_info** %13, align 8
  %35 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %36 = icmp ne %struct.sta_info* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %85

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %43 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local* %42, i32 %48)
  store %struct.ieee80211_key* %49, %struct.ieee80211_key** %14, align 8
  br label %59

50:                                               ; preds = %38
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %52 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local* %51, i32 %57)
  store %struct.ieee80211_key* %58, %struct.ieee80211_key** %14, align 8
  br label %59

59:                                               ; preds = %50, %41
  br label %69

60:                                               ; preds = %5
  %61 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local* %61, i32 %67)
  store %struct.ieee80211_key* %68, %struct.ieee80211_key** %14, align 8
  br label %69

69:                                               ; preds = %60, %59
  %70 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %71 = icmp ne %struct.ieee80211_key* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %15, align 4
  br label %85

75:                                               ; preds = %69
  %76 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @ieee80211_key_free(%struct.ieee80211_key* %76, i32 %83)
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %75, %72, %37
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %90 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %15, align 4
  ret i32 %92
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i64*) #1

declare dso_local %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_key_free(%struct.ieee80211_key*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
