; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ieee80211_i.h_ieee80211_have_rx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ieee80211_i.h_ieee80211_have_rx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_status = type { i32, i64 }

@RX_FLAG_MACTIME_START = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_PLCP_START = common dso_local global i32 0, align 4
@RX_ENC_LEGACY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_status*)* @ieee80211_have_rx_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ieee80211_rx_status* %0, %struct.ieee80211_rx_status** %3, align 8
  %4 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %5 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @RX_FLAG_MACTIME_START, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i1 [ false, %1 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RX_FLAG_MACTIME_START, align 4
  %25 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %45

30:                                               ; preds = %17
  %31 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RX_FLAG_MACTIME_PLCP_START, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RX_ENC_LEGACY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %45

44:                                               ; preds = %37, %30
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43, %29
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
