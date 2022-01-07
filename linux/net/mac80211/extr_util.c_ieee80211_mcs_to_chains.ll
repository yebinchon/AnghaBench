; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_mcs_to_chains.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_mcs_to_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_mcs_info = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mcs_to_chains(%struct.ieee80211_mcs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_mcs_info*, align 8
  store %struct.ieee80211_mcs_info* %0, %struct.ieee80211_mcs_info** %3, align 8
  %4 = load %struct.ieee80211_mcs_info*, %struct.ieee80211_mcs_info** %3, align 8
  %5 = icmp ne %struct.ieee80211_mcs_info* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %32

7:                                                ; preds = %1
  %8 = load %struct.ieee80211_mcs_info*, %struct.ieee80211_mcs_info** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_mcs_info, %struct.ieee80211_mcs_info* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 4, i32* %2, align 4
  br label %32

15:                                               ; preds = %7
  %16 = load %struct.ieee80211_mcs_info*, %struct.ieee80211_mcs_info** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_mcs_info, %struct.ieee80211_mcs_info* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 3, i32* %2, align 4
  br label %32

23:                                               ; preds = %15
  %24 = load %struct.ieee80211_mcs_info*, %struct.ieee80211_mcs_info** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_mcs_info, %struct.ieee80211_mcs_info* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 2, i32* %2, align 4
  br label %32

31:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30, %22, %14, %6
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
