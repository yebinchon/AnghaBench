; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tkip.c_ieee80211_get_tkip_rx_p1k.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tkip.c_ieee80211_get_tkip_rx_p1k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key_conf = type { i32* }
%struct.tkip_ctx = type { i32 }

@NL80211_TKIP_DATA_OFFSET_ENCR_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_get_tkip_rx_p1k(%struct.ieee80211_key_conf* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_key_conf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tkip_ctx, align 4
  store %struct.ieee80211_key_conf* %0, %struct.ieee80211_key_conf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @NL80211_TKIP_DATA_OFFSET_ENCR_KEY, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @tkip_mixing_phase1(i32* %16, %struct.tkip_ctx* %10, i32* %17, i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds %struct.tkip_ctx, %struct.tkip_ctx* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32* %20, i32 %22, i32 4)
  ret void
}

declare dso_local i32 @tkip_mixing_phase1(i32*, %struct.tkip_ctx*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
