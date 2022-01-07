; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_iee80211_tdls_add_ch_switch_timing.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_iee80211_tdls_add_ch_switch_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ch_switch_timing = type { i8*, i8* }

@WLAN_EID_CHAN_SWITCH_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @iee80211_tdls_add_ch_switch_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iee80211_tdls_add_ch_switch_timing(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_ch_switch_timing*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @WLAN_EID_CHAN_SWITCH_TIMING, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %4, align 8
  store i32 16, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = bitcast i8* %14 to %struct.ieee80211_ch_switch_timing*
  store %struct.ieee80211_ch_switch_timing* %15, %struct.ieee80211_ch_switch_timing** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.ieee80211_ch_switch_timing*, %struct.ieee80211_ch_switch_timing** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_ch_switch_timing, %struct.ieee80211_ch_switch_timing* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.ieee80211_ch_switch_timing*, %struct.ieee80211_ch_switch_timing** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_ch_switch_timing, %struct.ieee80211_ch_switch_timing* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
