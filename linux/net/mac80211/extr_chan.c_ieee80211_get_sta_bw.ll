; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_get_sta_bw.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_get_sta_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NL80211_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_40 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_160 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_get_sta_bw(%struct.ieee80211_sta* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sta*, align 8
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %3, align 8
  %4 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 130, label %7
    i32 129, label %17
    i32 128, label %19
    i32 131, label %21
  ]

7:                                                ; preds = %1
  %8 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load i32, i32* @NL80211_CHAN_WIDTH_20, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %7
  %16 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @NL80211_CHAN_WIDTH_160, align 4
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = call i32 @WARN_ON(i32 1)
  %25 = load i32, i32* @NL80211_CHAN_WIDTH_20, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %21, %19, %17, %15, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
