; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_sta_wme.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_sta_wme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32, %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.station_parameters = type { i32, i32, i32 }

@NL80211_STA_WME_MAX = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_WME = common dso_local global i64 0, align 8
@nl80211_sta_wme_policy = common dso_local global i32 0, align 4
@NL80211_STA_WME_UAPSD_QUEUES = common dso_local global i64 0, align 8
@IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_STA_WME_MAX_SP = common dso_local global i64 0, align 8
@IEEE80211_WMM_IE_STA_QOSINFO_SP_MASK = common dso_local global i32 0, align 4
@STATION_PARAM_APPLY_UAPSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.station_parameters*)* @nl80211_parse_sta_wme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_sta_wme(%struct.genl_info* %0, %struct.station_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.station_parameters*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.station_parameters* %1, %struct.station_parameters** %5, align 8
  %11 = load i32, i32* @NL80211_STA_WME_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.nlattr*, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 1
  %18 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  %19 = load i64, i64* @NL80211_ATTR_STA_WME, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %96

24:                                               ; preds = %2
  %25 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 1
  %27 = load %struct.nlattr**, %struct.nlattr*** %26, align 8
  %28 = load i64, i64* @NL80211_ATTR_STA_WME, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  store %struct.nlattr* %30, %struct.nlattr** %8, align 8
  %31 = load i32, i32* @NL80211_STA_WME_MAX, align 4
  %32 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %33 = load i32, i32* @nl80211_sta_wme_policy, align 4
  %34 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %15, i32 %31, %struct.nlattr* %32, i32 %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %96

42:                                               ; preds = %24
  %43 = load i64, i64* @NL80211_STA_WME_UAPSD_QUEUES, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i64, i64* @NL80211_STA_WME_UAPSD_QUEUES, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i8* @nla_get_u8(%struct.nlattr* %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %54 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %57 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %96

66:                                               ; preds = %55
  %67 = load i64, i64* @NL80211_STA_WME_MAX_SP, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i64, i64* @NL80211_STA_WME_MAX_SP, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = call i8* @nla_get_u8(%struct.nlattr* %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %78 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %66
  %80 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %81 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_SP_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %96

90:                                               ; preds = %79
  %91 = load i32, i32* @STATION_PARAM_APPLY_UAPSD, align 4
  %92 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %93 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %96

96:                                               ; preds = %90, %87, %63, %40, %23
  %97 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32) #2

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
