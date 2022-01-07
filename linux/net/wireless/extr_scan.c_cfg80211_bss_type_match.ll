; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_bss_type_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_bss_type_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_BSS_TYPE_ANY = common dso_local global i32 0, align 4
@NL80211_BAND_60GHZ = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_DMG_TYPE_MASK = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_DMG_TYPE_AP = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_DMG_TYPE_PBSS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_DMG_TYPE_IBSS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cfg80211_bss_type_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_bss_type_match(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @IEEE80211_BSS_TYPE_ANY, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %51

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NL80211_BAND_60GHZ, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* @WLAN_CAPABILITY_DMG_TYPE_MASK, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %29 [
    i32 131, label %23
    i32 128, label %25
    i32 130, label %27
  ]

23:                                               ; preds = %20
  %24 = load i32, i32* @WLAN_CAPABILITY_DMG_TYPE_AP, align 4
  store i32 %24, i32* %10, align 4
  br label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @WLAN_CAPABILITY_DMG_TYPE_PBSS, align 4
  store i32 %26, i32* %10, align 4
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @WLAN_CAPABILITY_DMG_TYPE_IBSS, align 4
  store i32 %28, i32* %10, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %51

30:                                               ; preds = %27, %25, %23
  br label %43

31:                                               ; preds = %16
  %32 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %33 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %41 [
    i32 131, label %36
    i32 130, label %38
    i32 129, label %40
  ]

36:                                               ; preds = %31
  %37 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  store i32 %37, i32* %10, align 4
  br label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  store i32 %39, i32* %10, align 4
  br label %42

40:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %51

42:                                               ; preds = %40, %38, %36
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %41, %29, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
