; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_edmg_usable.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_edmg_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_edmg = type { i32, i32 }
%struct.ieee80211_channel = type { i32 }

@NL80211_BAND_60GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i32, i32, i32, %struct.ieee80211_edmg*)* @cfg80211_edmg_usable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_edmg_usable(%struct.wiphy* %0, i32 %1, i32 %2, i32 %3, %struct.ieee80211_edmg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_edmg*, align 8
  %12 = alloca %struct.ieee80211_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ieee80211_edmg* %4, %struct.ieee80211_edmg** %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %108

22:                                               ; preds = %18, %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %25
  store i32 0, i32* %6, align 4
  br label %108

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %108

43:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %84, %43
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 6
  br i1 %46, label %47, label %87

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %84

54:                                               ; preds = %47
  %55 = load %struct.ieee80211_edmg*, %struct.ieee80211_edmg** %11, align 8
  %56 = getelementptr inbounds %struct.ieee80211_edmg, %struct.ieee80211_edmg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %108

63:                                               ; preds = %54
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* @NL80211_BAND_60GHZ, align 4
  %69 = call i32 @ieee80211_channel_to_frequency(i32 %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %70, i32 %71)
  store %struct.ieee80211_channel* %72, %struct.ieee80211_channel** %12, align 8
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %74 = icmp ne %struct.ieee80211_channel* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %63
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75, %63
  store i32 0, i32* %6, align 4
  br label %108

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %53
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %44

87:                                               ; preds = %44
  %88 = load i32, i32* %15, align 4
  %89 = icmp sgt i32 %88, 4
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  br label %108

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = urem i32 %92, 4
  %94 = load %struct.ieee80211_edmg*, %struct.ieee80211_edmg** %11, align 8
  %95 = getelementptr inbounds %struct.ieee80211_edmg, %struct.ieee80211_edmg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = srem i32 %96, 4
  %98 = icmp ugt i32 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %108

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.ieee80211_edmg*, %struct.ieee80211_edmg** %11, align 8
  %103 = getelementptr inbounds %struct.ieee80211_edmg, %struct.ieee80211_edmg* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ugt i32 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 0, i32* %6, align 4
  br label %108

107:                                              ; preds = %100
  store i32 1, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %106, %99, %90, %82, %62, %42, %34, %21
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
