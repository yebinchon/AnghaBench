; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_siwretry.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_siwretry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i64 }
%struct.cfg80211_registered_device = type { i32 }

@IW_RETRY_TYPE = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_LONG = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @cfg80211_wext_siwretry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_siwretry(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  store %struct.wireless_dev* %18, %struct.wireless_dev** %10, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %20 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.TYPE_2__* %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %13, align 8
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %31 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %14, align 8
  %37 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %38 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %4
  %42 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %43 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %59, label %46

46:                                               ; preds = %41
  %47 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %48 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 255
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %53 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IW_RETRY_TYPE, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51, %46, %41, %4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %141

62:                                               ; preds = %51
  %63 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %64 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IW_RETRY_LONG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %71 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %74 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %78 = load i32, i32* %12, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %12, align 4
  br label %120

80:                                               ; preds = %62
  %81 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %82 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IW_RETRY_SHORT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %80
  %88 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %89 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %92 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @WIPHY_PARAM_RETRY_SHORT, align 4
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %119

98:                                               ; preds = %80
  %99 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %100 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %103 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 4
  %106 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %107 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %110 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %114 = load i32, i32* %12, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* @WIPHY_PARAM_RETRY_SHORT, align 4
  %117 = load i32, i32* %12, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %98, %87
  br label %120

120:                                              ; preds = %119, %69
  %121 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @rdev_set_wiphy_params(%struct.cfg80211_registered_device* %121, i32 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = load i8*, i8** %14, align 8
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %130 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i32 %128, i32* %132, align 4
  %133 = load i8*, i8** %13, align 8
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %136 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %126, %120
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %59
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.TYPE_2__*) #1

declare dso_local i32 @rdev_set_wiphy_params(%struct.cfg80211_registered_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
