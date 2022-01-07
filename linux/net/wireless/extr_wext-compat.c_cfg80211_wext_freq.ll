; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_freq.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_freq = type { i64, i32 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_wext_freq(%struct.iw_freq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iw_freq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iw_freq* %0, %struct.iw_freq** %3, align 8
  %7 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %8 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %14 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %57

18:                                               ; preds = %11
  %19 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %20 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 14
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %18
  %26 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %27 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ieee80211_channel_to_frequency(i32 %28, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %57

31:                                               ; preds = %1
  store i32 1000000, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %42, %31
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %36 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = sdiv i32 %40, 10
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %32

45:                                               ; preds = %32
  %46 = load i32, i32* %6, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %57

51:                                               ; preds = %45
  %52 = load %struct.iw_freq*, %struct.iw_freq** %3, align 8
  %53 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %48, %25, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
