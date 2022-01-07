; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c__cfg80211_reg_can_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c__cfg80211_reg_can_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_chan_def*, i32, i32)* @_cfg80211_reg_can_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cfg80211_reg_can_beacon(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %12 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %15 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @trace_cfg80211_reg_can_beacon(%struct.wiphy* %14, %struct.cfg80211_chan_def* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %21, %4
  %26 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %27 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @cfg80211_chandef_dfs_required(%struct.wiphy* %26, %struct.cfg80211_chan_def* %27, i32 %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %33 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %34 = call i64 @cfg80211_chandef_dfs_available(%struct.wiphy* %32, %struct.cfg80211_chan_def* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %36, %31, %25
  %39 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %40 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @cfg80211_chandef_usable(%struct.wiphy* %39, %struct.cfg80211_chan_def* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @trace_cfg80211_return_bool(i32 %43)
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @trace_cfg80211_reg_can_beacon(%struct.wiphy*, %struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i64 @cfg80211_chandef_dfs_required(%struct.wiphy*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i64 @cfg80211_chandef_dfs_available(%struct.wiphy*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_usable(%struct.wiphy*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @trace_cfg80211_return_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
