; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_get_chans_dfs_cac_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_get_chans_dfs_cac_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }

@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i64, i64)* @cfg80211_get_chans_dfs_cac_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_get_chans_dfs_cac_time(%struct.wiphy* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @cfg80211_get_start_freq(i64 %13, i64 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @cfg80211_get_end_freq(i64 %16, i64 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %9, align 8
  store i64 %19, i64* %11, align 8
  br label %20

20:                                               ; preds = %58, %3
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %25, i64 %26)
  store %struct.ieee80211_channel* %27, %struct.ieee80211_channel** %8, align 8
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %29 = icmp ne %struct.ieee80211_channel* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %63

31:                                               ; preds = %24
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %63

39:                                               ; preds = %31
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %58

47:                                               ; preds = %39
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %53, %47
  br label %58

58:                                               ; preds = %57, %46
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %59, 20
  store i64 %60, i64* %11, align 8
  br label %20

61:                                               ; preds = %20
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %38, %30
  %64 = load i32, i32* %4, align 4
  ret i32 %64
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
