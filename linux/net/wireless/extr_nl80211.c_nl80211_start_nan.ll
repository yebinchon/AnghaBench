; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_start_nan.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_start_nan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.wireless_dev** }
%struct.wireless_dev = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cfg80211_registered_device = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.cfg80211_nan_conf = type { i32, i32 }

@NL80211_IFTYPE_NAN = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ERFKILL = common dso_local global i32 0, align 4
@NL80211_ATTR_NAN_MASTER_PREF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_BANDS = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_start_nan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_start_nan(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
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
  br label %126

31:                                               ; preds = %2
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %33 = call i64 @wdev_running(%struct.wireless_dev* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EEXIST, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %126

38:                                               ; preds = %31
  %39 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %40 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @rfkill_blocked(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ERFKILL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %126

47:                                               ; preds = %38
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @NL80211_ATTR_NAN_MASTER_PREF, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %126

58:                                               ; preds = %47
  %59 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @NL80211_ATTR_NAN_MASTER_PREF, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @nla_get_u8(i64 %64)
  %66 = getelementptr inbounds %struct.cfg80211_nan_conf, %struct.cfg80211_nan_conf* %8, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %68 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @NL80211_ATTR_BANDS, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %58
  %75 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %76 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @NL80211_ATTR_BANDS, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @nla_get_u32(i64 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %84 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = xor i32 %88, -1
  %90 = and i32 %82, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %126

95:                                               ; preds = %74
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %126

107:                                              ; preds = %98, %95
  %108 = load i32, i32* %10, align 4
  %109 = getelementptr inbounds %struct.cfg80211_nan_conf, %struct.cfg80211_nan_conf* %8, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %58
  %111 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %112 = bitcast %struct.cfg80211_registered_device* %111 to %struct.wireless_dev*
  %113 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %114 = call i32 @rdev_start_nan(%struct.wireless_dev* %112, %struct.wireless_dev* %113, %struct.cfg80211_nan_conf* %8)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %126

119:                                              ; preds = %110
  %120 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %121 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %120, i32 0, i32 1
  store i32 1, i32* %121, align 8
  %122 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %123 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %119, %117, %104, %92, %55, %44, %35, %28
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @wdev_running(%struct.wireless_dev*) #2

declare dso_local i64 @rfkill_blocked(i32) #2

declare dso_local i32 @nla_get_u8(i64) #2

declare dso_local i32 @nla_get_u32(i64) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @rdev_start_nan(%struct.wireless_dev*, %struct.wireless_dev*, %struct.cfg80211_nan_conf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
