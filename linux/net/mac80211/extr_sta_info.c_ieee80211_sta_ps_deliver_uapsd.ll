; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_ieee80211_sta_ps_deliver_uapsd.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_ieee80211_sta_ps_deliver_uapsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IEEE80211_FRAME_RELEASE_UAPSD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_ps_deliver_uapsd(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %6 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %25 [
    i32 1, label %21
    i32 2, label %22
    i32 3, label %23
    i32 0, label %24
  ]

21:                                               ; preds = %16
  store i32 2, i32* %3, align 4
  br label %25

22:                                               ; preds = %16
  store i32 4, i32* %3, align 4
  br label %25

23:                                               ; preds = %16
  store i32 6, i32* %3, align 4
  br label %25

24:                                               ; preds = %16
  store i32 128, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %24, %23, %22, %21
  %26 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @IEEE80211_FRAME_RELEASE_UAPSD, align 4
  %31 = call i32 @ieee80211_sta_ps_deliver_response(%struct.sta_info* %26, i32 %27, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %15
  ret void
}

declare dso_local i32 @ieee80211_sta_ps_deliver_response(%struct.sta_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
