; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___nl80211_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c___nl80211_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, %struct.cfg80211_chan_def, i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.genl_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_FEATURE_AP_MODE_CHAN_WIDTH_CHANGE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*, %struct.genl_info*)* @__nl80211_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nl80211_set_channel(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.genl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.cfg80211_chan_def, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wireless_dev*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.genl_info* %2, %struct.genl_info** %7, align 8
  store i32 129, i32* %10, align 4
  store %struct.wireless_dev* null, %struct.wireless_dev** %11, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %11, align 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %20 = call i32 @nl80211_can_set_dev_channel(%struct.wireless_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %113

25:                                               ; preds = %18
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %27 = icmp ne %struct.wireless_dev* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %34 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %35 = call i32 @nl80211_parse_chandef(%struct.cfg80211_registered_device* %33, %struct.genl_info* %34, %struct.cfg80211_chan_def* %8)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %113

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %108 [
    i32 131, label %42
    i32 128, label %42
    i32 130, label %101
    i32 129, label %105
  ]

42:                                               ; preds = %40, %40
  %43 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %44 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %43, i32 0, i32 0
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @cfg80211_reg_can_beacon_relax(%struct.TYPE_4__* %44, %struct.cfg80211_chan_def* %8, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %111

51:                                               ; preds = %42
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %53 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %96

56:                                               ; preds = %51
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = icmp ne %struct.net_device* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %61 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %68 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NL80211_FEATURE_AP_MODE_CHAN_WIDTH_CHANGE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66, %59, %56
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %111

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %81 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %79, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %9, align 4
  br label %111

88:                                               ; preds = %77
  %89 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = call i32 @rdev_set_ap_chanwidth(%struct.cfg80211_registered_device* %89, %struct.net_device* %90, %struct.cfg80211_chan_def* %8)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %111

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %51
  %97 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %98 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %97, i32 0, i32 1
  %99 = bitcast %struct.cfg80211_chan_def* %98 to i8*
  %100 = bitcast %struct.cfg80211_chan_def* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  br label %111

101:                                              ; preds = %40
  %102 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %103 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %104 = call i32 @cfg80211_set_mesh_channel(%struct.cfg80211_registered_device* %102, %struct.wireless_dev* %103, %struct.cfg80211_chan_def* %8)
  store i32 %104, i32* %9, align 4
  br label %111

105:                                              ; preds = %40
  %106 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %107 = call i32 @cfg80211_set_monitor_channel(%struct.cfg80211_registered_device* %106, %struct.cfg80211_chan_def* %8)
  store i32 %107, i32* %9, align 4
  br label %111

108:                                              ; preds = %40
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %108, %105, %101, %96, %94, %85, %74, %48
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %38, %22
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @nl80211_can_set_dev_channel(%struct.wireless_dev*) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.cfg80211_registered_device*, %struct.genl_info*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_reg_can_beacon_relax(%struct.TYPE_4__*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @rdev_set_ap_chanwidth(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_chan_def*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_set_mesh_channel(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_set_monitor_channel(%struct.cfg80211_registered_device*, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
