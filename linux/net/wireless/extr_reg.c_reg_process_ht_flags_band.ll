; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_ht_flags_band.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_ht_flags_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_supported_band = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.ieee80211_supported_band*)* @reg_process_ht_flags_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_process_ht_flags_band(%struct.wiphy* %0, %struct.ieee80211_supported_band* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.ieee80211_supported_band*, align 8
  %5 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %4, align 8
  %6 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %7 = icmp ne %struct.ieee80211_supported_band* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %28

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %9
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @reg_process_ht_flags_channel(%struct.wiphy* %17, i32* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %10

28:                                               ; preds = %8, %10
  ret void
}

declare dso_local i32 @reg_process_ht_flags_channel(%struct.wiphy*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
