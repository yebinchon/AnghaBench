; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sta_info = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_EXT_KEY_ID = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_NO_AUTO_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i64*, i64)* @ieee80211_set_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_tx(%struct.ieee80211_sub_if_data* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.ieee80211_key*, align 8
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %8, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NL80211_EXT_FEATURE_EXT_KEY_ID, align 4
  %22 = call i32 @wiphy_ext_feature_isset(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %73

27:                                               ; preds = %3
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %28, i64* %29)
  store %struct.sta_info* %30, %struct.sta_info** %10, align 8
  %31 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %32 = icmp ne %struct.sta_info* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %73

36:                                               ; preds = %27
  %37 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %73

43:                                               ; preds = %36
  %44 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %45 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %48 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local* %47, i32 %53)
  store %struct.ieee80211_key* %54, %struct.ieee80211_key** %9, align 8
  %55 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %56 = icmp ne %struct.ieee80211_key* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %43
  %58 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %59 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IEEE80211_KEY_FLAG_NO_AUTO_TX, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %67 = call i32 @ieee80211_set_tx_key(%struct.ieee80211_key* %66)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %65, %57, %43
  %69 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %42, %33, %24
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @wiphy_ext_feature_isset(i32, i32) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ieee80211_key* @key_mtx_dereference(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_set_tx_key(%struct.ieee80211_key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
