; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_siwfreq.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_siwfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_chan_def = type { i32, i8*, i32 }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @cfg80211_wext_siwfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_siwfreq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.cfg80211_chan_def, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %10, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %11, align 8
  %21 = bitcast %struct.cfg80211_chan_def* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 2
  %23 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  store i32 %23, i32* %22, align 8
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %100 [
    i32 128, label %27
    i32 131, label %33
    i32 129, label %39
    i32 130, label %69
  ]

27:                                               ; preds = %4
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %30 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @cfg80211_mgd_wext_siwfreq(%struct.net_device* %28, %struct.iw_request_info* %29, %struct.iw_freq* %30, i8* %31)
  store i32 %32, i32* %5, align 4
  br label %103

33:                                               ; preds = %4
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %36 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @cfg80211_ibss_wext_siwfreq(%struct.net_device* %34, %struct.iw_request_info* %35, %struct.iw_freq* %36, i8* %37)
  store i32 %38, i32* %5, align 4
  br label %103

39:                                               ; preds = %4
  %40 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %41 = call i32 @cfg80211_wext_freq(%struct.iw_freq* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %5, align 4
  br label %103

46:                                               ; preds = %39
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %103

52:                                               ; preds = %46
  %53 = load i32, i32* %13, align 4
  %54 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %56 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %55, i32 0, i32 0
  %57 = load i32, i32* %13, align 4
  %58 = call i8* @ieee80211_get_channel(i32* %56, i32 %57)
  %59 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %103

66:                                               ; preds = %52
  %67 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %68 = call i32 @cfg80211_set_monitor_channel(%struct.cfg80211_registered_device* %67, %struct.cfg80211_chan_def* %12)
  store i32 %68, i32* %5, align 4
  br label %103

69:                                               ; preds = %4
  %70 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %71 = call i32 @cfg80211_wext_freq(%struct.iw_freq* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %5, align 4
  br label %103

76:                                               ; preds = %69
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %103

82:                                               ; preds = %76
  %83 = load i32, i32* %13, align 4
  %84 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %86 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %85, i32 0, i32 0
  %87 = load i32, i32* %13, align 4
  %88 = call i8* @ieee80211_get_channel(i32* %86, i32 %87)
  %89 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %82
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %103

96:                                               ; preds = %82
  %97 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %98 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %99 = call i32 @cfg80211_set_mesh_channel(%struct.cfg80211_registered_device* %97, %struct.wireless_dev* %98, %struct.cfg80211_chan_def* %12)
  store i32 %99, i32* %5, align 4
  br label %103

100:                                              ; preds = %4
  %101 = load i32, i32* @EOPNOTSUPP, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %96, %93, %79, %74, %66, %63, %49, %44, %33, %27
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_mgd_wext_siwfreq(%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*) #1

declare dso_local i32 @cfg80211_ibss_wext_siwfreq(%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*) #1

declare dso_local i32 @cfg80211_wext_freq(%struct.iw_freq*) #1

declare dso_local i8* @ieee80211_get_channel(i32*, i32) #1

declare dso_local i32 @cfg80211_set_monitor_channel(%struct.cfg80211_registered_device*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_set_mesh_channel(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
