; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_get_chans_dfs_usable.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_get_chans_dfs_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_DFS_UNAVAILABLE = common dso_local global i64 0, align 8
@NL80211_DFS_USABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i64, i64)* @cfg80211_get_chans_dfs_usable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_get_chans_dfs_usable(%struct.wiphy* %0, i64 %1, i64 %2) #0 {
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
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @cfg80211_get_end_freq(i64 %16, i64 %17)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %70, %3
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %25, i64 %26)
  store %struct.ieee80211_channel* %27, %struct.ieee80211_channel** %8, align 8
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %29 = icmp ne %struct.ieee80211_channel* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %75

33:                                               ; preds = %24
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %75

43:                                               ; preds = %33
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %43
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %52 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NL80211_DFS_UNAVAILABLE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %75

59:                                               ; preds = %50
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NL80211_DFS_USABLE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %65, %59
  br label %69

69:                                               ; preds = %68, %43
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, 20
  store i64 %72, i64* %9, align 8
  br label %20

73:                                               ; preds = %20
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %56, %40, %30
  %76 = load i32, i32* %4, align 4
  ret i32 %76
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
