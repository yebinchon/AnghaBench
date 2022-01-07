; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_calc_rate_durations.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_calc_rate_durations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_rate = type { i8*, i8* }
%struct.ieee80211_rate = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32 }

@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.minstrel_rate*, %struct.ieee80211_rate*, %struct.cfg80211_chan_def*)* @calc_rate_durations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_rate_durations(i32 %0, %struct.minstrel_rate* %1, %struct.ieee80211_rate* %2, %struct.cfg80211_chan_def* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.minstrel_rate*, align 8
  %7 = alloca %struct.ieee80211_rate*, align 8
  %8 = alloca %struct.cfg80211_chan_def*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.minstrel_rate* %1, %struct.minstrel_rate** %6, align 8
  store %struct.ieee80211_rate* %2, %struct.ieee80211_rate** %7, align 8
  store %struct.cfg80211_chan_def* %3, %struct.cfg80211_chan_def** %8, align 8
  %11 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %21 = call i32 @ieee80211_chandef_get_shift(%struct.cfg80211_chan_def* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = shl i32 1, %26
  %28 = call i32 @DIV_ROUND_UP(i32 %25, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @ieee80211_frame_duration(i32 %22, i32 1200, i32 %28, i32 %29, i32 1, i32 %30)
  %32 = load %struct.minstrel_rate*, %struct.minstrel_rate** %6, align 8
  %33 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 1, %38
  %40 = call i32 @DIV_ROUND_UP(i32 %37, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i8* @ieee80211_frame_duration(i32 %34, i32 10, i32 %40, i32 %41, i32 1, i32 %42)
  %44 = load %struct.minstrel_rate*, %struct.minstrel_rate** %6, align 8
  %45 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  ret void
}

declare dso_local i32 @ieee80211_chandef_get_shift(%struct.cfg80211_chan_def*) #1

declare dso_local i8* @ieee80211_frame_duration(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
