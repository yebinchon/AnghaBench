; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_is_bss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_is_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_bss = type { i32, i32 }
%struct.cfg80211_bss_ies = type { i32, i32 }

@WLAN_EID_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_bss*, i64*, i64*, i64)* @is_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_bss(%struct.cfg80211_bss* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_bss*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cfg80211_bss_ies*, align 8
  %11 = alloca i64*, align 8
  store %struct.cfg80211_bss* %0, %struct.cfg80211_bss** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %16 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i64*, i64** %7, align 8
  %19 = call i32 @ether_addr_equal(i32 %17, i64* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %61

22:                                               ; preds = %14, %4
  %23 = load i64*, i64** %8, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %61

26:                                               ; preds = %22
  %27 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %28 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.cfg80211_bss_ies* @rcu_access_pointer(i32 %29)
  store %struct.cfg80211_bss_ies* %30, %struct.cfg80211_bss_ies** %10, align 8
  %31 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %32 = icmp ne %struct.cfg80211_bss_ies* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %61

34:                                               ; preds = %26
  %35 = load i32, i32* @WLAN_EID_SSID, align 4
  %36 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %37 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %40 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64* @cfg80211_find_ie(i32 %35, i32 %38, i32 %41)
  store i64* %42, i64** %11, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %61

46:                                               ; preds = %34
  %47 = load i64*, i64** %11, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %61

53:                                               ; preds = %46
  %54 = load i64*, i64** %11, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @memcmp(i64* %55, i64* %56, i64 %57)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %53, %52, %45, %33, %25, %21
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @ether_addr_equal(i32, i64*) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_access_pointer(i32) #1

declare dso_local i64* @cfg80211_find_ie(i32, i32, i32) #1

declare dso_local i64 @memcmp(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
