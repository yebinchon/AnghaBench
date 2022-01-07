; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rc_send_low_basicrate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rc_send_low_basicrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.ieee80211_supported_band*)* @rc_send_low_basicrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_send_low_basicrate(i32* %0, i32 %1, %struct.ieee80211_supported_band* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ieee80211_supported_band* %2, %struct.ieee80211_supported_band** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %47

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %47

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %47

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %44, %24
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  br label %47

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %28

47:                                               ; preds = %10, %15, %23, %40, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
