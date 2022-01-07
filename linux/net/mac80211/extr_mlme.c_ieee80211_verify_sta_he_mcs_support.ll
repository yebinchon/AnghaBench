; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_verify_sta_he_mcs_support.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_verify_sta_he_mcs_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_he_operation = type { i32 }
%struct.ieee80211_sta_he_cap = type { %struct.ieee80211_he_mcs_nss_supp }
%struct.ieee80211_he_mcs_nss_supp = type { i32 }

@IEEE80211_HE_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_supported_band*, %struct.ieee80211_he_operation*)* @ieee80211_verify_sta_he_mcs_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_verify_sta_he_mcs_support(%struct.ieee80211_supported_band* %0, %struct.ieee80211_he_operation* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_supported_band*, align 8
  %5 = alloca %struct.ieee80211_he_operation*, align 8
  %6 = alloca %struct.ieee80211_sta_he_cap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_he_mcs_nss_supp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %4, align 8
  store %struct.ieee80211_he_operation* %1, %struct.ieee80211_he_operation** %5, align 8
  %17 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %18 = call %struct.ieee80211_sta_he_cap* @ieee80211_get_he_sta_cap(%struct.ieee80211_supported_band* %17)
  store %struct.ieee80211_sta_he_cap* %18, %struct.ieee80211_sta_he_cap** %6, align 8
  %19 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %20 = icmp ne %struct.ieee80211_sta_he_cap* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %5, align 8
  %23 = icmp ne %struct.ieee80211_he_operation* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %109

25:                                               ; preds = %21
  %26 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_he_operation, %struct.ieee80211_he_operation* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %105, %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %108

33:                                               ; preds = %30
  %34 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %34, i32 0, i32 0
  store %struct.ieee80211_he_mcs_nss_supp* %35, %struct.ieee80211_he_mcs_nss_supp** %9, align 8
  %36 = load %struct.ieee80211_he_mcs_nss_supp*, %struct.ieee80211_he_mcs_nss_supp** %9, align 8
  %37 = bitcast %struct.ieee80211_he_mcs_nss_supp* %36 to i32*
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ieee80211_he_mcs_nss_supp*, %struct.ieee80211_he_mcs_nss_supp** %9, align 8
  %45 = bitcast %struct.ieee80211_he_mcs_nss_supp* %44 to i32*
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  store i32 %52, i32* %11, align 4
  store i32 1, i32* %13, align 4
  store i32 8, i32* %12, align 4
  br label %53

53:                                               ; preds = %97, %33
  %54 = load i32, i32* %12, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 %58, 1
  %60 = mul nsw i32 2, %59
  %61 = ashr i32 %57, %60
  %62 = and i32 %61, 3
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %64, 1
  %66 = mul nsw i32 2, %65
  %67 = ashr i32 %63, %66
  %68 = and i32 %67, 3
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 %70, 1
  %72 = mul nsw i32 2, %71
  %73 = ashr i32 %69, %72
  %74 = and i32 %73, 3
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @IEEE80211_HE_MCS_NOT_SUPPORTED, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %56
  br label %97

79:                                               ; preds = %56
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @IEEE80211_HE_MCS_NOT_SUPPORTED, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @IEEE80211_HE_MCS_NOT_SUPPORTED, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %87, %83, %79
  store i32 0, i32* %13, align 4
  br label %100

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %78
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  br label %53

100:                                              ; preds = %95, %53
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 1, i32* %3, align 4
  br label %109

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %30

108:                                              ; preds = %30
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %103, %24
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.ieee80211_sta_he_cap* @ieee80211_get_he_sta_cap(%struct.ieee80211_supported_band*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
