; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_get_chans_dfs_required.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_get_chans_dfs_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i64, i64)* @cfg80211_get_chans_dfs_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_get_chans_dfs_required(%struct.wiphy* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @cfg80211_get_start_freq(i64 %12, i64 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @cfg80211_get_end_freq(i64 %15, i64 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %41, %3
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %24, i64 %25)
  store %struct.ieee80211_channel* %26, %struct.ieee80211_channel** %8, align 8
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %28 = icmp ne %struct.ieee80211_channel* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %45

32:                                               ; preds = %23
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %45

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, 20
  store i64 %43, i64* %9, align 8
  br label %19

44:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %39, %29
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @cfg80211_get_start_freq(i64, i64) #1

declare dso_local i64 @cfg80211_get_end_freq(i64, i64) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
