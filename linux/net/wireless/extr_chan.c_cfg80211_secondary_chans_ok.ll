; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_secondary_chans_ok.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_secondary_chans_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i64, i64, i64)* @cfg80211_secondary_chans_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_secondary_chans_ok(%struct.wiphy* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @cfg80211_get_start_freq(i64 %14, i64 %15)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @cfg80211_get_end_freq(i64 %17, i64 %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %12, align 8
  store i64 %20, i64* %11, align 8
  br label %21

21:                                               ; preds = %40, %4
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %13, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %26, i64 %27)
  store %struct.ieee80211_channel* %28, %struct.ieee80211_channel** %10, align 8
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %30 = icmp ne %struct.ieee80211_channel* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %25
  store i32 0, i32* %5, align 4
  br label %44

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %11, align 8
  %42 = add nsw i64 %41, 20
  store i64 %42, i64* %11, align 8
  br label %21

43:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %5, align 4
  ret i32 %45
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
