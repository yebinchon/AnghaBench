; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_inform_bss_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_inform_bss_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_bss = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_inform_bss = type { i32 }
%struct.cfg80211_non_tx_bss = type { %struct.cfg80211_bss* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cfg80211_bss* @cfg80211_inform_bss_data(%struct.wiphy* %0, %struct.cfg80211_inform_bss* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32* %7, i64 %8, i32 %9) #0 {
  %11 = alloca %struct.cfg80211_bss*, align 8
  %12 = alloca %struct.wiphy*, align 8
  %13 = alloca %struct.cfg80211_inform_bss*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.cfg80211_bss*, align 8
  %23 = alloca %struct.cfg80211_non_tx_bss, align 8
  store %struct.wiphy* %0, %struct.wiphy** %12, align 8
  store %struct.cfg80211_inform_bss* %1, %struct.cfg80211_inform_bss** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  %24 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %25 = load %struct.cfg80211_inform_bss*, %struct.cfg80211_inform_bss** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %18, align 4
  %31 = load i32*, i32** %19, align 8
  %32 = load i64, i64* %20, align 8
  %33 = load i32, i32* %21, align 4
  %34 = call %struct.cfg80211_bss* @cfg80211_inform_single_bss_data(%struct.wiphy* %24, %struct.cfg80211_inform_bss* %25, i32 %26, i32* %27, i32 %28, i32 %29, i32 %30, i32* %31, i64 %32, i32* null, i32 %33)
  store %struct.cfg80211_bss* %34, %struct.cfg80211_bss** %22, align 8
  %35 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %22, align 8
  %36 = icmp ne %struct.cfg80211_bss* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %10
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %11, align 8
  br label %52

38:                                               ; preds = %10
  %39 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %22, align 8
  %40 = getelementptr inbounds %struct.cfg80211_non_tx_bss, %struct.cfg80211_non_tx_bss* %23, i32 0, i32 0
  store %struct.cfg80211_bss* %39, %struct.cfg80211_bss** %40, align 8
  %41 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %42 = load %struct.cfg80211_inform_bss*, %struct.cfg80211_inform_bss** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32*, i32** %19, align 8
  %48 = load i64, i64* %20, align 8
  %49 = load i32, i32* %21, align 4
  %50 = call i32 @cfg80211_parse_mbssid_data(%struct.wiphy* %41, %struct.cfg80211_inform_bss* %42, i32 %43, i32* %44, i32 %45, i32 %46, i32* %47, i64 %48, %struct.cfg80211_non_tx_bss* %23, i32 %49)
  %51 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %22, align 8
  store %struct.cfg80211_bss* %51, %struct.cfg80211_bss** %11, align 8
  br label %52

52:                                               ; preds = %38, %37
  %53 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %11, align 8
  ret %struct.cfg80211_bss* %53
}

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_single_bss_data(%struct.wiphy*, %struct.cfg80211_inform_bss*, i32, i32*, i32, i32, i32, i32*, i64, i32*, i32) #1

declare dso_local i32 @cfg80211_parse_mbssid_data(%struct.wiphy*, %struct.cfg80211_inform_bss*, i32, i32*, i32, i32, i32*, i64, %struct.cfg80211_non_tx_bss*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
