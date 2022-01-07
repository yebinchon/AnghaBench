; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_validate_beacon_tx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_validate_beacon_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_bitrate_mask = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64*, i64* }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i64 0, align 8
@NL80211_VHT_NSS_MAX = common dso_local global i64 0, align 8
@NL80211_EXT_FEATURE_BEACON_RATE_LEGACY = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_BEACON_RATE_HT = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_BEACON_RATE_VHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, i32, %struct.cfg80211_bitrate_mask*)* @validate_beacon_tx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_beacon_tx_rate(%struct.cfg80211_registered_device* %0, i32 %1, %struct.cfg80211_bitrate_mask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg80211_bitrate_mask*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cfg80211_bitrate_mask* %2, %struct.cfg80211_bitrate_mask** %7, align 8
  %12 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %13 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @hweight32(i64 %20)
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %197

26:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %81, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @IEEE80211_HT_MCS_MASK_LEN, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %84

31:                                               ; preds = %27
  %32 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %33 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @hweight8(i64 %42)
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %197

48:                                               ; preds = %31
  %49 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %50 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %48
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ugt i64 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %197

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %197

80:                                               ; preds = %74, %71
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  br label %27

84:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %85

85:                                               ; preds = %139, %84
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @NL80211_VHT_NSS_MAX, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %142

89:                                               ; preds = %85
  %90 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %91 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @hweight16(i64 %100)
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %89
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %197

106:                                              ; preds = %89
  %107 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %108 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %106
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %9, align 8
  %122 = load i64, i64* %9, align 8
  %123 = icmp ugt i64 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %197

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %106
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %9, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i64, i64* %11, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %197

138:                                              ; preds = %132, %129
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %10, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %10, align 8
  br label %85

142:                                              ; preds = %85
  %143 = load i64, i64* %8, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i64, i64* %9, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %145, %142
  %149 = load i64, i64* %11, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %148
  %152 = load i64, i64* %8, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* %9, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154, %145
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %197

160:                                              ; preds = %154, %151, %148
  %161 = load i64, i64* %11, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %165 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %164, i32 0, i32 0
  %166 = load i32, i32* @NL80211_EXT_FEATURE_BEACON_RATE_LEGACY, align 4
  %167 = call i32 @wiphy_ext_feature_isset(i32* %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %197

172:                                              ; preds = %163, %160
  %173 = load i64, i64* %8, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %172
  %176 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %177 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %176, i32 0, i32 0
  %178 = load i32, i32* @NL80211_EXT_FEATURE_BEACON_RATE_HT, align 4
  %179 = call i32 @wiphy_ext_feature_isset(i32* %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %175
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  br label %197

184:                                              ; preds = %175, %172
  %185 = load i64, i64* %9, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %184
  %188 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %189 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %188, i32 0, i32 0
  %190 = load i32, i32* @NL80211_EXT_FEATURE_BEACON_RATE_VHT, align 4
  %191 = call i32 @wiphy_ext_feature_isset(i32* %189, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %187
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %4, align 4
  br label %197

196:                                              ; preds = %187, %184
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %196, %193, %181, %169, %157, %135, %124, %103, %77, %66, %45, %23
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @hweight32(i64) #1

declare dso_local i32 @hweight8(i64) #1

declare dso_local i32 @hweight16(i64) #1

declare dso_local i32 @wiphy_ext_feature_isset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
