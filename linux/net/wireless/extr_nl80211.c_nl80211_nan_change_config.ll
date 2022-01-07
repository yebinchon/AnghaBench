; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_nan_change_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_nan_change_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.wireless_dev** }
%struct.wireless_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cfg80211_registered_device = type { i64, %struct.TYPE_2__* }
%struct.cfg80211_nan_conf = type { i32, i32 }

@NL80211_IFTYPE_NAN = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@NL80211_ATTR_NAN_MASTER_PREF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CFG80211_NAN_CONF_CHANGED_PREF = common dso_local global i32 0, align 4
@NL80211_ATTR_BANDS = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@CFG80211_NAN_CONF_CHANGED_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_nan_change_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_nan_change_config(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_nan_conf, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 1
  %13 = load %struct.wireless_dev**, %struct.wireless_dev*** %12, align 8
  %14 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %13, i64 0
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %16 = bitcast %struct.wireless_dev* %15 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 1
  %19 = load %struct.wireless_dev**, %struct.wireless_dev*** %18, align 8
  %20 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %19, i64 1
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %20, align 8
  store %struct.wireless_dev* %21, %struct.wireless_dev** %7, align 8
  %22 = bitcast %struct.cfg80211_nan_conf* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 8, i1 false)
  store i32 0, i32* %9, align 4
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_NAN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %128

31:                                               ; preds = %2
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %33 = call i32 @wdev_running(%struct.wireless_dev* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOTCONN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %128

38:                                               ; preds = %31
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @NL80211_ATTR_NAN_MASTER_PREF, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %38
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @NL80211_ATTR_NAN_MASTER_PREF, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @nla_get_u8(i64 %52)
  %54 = getelementptr inbounds %struct.cfg80211_nan_conf, %struct.cfg80211_nan_conf* %8, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.cfg80211_nan_conf, %struct.cfg80211_nan_conf* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sle i32 %56, 1
  br i1 %57, label %62, label %58

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.cfg80211_nan_conf, %struct.cfg80211_nan_conf* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 255
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %46
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %128

65:                                               ; preds = %58
  %66 = load i32, i32* @CFG80211_NAN_CONF_CHANGED_PREF, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %38
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @NL80211_ATTR_BANDS, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %116

77:                                               ; preds = %69
  %78 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %79 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @NL80211_ATTR_BANDS, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @nla_get_u32(i64 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %87 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = xor i32 %91, -1
  %93 = and i32 %85, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %77
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %128

98:                                               ; preds = %77
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %104 = call i32 @BIT(i32 %103)
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %128

110:                                              ; preds = %101, %98
  %111 = load i32, i32* %10, align 4
  %112 = getelementptr inbounds %struct.cfg80211_nan_conf, %struct.cfg80211_nan_conf* %8, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @CFG80211_NAN_CONF_CHANGED_BANDS, align 4
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %110, %69
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %128

122:                                              ; preds = %116
  %123 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %124 = bitcast %struct.cfg80211_registered_device* %123 to %struct.wireless_dev*
  %125 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @rdev_nan_change_conf(%struct.wireless_dev* %124, %struct.wireless_dev* %125, %struct.cfg80211_nan_conf* %8, i32 %126)
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %122, %119, %107, %95, %62, %35, %28
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wdev_running(%struct.wireless_dev*) #2

declare dso_local i32 @nla_get_u8(i64) #2

declare dso_local i32 @nla_get_u32(i64) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @rdev_nan_change_conf(%struct.wireless_dev*, %struct.wireless_dev*, %struct.cfg80211_nan_conf*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
