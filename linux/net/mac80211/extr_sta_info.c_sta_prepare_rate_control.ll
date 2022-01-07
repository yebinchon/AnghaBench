; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_prepare_rate_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_prepare_rate_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32 }
%struct.sta_info = type { i32, i32 }

@HAS_RATE_CONTROL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.sta_info*, i32)* @sta_prepare_rate_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_prepare_rate_control(%struct.ieee80211_local* %0, %struct.sta_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %8, i32 0, i32 1
  %10 = load i32, i32* @HAS_RATE_CONTROL, align 4
  %11 = call i64 @ieee80211_hw_check(i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @rate_control_alloc_sta(i32 %22, %struct.sta_info* %23, i32 %24)
  %26 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %14
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %32, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @rate_control_alloc_sta(i32, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
