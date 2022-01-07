; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_copy_dfs_chan_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_copy_dfs_chan_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32, i64, i64, i32 }

@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@NL80211_DFS_USABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_channel*, %struct.ieee80211_channel*)* @reg_copy_dfs_chan_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_copy_dfs_chan_state(%struct.ieee80211_channel* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %5 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11, %2
  br label %59

19:                                               ; preds = %11
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %19
  br label %59

34:                                               ; preds = %26
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %34
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NL80211_DFS_USABLE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %18, %33, %48, %42, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
