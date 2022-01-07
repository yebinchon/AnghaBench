; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_qos_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_qos_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_3__* }
%struct.cfg80211_qos_map = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_QOS_MAP = common dso_local global i64 0, align 8
@IEEE80211_QOS_MAP_LEN_MIN = common dso_local global i32 0, align 4
@IEEE80211_QOS_MAP_LEN_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_qos_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_qos_map(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.cfg80211_qos_map*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  store %struct.cfg80211_qos_map* null, %struct.cfg80211_qos_map** %7, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 1
  %23 = load %struct.net_device**, %struct.net_device*** %22, align 8
  %24 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 1
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %8, align 8
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %161

35:                                               ; preds = %2
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @NL80211_ATTR_QOS_MAP, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %136

43:                                               ; preds = %35
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @NL80211_ATTR_QOS_MAP, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32* @nla_data(i64 %49)
  store i32* %50, i32** %9, align 8
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @NL80211_ATTR_QOS_MAP, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @nla_len(i64 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = srem i32 %58, 2
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %43
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @IEEE80211_QOS_MAP_LEN_MIN, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @IEEE80211_QOS_MAP_LEN_MAX, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %61, %43
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %161

72:                                               ; preds = %65
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.cfg80211_qos_map* @kzalloc(i32 24, i32 %73)
  store %struct.cfg80211_qos_map* %74, %struct.cfg80211_qos_map** %7, align 8
  %75 = load %struct.cfg80211_qos_map*, %struct.cfg80211_qos_map** %7, align 8
  %76 = icmp ne %struct.cfg80211_qos_map* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %161

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @IEEE80211_QOS_MAP_LEN_MIN, align 4
  %83 = sub nsw i32 %81, %82
  %84 = ashr i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %129

87:                                               ; preds = %80
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %12, align 4
  %92 = load %struct.cfg80211_qos_map*, %struct.cfg80211_qos_map** %7, align 8
  %93 = getelementptr inbounds %struct.cfg80211_qos_map, %struct.cfg80211_qos_map* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @memcpy(%struct.TYPE_4__* %94, i32* %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.cfg80211_qos_map*, %struct.cfg80211_qos_map** %7, align 8
  %100 = getelementptr inbounds %struct.cfg80211_qos_map, %struct.cfg80211_qos_map* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %13, align 4
  br label %101

101:                                              ; preds = %121, %87
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load %struct.cfg80211_qos_map*, %struct.cfg80211_qos_map** %7, align 8
  %107 = getelementptr inbounds %struct.cfg80211_qos_map, %struct.cfg80211_qos_map* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 7
  br i1 %114, label %115, label %120

115:                                              ; preds = %105
  %116 = load %struct.cfg80211_qos_map*, %struct.cfg80211_qos_map** %7, align 8
  %117 = call i32 @kfree(%struct.cfg80211_qos_map* %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %161

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %101

124:                                              ; preds = %101
  %125 = load i32, i32* %12, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %9, align 8
  br label %129

129:                                              ; preds = %124, %80
  %130 = load %struct.cfg80211_qos_map*, %struct.cfg80211_qos_map** %7, align 8
  %131 = getelementptr inbounds %struct.cfg80211_qos_map, %struct.cfg80211_qos_map* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* @IEEE80211_QOS_MAP_LEN_MIN, align 4
  %135 = call i32 @memcpy(%struct.TYPE_4__* %132, i32* %133, i32 %134)
  br label %136

136:                                              ; preds = %129, %35
  %137 = load %struct.net_device*, %struct.net_device** %8, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @wdev_lock(i32 %139)
  %141 = load %struct.net_device*, %struct.net_device** %8, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @nl80211_key_allowed(i32 %143)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %136
  %148 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %149 = bitcast %struct.cfg80211_registered_device* %148 to %struct.net_device*
  %150 = load %struct.net_device*, %struct.net_device** %8, align 8
  %151 = load %struct.cfg80211_qos_map*, %struct.cfg80211_qos_map** %7, align 8
  %152 = call i32 @rdev_set_qos_map(%struct.net_device* %149, %struct.net_device* %150, %struct.cfg80211_qos_map* %151)
  store i32 %152, i32* %14, align 4
  br label %153

153:                                              ; preds = %147, %136
  %154 = load %struct.net_device*, %struct.net_device** %8, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @wdev_unlock(i32 %156)
  %158 = load %struct.cfg80211_qos_map*, %struct.cfg80211_qos_map** %7, align 8
  %159 = call i32 @kfree(%struct.cfg80211_qos_map* %158)
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %153, %115, %77, %69, %32
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32* @nla_data(i64) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local %struct.cfg80211_qos_map* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.cfg80211_qos_map*) #1

declare dso_local i32 @wdev_lock(i32) #1

declare dso_local i32 @nl80211_key_allowed(i32) #1

declare dso_local i32 @rdev_set_qos_map(%struct.net_device*, %struct.net_device*, %struct.cfg80211_qos_map*) #1

declare dso_local i32 @wdev_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
