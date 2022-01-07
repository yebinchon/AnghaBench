; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_handle_reg_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_handle_reg_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32, i32 }
%struct.reg_beacon = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@REGULATORY_DISABLE_BEACON_HINTS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, i32, %struct.reg_beacon*)* @handle_reg_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_reg_beacon(%struct.wiphy* %0, i32 %1, %struct.reg_beacon* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reg_beacon*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_channel, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.reg_beacon* %2, %struct.reg_beacon** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %12 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %12, align 8
  %14 = load %struct.reg_beacon*, %struct.reg_beacon** %6, align 8
  %15 = getelementptr inbounds %struct.reg_beacon, %struct.reg_beacon* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, i64 %17
  %19 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %18, align 8
  store %struct.ieee80211_supported_band* %19, %struct.ieee80211_supported_band** %7, align 8
  %20 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %22, i64 %24
  store %struct.ieee80211_channel* %25, %struct.ieee80211_channel** %8, align 8
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.reg_beacon*, %struct.reg_beacon** %6, align 8
  %30 = getelementptr inbounds %struct.reg_beacon, %struct.reg_beacon* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %83

38:                                               ; preds = %3
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %83

44:                                               ; preds = %38
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %48 = call i32 @reg_is_world_roaming(%struct.wiphy* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %83

51:                                               ; preds = %44
  %52 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %53 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @REGULATORY_DISABLE_BEACON_HINTS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %83

59:                                               ; preds = %51
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %61 = bitcast %struct.ieee80211_channel* %10 to i8*
  %62 = bitcast %struct.ieee80211_channel* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %73 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %69, %59
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %81 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %82 = call i32 @nl80211_send_beacon_hint_event(%struct.wiphy* %80, %struct.ieee80211_channel* %10, %struct.ieee80211_channel* %81)
  br label %83

83:                                               ; preds = %37, %43, %50, %58, %79, %76
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @reg_is_world_roaming(%struct.wiphy*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nl80211_send_beacon_hint_event(%struct.wiphy*, %struct.ieee80211_channel*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
