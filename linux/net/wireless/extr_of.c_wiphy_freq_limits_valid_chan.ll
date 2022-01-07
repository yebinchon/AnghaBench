; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_of.c_wiphy_freq_limits_valid_chan.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_of.c_wiphy_freq_limits_valid_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_freq_range = type { i32 }
%struct.ieee80211_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.ieee80211_freq_range*, i32, %struct.ieee80211_channel*)* @wiphy_freq_limits_valid_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiphy_freq_limits_valid_chan(%struct.wiphy* %0, %struct.ieee80211_freq_range* %1, i32 %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.ieee80211_freq_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_freq_range*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.ieee80211_freq_range* %1, %struct.ieee80211_freq_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %9, align 8
  %13 = call i32 @MHZ_TO_KHZ(i32 20)
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %33, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %19, i64 %21
  store %struct.ieee80211_freq_range* %22, %struct.ieee80211_freq_range** %12, align 8
  %23 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @MHZ_TO_KHZ(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @cfg80211_does_bw_fit_range(%struct.ieee80211_freq_range* %23, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %37

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %14

36:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @MHZ_TO_KHZ(i32) #1

declare dso_local i64 @cfg80211_does_bw_fit_range(%struct.ieee80211_freq_range*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
