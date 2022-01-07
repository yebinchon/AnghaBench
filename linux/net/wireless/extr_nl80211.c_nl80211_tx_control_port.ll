; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tx_control_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tx_control_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__*, i32, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__*, i32, %struct.wireless_dev* }

@NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_FRAME = common dso_local global i64 0, align 8
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_CONTROL_PORT_ETHERTYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Frame, MAC or ethertype missing\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_tx_control_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_tx_control_port(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = bitcast %struct.net_device* %19 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %6, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 1
  %23 = load %struct.net_device**, %struct.net_device*** %22, align 8
  %24 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 1
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %7, align 8
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 2
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %27, align 8
  store %struct.wireless_dev* %28, %struct.wireless_dev** %8, align 8
  %29 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %30 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %29, i32 0, i32 1
  %31 = load i32, i32* @NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211, align 4
  %32 = call i32 @wiphy_ext_feature_isset(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %149

37:                                               ; preds = %2
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %149

47:                                               ; preds = %37
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %47
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
  %67 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_ETHERTYPE, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %63, %55, %47
  %72 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %73 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %149

76:                                               ; preds = %63
  %77 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %78 = call i32 @wdev_lock(%struct.wireless_dev* %77)
  %79 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %80 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %92 [
    i32 132, label %82
    i32 129, label %82
    i32 131, label %82
    i32 133, label %83
    i32 128, label %83
    i32 130, label %83
  ]

82:                                               ; preds = %76, %76, %76
  br label %95

83:                                               ; preds = %76, %76, %76
  %84 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %85 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %95

89:                                               ; preds = %83
  %90 = load i32, i32* @ENOTCONN, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %14, align 4
  br label %145

92:                                               ; preds = %76
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %14, align 4
  br label %145

95:                                               ; preds = %88, %82
  %96 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %97 = call i32 @wdev_unlock(%struct.wireless_dev* %96)
  %98 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %99 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @nla_data(i32 %103)
  %105 = bitcast i8* %104 to i32*
  store i32* %105, i32** %9, align 8
  %106 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %107 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @nla_len(i32 %111)
  store i64 %112, i64* %10, align 8
  %113 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %114 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @nla_data(i32 %118)
  %120 = bitcast i8* %119 to i32*
  store i32* %120, i32** %11, align 8
  %121 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %122 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_ETHERTYPE, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @nla_get_u16(i32 %126)
  store i32 %127, i32* %12, align 4
  %128 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %129 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @nla_get_flag(i32 %133)
  store i32 %134, i32* %13, align 4
  %135 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %136 = bitcast %struct.cfg80211_registered_device* %135 to %struct.net_device*
  %137 = load %struct.net_device*, %struct.net_device** %7, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @cpu_to_be16(i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @rdev_tx_control_port(%struct.net_device* %136, %struct.net_device* %137, i32* %138, i64 %139, i32* %140, i32 %142, i32 %143)
  store i32 %144, i32* %3, align 4
  br label %149

145:                                              ; preds = %92, %89
  %146 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %147 = call i32 @wdev_unlock(%struct.wireless_dev* %146)
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %145, %95, %71, %44, %34
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @wiphy_ext_feature_isset(i32*, i32) #1

declare dso_local i32 @GENL_SET_ERR_MSG(%struct.genl_info*, i8*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i8* @nla_data(i32) #1

declare dso_local i64 @nla_len(i32) #1

declare dso_local i32 @nla_get_u16(i32) #1

declare dso_local i32 @nla_get_flag(i32) #1

declare dso_local i32 @rdev_tx_control_port(%struct.net_device*, %struct.net_device*, i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
