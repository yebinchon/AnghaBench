; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tdls_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tdls_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_6__, %struct.wireless_dev*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.wireless_dev = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_6__, %struct.wireless_dev*, %struct.TYPE_4__* }
%struct.cfg80211_chan_def = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@NL80211_FEATURE_TDLS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_OPER_CLASS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_tdls_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_tdls_channel_switch(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.cfg80211_chan_def, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 1
  %15 = load %struct.net_device**, %struct.net_device*** %14, align 8
  %16 = getelementptr inbounds %struct.net_device*, %struct.net_device** %15, i64 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = bitcast %struct.net_device* %17 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %6, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 1
  %21 = load %struct.net_device**, %struct.net_device*** %20, align 8
  %22 = getelementptr inbounds %struct.net_device*, %struct.net_device** %21, i64 1
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %7, align 8
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %25, align 8
  store %struct.wireless_dev* %26, %struct.wireless_dev** %8, align 8
  %27 = bitcast %struct.cfg80211_chan_def* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 16, i1 false)
  %28 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %29 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %36 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NL80211_FEATURE_TDLS_CHANNEL_SWITCH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34, %2
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %152

45:                                               ; preds = %34
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %47, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %52 [
    i32 128, label %51
    i32 129, label %51
  ]

51:                                               ; preds = %45, %45
  br label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %152

55:                                               ; preds = %51
  %56 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %57 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %65 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @NL80211_ATTR_OPER_CLASS, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %63, %55
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %152

74:                                               ; preds = %63
  %75 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %76 = bitcast %struct.cfg80211_registered_device* %75 to %struct.net_device*
  %77 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %78 = call i32 @nl80211_parse_chandef(%struct.net_device* %76, %struct.genl_info* %77, %struct.cfg80211_chan_def* %9)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %3, align 4
  br label %152

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %152

103:                                              ; preds = %95, %90, %83
  %104 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %105 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %104, i32 0, i32 0
  %106 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %107 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @cfg80211_reg_can_beacon_relax(%struct.TYPE_6__* %105, %struct.cfg80211_chan_def* %9, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %152

114:                                              ; preds = %103
  %115 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %116 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %119 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @cfg80211_chandef_dfs_required(i32 %117, %struct.cfg80211_chan_def* %9, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %152

126:                                              ; preds = %114
  %127 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %128 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32* @nla_data(i32 %132)
  store i32* %133, i32** %10, align 8
  %134 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %135 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @NL80211_ATTR_OPER_CLASS, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @nla_get_u8(i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %142 = call i32 @wdev_lock(%struct.wireless_dev* %141)
  %143 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %144 = bitcast %struct.cfg80211_registered_device* %143 to %struct.net_device*
  %145 = load %struct.net_device*, %struct.net_device** %7, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @rdev_tdls_channel_switch(%struct.net_device* %144, %struct.net_device* %145, i32* %146, i32 %147, %struct.cfg80211_chan_def* %9)
  store i32 %148, i32* %12, align 4
  %149 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %150 = call i32 @wdev_unlock(%struct.wireless_dev* %149)
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %126, %123, %111, %100, %81, %71, %52, %42
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.net_device*, %struct.genl_info*, %struct.cfg80211_chan_def*) #2

declare dso_local i32 @cfg80211_reg_can_beacon_relax(%struct.TYPE_6__*, %struct.cfg80211_chan_def*, i32) #2

declare dso_local i64 @cfg80211_chandef_dfs_required(i32, %struct.cfg80211_chan_def*, i32) #2

declare dso_local i32* @nla_data(i32) #2

declare dso_local i32 @nla_get_u8(i32) #2

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #2

declare dso_local i32 @rdev_tdls_channel_switch(%struct.net_device*, %struct.net_device*, i32*, i32, %struct.cfg80211_chan_def*) #2

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
