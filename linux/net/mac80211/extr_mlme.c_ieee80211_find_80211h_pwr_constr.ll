; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_find_80211h_pwr_constr.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_find_80211h_pwr_constr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_country_ie_triplet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IEEE80211_COUNTRY_IE_MIN_LEN = common dso_local global i32 0, align 4
@IEEE80211_COUNTRY_EXTENSION_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.ieee80211_channel*, i32*, i32, i32*, i32*, i32*)* @ieee80211_find_80211h_pwr_constr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_find_80211h_pwr_constr(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_channel* %1, i32* %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ieee80211_country_ie_triplet*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %9, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %23 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ieee80211_frequency_to_channel(i32 %24)
  store i32 %25, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %26 = load i32, i32* %12, align 4
  %27 = srem i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @IEEE80211_COUNTRY_IE_MIN_LEN, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %7
  store i32 0, i32* %8, align 4
  br label %111

34:                                               ; preds = %29
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = bitcast i32* %36 to i8*
  %38 = bitcast i8* %37 to %struct.ieee80211_country_ie_triplet*
  store %struct.ieee80211_country_ie_triplet* %38, %struct.ieee80211_country_ie_triplet** %16, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %39, 3
  store i32 %40, i32* %12, align 4
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %42 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %44 [
    i32 130, label %46
    i32 128, label %46
    i32 129, label %47
  ]

44:                                               ; preds = %34
  %45 = call i32 @WARN_ON_ONCE(i32 1)
  br label %46

46:                                               ; preds = %34, %34, %44
  store i32 1, i32* %19, align 4
  br label %48

47:                                               ; preds = %34
  store i32 4, i32* %19, align 4
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %92, %48
  %50 = load i32, i32* %12, align 4
  %51 = icmp sge i32 %50, 3
  br i1 %51, label %52, label %97

52:                                               ; preds = %49
  %53 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %16, align 8
  %54 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* @IEEE80211_COUNTRY_EXTENSION_ID, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %92

61:                                               ; preds = %52
  store i32 0, i32* %18, align 4
  br label %62

62:                                               ; preds = %84, %61
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %16, align 8
  %65 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %62
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %19, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %70, %73
  %75 = load i32, i32* %17, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  store i32 1, i32* %20, align 4
  %78 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %16, align 8
  %79 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %14, align 8
  store i32 %81, i32* %82, align 4
  br label %87

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %18, align 4
  br label %62

87:                                               ; preds = %77, %62
  %88 = load i32, i32* %20, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %97

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91, %60
  %93 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %16, align 8
  %94 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %93, i32 1
  store %struct.ieee80211_country_ie_triplet* %94, %struct.ieee80211_country_ie_triplet** %16, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sub nsw i32 %95, 3
  store i32 %96, i32* %12, align 4
  br label %49

97:                                               ; preds = %90, %49
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i32*, i32** %13, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %15, align 8
  store i32 %105, i32* %106, align 4
  br label %109

107:                                              ; preds = %100, %97
  %108 = load i32*, i32** %15, align 8
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32, i32* %20, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %109, %33
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
