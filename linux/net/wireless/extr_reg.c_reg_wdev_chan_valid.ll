; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_wdev_chan_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_wdev_chan_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32, %struct.TYPE_6__*, %struct.cfg80211_chan_def, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*)* @reg_wdev_chan_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_wdev_chan_valid(%struct.wiphy* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_chan_def, align 4
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  %9 = bitcast %struct.cfg80211_chan_def* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %11 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %10)
  store %struct.cfg80211_registered_device* %11, %struct.cfg80211_registered_device** %7, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %13 = call i32 @wdev_lock(%struct.wireless_dev* %12)
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netif_running(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %2
  br label %105

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %89 [
    i32 134, label %30
    i32 129, label %30
    i32 135, label %41
    i32 128, label %52
    i32 131, label %52
    i32 132, label %88
    i32 133, label %88
    i32 130, label %88
  ]

30:                                               ; preds = %28, %28
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %32 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %105

36:                                               ; preds = %30
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %38 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %37, i32 0, i32 2
  %39 = bitcast %struct.cfg80211_chan_def* %6 to i8*
  %40 = bitcast %struct.cfg80211_chan_def* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 8 %40, i64 4, i1 false)
  br label %91

41:                                               ; preds = %28
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %105

47:                                               ; preds = %41
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 2
  %50 = bitcast %struct.cfg80211_chan_def* %6 to i8*
  %51 = bitcast %struct.cfg80211_chan_def* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 8 %51, i64 4, i1 false)
  br label %91

52:                                               ; preds = %28, %28
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %59 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57, %52
  br label %105

66:                                               ; preds = %57
  %67 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %68 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %75 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %76 = call i32 @rdev_get_channel(%struct.cfg80211_registered_device* %74, %struct.wireless_dev* %75, %struct.cfg80211_chan_def* %6)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73, %66
  %79 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %80 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %86 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %6, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %78, %73
  br label %91

88:                                               ; preds = %28, %28, %28
  br label %91

89:                                               ; preds = %28
  %90 = call i32 @WARN_ON(i32 1)
  br label %91

91:                                               ; preds = %89, %88, %87, %47, %36
  %92 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %93 = call i32 @wdev_unlock(%struct.wireless_dev* %92)
  %94 = load i32, i32* %8, align 4
  switch i32 %94, label %103 [
    i32 134, label %95
    i32 129, label %95
    i32 135, label %95
    i32 128, label %99
    i32 131, label %99
  ]

95:                                               ; preds = %91, %91, %91
  %96 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @cfg80211_reg_can_beacon_relax(%struct.wiphy* %96, %struct.cfg80211_chan_def* %6, i32 %97)
  store i32 %98, i32* %3, align 4
  br label %108

99:                                               ; preds = %91, %91
  %100 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %101 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %102 = call i32 @cfg80211_chandef_usable(%struct.wiphy* %100, %struct.cfg80211_chan_def* %6, i32 %101)
  store i32 %102, i32* %3, align 4
  br label %108

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103
  store i32 1, i32* %3, align 4
  br label %108

105:                                              ; preds = %65, %46, %35, %27
  %106 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %107 = call i32 @wdev_unlock(%struct.wireless_dev* %106)
  store i32 1, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %104, %99, %95
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #2

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #2

declare dso_local i32 @netif_running(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rdev_get_channel(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_chan_def*) #2

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, i32, i32) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #2

declare dso_local i32 @cfg80211_reg_can_beacon_relax(%struct.wiphy*, %struct.cfg80211_chan_def*, i32) #2

declare dso_local i32 @cfg80211_chandef_usable(%struct.wiphy*, %struct.cfg80211_chan_def*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
