; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_restore_custom_reg_settings.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_restore_custom_reg_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32, i32, i32, i32, i32, i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*)* @restore_custom_reg_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_custom_reg_settings(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.ieee80211_supported_band*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %57, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %7
  %12 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %13 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, i64 %16
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  store %struct.ieee80211_supported_band* %18, %struct.ieee80211_supported_band** %3, align 8
  %19 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %20 = icmp ne %struct.ieee80211_supported_band* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %57

22:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 1
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i64 %34
  store %struct.ieee80211_channel* %35, %struct.ieee80211_channel** %5, align 8
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %29
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %23

56:                                               ; preds = %23
  br label %57

57:                                               ; preds = %56, %21
  %58 = load i32, i32* %4, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %7

60:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
