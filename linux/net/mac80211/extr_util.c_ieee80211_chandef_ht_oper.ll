; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_chandef_ht_oper.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_chandef_ht_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ht_operation = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@IEEE80211_HT_PARAM_CHA_SEC_OFFSET = common dso_local global i32 0, align 4
@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40MINUS = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_chandef_ht_oper(%struct.ieee80211_ht_operation* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_ht_operation*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_ht_operation* %0, %struct.ieee80211_ht_operation** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %7 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %4, align 8
  %8 = icmp ne %struct.ieee80211_ht_operation* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_OFFSET, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %22 [
    i32 128, label %16
    i32 130, label %18
    i32 129, label %20
  ]

16:                                               ; preds = %10
  %17 = load i32, i32* @NL80211_CHAN_HT20, align 4
  store i32 %17, i32* %6, align 4
  br label %24

18:                                               ; preds = %10
  %19 = load i32, i32* @NL80211_CHAN_HT40PLUS, align 4
  store i32 %19, i32* %6, align 4
  br label %24

20:                                               ; preds = %10
  %21 = load i32, i32* @NL80211_CHAN_HT40MINUS, align 4
  store i32 %21, i32* %6, align 4
  br label %24

22:                                               ; preds = %10
  %23 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %31

24:                                               ; preds = %20, %18, %16
  %25 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %26 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %27 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %25, i32 %28, i32 %29)
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %22, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
