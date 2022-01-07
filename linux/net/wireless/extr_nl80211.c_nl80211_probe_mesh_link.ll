; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_probe_mesh_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_probe_mesh_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { i32*, %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wireless_dev = type { i64 }
%struct.cfg80211_registered_device = type { i32*, %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.station_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_FRAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Frame or MAC missing\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_probe_mesh_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_probe_mesh_link(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.station_info, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 1
  %16 = load %struct.net_device**, %struct.net_device*** %15, align 8
  %17 = getelementptr inbounds %struct.net_device*, %struct.net_device** %16, i64 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = bitcast %struct.net_device* %18 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %6, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 1
  %22 = load %struct.net_device**, %struct.net_device*** %21, align 8
  %23 = getelementptr inbounds %struct.net_device*, %struct.net_device** %22, i64 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 2
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %26, align 8
  store %struct.wireless_dev* %27, %struct.wireless_dev** %8, align 8
  %28 = bitcast %struct.station_info* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 4, i1 false)
  %29 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %30 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %37 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35, %2
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %144

45:                                               ; preds = %35
  %46 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %55 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53, %45
  %62 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %63 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %144

66:                                               ; preds = %53
  %67 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %68 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EOPNOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %144

75:                                               ; preds = %66
  %76 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %77 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @nla_data(i32 %81)
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %12, align 8
  %84 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %85 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @nla_data(i32 %89)
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %10, align 8
  %92 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %93 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @nla_len(i32 %97)
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ult i64 %99, 4
  br i1 %100, label %101, label %104

101:                                              ; preds = %75
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %144

104:                                              ; preds = %75
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @ether_addr_equal(i32* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load i32*, i32** %10, align 8
  %111 = call i64 @is_multicast_ether_addr(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %109
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* @ETH_ALEN, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load %struct.net_device*, %struct.net_device** %7, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @ether_addr_equal(i32* %117, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %113, %109, %104
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %144

126:                                              ; preds = %113
  %127 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %128 = bitcast %struct.cfg80211_registered_device* %127 to %struct.net_device*
  %129 = load %struct.net_device*, %struct.net_device** %7, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @rdev_get_station(%struct.net_device* %128, %struct.net_device* %129, i32* %130, %struct.station_info* %9)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %3, align 4
  br label %144

136:                                              ; preds = %126
  %137 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %138 = bitcast %struct.cfg80211_registered_device* %137 to %struct.net_device*
  %139 = load %struct.net_device*, %struct.net_device** %7, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @rdev_probe_mesh_link(%struct.net_device* %138, %struct.net_device* %139, i32* %140, i32* %141, i64 %142)
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %136, %134, %123, %101, %72, %61, %42
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GENL_SET_ERR_MSG(%struct.genl_info*, i8*) #2

declare dso_local i8* @nla_data(i32) #2

declare dso_local i64 @nla_len(i32) #2

declare dso_local i32 @ether_addr_equal(i32*, i32*) #2

declare dso_local i64 @is_multicast_ether_addr(i32*) #2

declare dso_local i32 @rdev_get_station(%struct.net_device*, %struct.net_device*, i32*, %struct.station_info*) #2

declare dso_local i32 @rdev_probe_mesh_link(%struct.net_device*, %struct.net_device*, i32*, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
