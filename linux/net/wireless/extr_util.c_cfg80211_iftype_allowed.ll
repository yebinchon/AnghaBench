; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_iftype_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_iftype_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32, i32 }

@NL80211_IFTYPE_AP_VLAN = common dso_local global i32 0, align 4
@WIPHY_FLAG_4ADDR_AP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_iftype_allowed(%struct.wiphy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @NL80211_IFTYPE_AP_VLAN, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %59 [
    i32 0, label %16
    i32 1, label %35
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %24 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WIPHY_FLAG_4ADDR_AP, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %5, align 4
  br label %61

28:                                               ; preds = %19, %16
  %29 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %30 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %31, %33
  store i32 %34, i32* %5, align 4
  br label %61

35:                                               ; preds = %4
  %36 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %37 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %48 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WIPHY_FLAG_4ADDR_AP, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %5, align 4
  br label %61

52:                                               ; preds = %43, %35
  %53 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %54 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = and i32 %55, %57
  store i32 %58, i32* %5, align 4
  br label %61

59:                                               ; preds = %4
  br label %60

60:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %52, %46, %28, %22
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
