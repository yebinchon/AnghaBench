; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_led.c_ieee80211_led_radio.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_led.c_ieee80211_led_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32 }

@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_led_radio(%struct.ieee80211_local* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %5, i32 0, i32 1
  %7 = call i32 @atomic_read(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %23

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 0
  %16 = load i32, i32* @LED_FULL, align 4
  %17 = call i32 @led_trigger_event(i32* %15, i32 %16)
  br label %23

18:                                               ; preds = %10
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 0
  %21 = load i32, i32* @LED_OFF, align 4
  %22 = call i32 @led_trigger_event(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %9, %18, %13
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @led_trigger_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
