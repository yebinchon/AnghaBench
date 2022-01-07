; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_does_bw_fit_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_does_bw_fit_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_freq_range = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_does_bw_fit_range(%struct.ieee80211_freq_range* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_freq_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_freq_range* %0, %struct.ieee80211_freq_range** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sdiv i32 %11, 2
  %13 = sub nsw i32 %10, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sdiv i32 %15, 2
  %17 = add nsw i32 %14, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %31

30:                                               ; preds = %23, %3
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
