; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_station_tdls.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_station_tdls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64* }
%struct.station_parameters = type { i64, i8*, i8*, i8*, i32 }

@NL80211_ATTR_PEER_AID = common dso_local global i64 0, align 8
@NL80211_ATTR_HT_CAPABILITY = common dso_local global i64 0, align 8
@NL80211_ATTR_VHT_CAPABILITY = common dso_local global i64 0, align 8
@NL80211_ATTR_HE_CAPABILITY = common dso_local global i64 0, align 8
@NL80211_HE_MIN_CAPABILITY_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.station_parameters*)* @nl80211_set_station_tdls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_station_tdls(%struct.genl_info* %0, %struct.station_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.station_parameters*, align 8
  %6 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.station_parameters* %1, %struct.station_parameters** %5, align 8
  %7 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %8 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @NL80211_ATTR_PEER_AID, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @NL80211_ATTR_PEER_AID, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @nla_get_u16(i64 %20)
  %22 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %23 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @nla_data(i64 %38)
  %40 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %41 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %32, %24
  %43 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %44 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @nla_data(i64 %56)
  %58 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %59 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %50, %42
  %61 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %62 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @NL80211_ATTR_HE_CAPABILITY, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %60
  %69 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %70 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @NL80211_ATTR_HE_CAPABILITY, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @nla_data(i64 %74)
  %76 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %77 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %79 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @NL80211_ATTR_HE_CAPABILITY, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @nla_len(i64 %83)
  %85 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %86 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %88 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NL80211_HE_MIN_CAPABILITY_LEN, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %68
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %108

95:                                               ; preds = %68
  br label %96

96:                                               ; preds = %95, %60
  %97 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %98 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %99 = call i32 @nl80211_parse_sta_channel_info(%struct.genl_info* %97, %struct.station_parameters* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %108

104:                                              ; preds = %96
  %105 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %106 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %107 = call i32 @nl80211_parse_sta_wme(%struct.genl_info* %105, %struct.station_parameters* %106)
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %102, %92
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i64 @nla_len(i64) #1

declare dso_local i32 @nl80211_parse_sta_channel_info(%struct.genl_info*, %struct.station_parameters*) #1

declare dso_local i32 @nl80211_parse_sta_wme(%struct.genl_info*, %struct.station_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
