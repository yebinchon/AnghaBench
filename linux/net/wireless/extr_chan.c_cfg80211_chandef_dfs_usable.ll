; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_chandef_dfs_usable.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_chandef_dfs_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_chandef_dfs_usable(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %10 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %19 = call i32 @cfg80211_chandef_get_width(%struct.cfg80211_chan_def* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %66

23:                                               ; preds = %17
  %24 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %25 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %26 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @cfg80211_get_chans_dfs_usable(%struct.wiphy* %24, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %66

33:                                               ; preds = %23
  %34 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %35 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %55 [
    i32 128, label %37
  ]

37:                                               ; preds = %33
  %38 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %39 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON(i32 %43)
  %45 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %46 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %47 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @cfg80211_get_chans_dfs_usable(%struct.wiphy* %45, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %66

54:                                               ; preds = %37
  br label %60

55:                                               ; preds = %33
  %56 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %57 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @WARN_ON(i32 %58)
  br label %60

60:                                               ; preds = %55, %54
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  %64 = icmp sgt i32 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %53, %32, %22, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_get_width(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_get_chans_dfs_usable(%struct.wiphy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
