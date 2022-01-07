; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_sta_channel_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_sta_channel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64* }
%struct.station_parameters = type { i32, i32, i8*, i8* }

@NL80211_ATTR_STA_SUPPORTED_CHANNELS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_SUPPORTED_OPER_CLASSES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.station_parameters*)* @nl80211_parse_sta_channel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_sta_channel_info(%struct.genl_info* %0, %struct.station_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.station_parameters*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.station_parameters* %1, %struct.station_parameters** %5, align 8
  %6 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %7 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_CHANNELS, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %2
  %14 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_CHANNELS, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @nla_data(i64 %19)
  %21 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %22 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_CHANNELS, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @nla_len(i64 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %32 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %34 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %13
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %92

40:                                               ; preds = %13
  %41 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %42 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = srem i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %92

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_OPER_CLASSES, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %50
  %59 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_OPER_CLASSES, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @nla_data(i64 %64)
  %66 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %67 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %69 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @NL80211_ATTR_STA_SUPPORTED_OPER_CLASSES, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @nla_len(i64 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %77 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %79 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %87, label %82

82:                                               ; preds = %58
  %83 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %84 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 253
  br i1 %86, label %87, label %90

87:                                               ; preds = %82, %58
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %50
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %87, %46, %37
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i8* @nla_data(i64) #1

declare dso_local i8* @nla_len(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
