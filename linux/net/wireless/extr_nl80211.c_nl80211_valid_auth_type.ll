; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_valid_auth_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_valid_auth_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NL80211_AUTHTYPE_MAX = common dso_local global i32 0, align 4
@NL80211_FEATURE_SAE = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_SAE = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_FILS_STA = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_FILS_SK = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_FILS_SK_PFS = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_FILS_PK = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_SAE_OFFLOAD = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_FILS_SK_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, i32, i32)* @nl80211_valid_auth_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_valid_auth_type(%struct.cfg80211_registered_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NL80211_AUTHTYPE_MAX, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %107

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %106 [
    i32 130, label %14
    i32 129, label %47
    i32 128, label %87
  ]

14:                                               ; preds = %12
  %15 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %16 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NL80211_FEATURE_SAE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NL80211_AUTHTYPE_SAE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %107

27:                                               ; preds = %22, %14
  %28 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %29 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %28, i32 0, i32 0
  %30 = load i32, i32* @NL80211_EXT_FEATURE_FILS_STA, align 4
  %31 = call i32 @wiphy_ext_feature_isset(%struct.TYPE_2__* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NL80211_AUTHTYPE_FILS_SK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NL80211_AUTHTYPE_FILS_SK_PFS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @NL80211_AUTHTYPE_FILS_PK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37, %33
  store i32 0, i32* %4, align 4
  br label %107

46:                                               ; preds = %41, %27
  store i32 1, i32* %4, align 4
  br label %107

47:                                               ; preds = %12
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NL80211_FEATURE_SAE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %47
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %57 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %56, i32 0, i32 0
  %58 = load i32, i32* @NL80211_EXT_FEATURE_SAE_OFFLOAD, align 4
  %59 = call i32 @wiphy_ext_feature_isset(%struct.TYPE_2__* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @NL80211_AUTHTYPE_SAE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %107

66:                                               ; preds = %61, %55, %47
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @NL80211_AUTHTYPE_FILS_SK_PFS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @NL80211_AUTHTYPE_FILS_PK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %66
  store i32 0, i32* %4, align 4
  br label %107

75:                                               ; preds = %70
  %76 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %77 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %76, i32 0, i32 0
  %78 = load i32, i32* @NL80211_EXT_FEATURE_FILS_SK_OFFLOAD, align 4
  %79 = call i32 @wiphy_ext_feature_isset(%struct.TYPE_2__* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @NL80211_AUTHTYPE_FILS_SK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %107

86:                                               ; preds = %81, %75
  store i32 1, i32* %4, align 4
  br label %107

87:                                               ; preds = %12
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @NL80211_AUTHTYPE_SAE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %107

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @NL80211_AUTHTYPE_FILS_SK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @NL80211_AUTHTYPE_FILS_SK_PFS, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @NL80211_AUTHTYPE_FILS_PK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %96, %92
  store i32 0, i32* %4, align 4
  br label %107

105:                                              ; preds = %100
  store i32 1, i32* %4, align 4
  br label %107

106:                                              ; preds = %12
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %105, %104, %91, %86, %85, %74, %65, %46, %45, %26, %11
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @wiphy_ext_feature_isset(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
