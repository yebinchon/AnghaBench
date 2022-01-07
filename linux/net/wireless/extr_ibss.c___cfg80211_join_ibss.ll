; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c___cfg80211_join_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c___cfg80211_join_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32, i32*, %struct.TYPE_11__, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.cfg80211_ibss_params = type { i64, i64, i32, %struct.TYPE_12__, i32, i32, i32, i32 }
%struct.cfg80211_cached_keys = type { i64, i32 }

@EALREADY = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_6GHZ = common dso_local global i32 0, align 4
@IEEE80211_RATE_MANDATORY_A = common dso_local global i32 0, align 4
@IEEE80211_RATE_MANDATORY_B = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cfg80211_join_ibss(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.cfg80211_ibss_params* %2, %struct.cfg80211_cached_keys* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cfg80211_ibss_params*, align 8
  %9 = alloca %struct.cfg80211_cached_keys*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.cfg80211_ibss_params* %2, %struct.cfg80211_ibss_params** %8, align 8
  store %struct.cfg80211_cached_keys* %3, %struct.cfg80211_cached_keys** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  store %struct.wireless_dev* %18, %struct.wireless_dev** %10, align 8
  %19 = call i32 (...) @ASSERT_RTNL()
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %21 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %20)
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EALREADY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %181

29:                                               ; preds = %4
  %30 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %31 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %91, label %34

34:                                               ; preds = %29
  %35 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %36 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @NL80211_BAND_6GHZ, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %34
  %49 = load i32, i32* @IEEE80211_RATE_MANDATORY_A, align 4
  store i32 %49, i32* %14, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @IEEE80211_RATE_MANDATORY_B, align 4
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %54 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %56, i64 %58
  %60 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %59, align 8
  store %struct.ieee80211_supported_band* %60, %struct.ieee80211_supported_band** %12, align 8
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %87, %52
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %64 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %61
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %69 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %14, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %67
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %83 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79, %67
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %61

90:                                               ; preds = %61
  br label %91

91:                                               ; preds = %90, %29
  %92 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %9, align 8
  %93 = icmp ne %struct.cfg80211_cached_keys* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %9, align 8
  %96 = getelementptr inbounds %struct.cfg80211_cached_keys, %struct.cfg80211_cached_keys* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %97, 0
  br label %99

99:                                               ; preds = %94, %91
  %100 = phi i1 [ false, %91 ], [ %98, %94 ]
  %101 = zext i1 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i32*
  %104 = call i64 @WARN_ON(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %181

109:                                              ; preds = %99
  %110 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %111 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @WARN_ON(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %117 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @kzfree(i32* %118)
  br label %120

120:                                              ; preds = %115, %109
  %121 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %9, align 8
  %122 = bitcast %struct.cfg80211_cached_keys* %121 to i32*
  %123 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %124 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %123, i32 0, i32 2
  store i32* %122, i32** %124, align 8
  %125 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %126 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %129 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %131 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %134 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  %135 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %136 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %135, i32 0, i32 4
  %137 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %138 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %137, i32 0, i32 3
  %139 = bitcast %struct.TYPE_12__* %136 to i8*
  %140 = bitcast %struct.TYPE_12__* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 8 %140, i64 8, i1 false)
  %141 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %9, align 8
  %142 = icmp ne %struct.cfg80211_cached_keys* %141, null
  br i1 %142, label %143, label %154

143:                                              ; preds = %120
  %144 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %9, align 8
  %145 = getelementptr inbounds %struct.cfg80211_cached_keys, %struct.cfg80211_cached_keys* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %148 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %9, align 8
  %150 = getelementptr inbounds %struct.cfg80211_cached_keys, %struct.cfg80211_cached_keys* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %153 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %143, %120
  %155 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %156 = load %struct.net_device*, %struct.net_device** %7, align 8
  %157 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %158 = call i32 @rdev_join_ibss(%struct.cfg80211_registered_device* %155, %struct.net_device* %156, %struct.cfg80211_ibss_params* %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %163 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %162, i32 0, i32 2
  store i32* null, i32** %163, align 8
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %5, align 4
  br label %181

165:                                              ; preds = %154
  %166 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %167 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %170 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %173 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @memcpy(i32 %168, i32 %171, i64 %174)
  %176 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %177 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %180 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %165, %161, %106, %26
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @WARN_ON(i32*) #1

declare dso_local i32 @kzfree(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rdev_join_ibss(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_ibss_params*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
