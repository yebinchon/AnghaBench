; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_mlme_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_mlme_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.wireless_dev = type { i64, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.cfg80211_mgmt_tx_params = type { i32, i64 }
%struct.ieee80211_mgmt = type { %struct.TYPE_13__, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4
@WLAN_CATEGORY_PUBLIC = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mlme_mgmt_tx(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1, %struct.cfg80211_mgmt_tx_params* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_mgmt_tx_params*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_mgmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store %struct.cfg80211_mgmt_tx_params* %2, %struct.cfg80211_mgmt_tx_params** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %241

22:                                               ; preds = %4
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %24 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %241

32:                                               ; preds = %22
  %33 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %34 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 25
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %241

40:                                               ; preds = %32
  %41 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %42 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %44, %struct.ieee80211_mgmt** %10, align 8
  %45 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %46 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ieee80211_is_mgmt(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %241

53:                                               ; preds = %40
  %54 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %66 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = ashr i32 %71, 4
  %73 = call i32 @BIT(i32 %72)
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %53
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %241

79:                                               ; preds = %53
  %80 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %81 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @ieee80211_is_action(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %181

85:                                               ; preds = %79
  %86 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %87 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WLAN_CATEGORY_PUBLIC, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %181

93:                                               ; preds = %85
  store i32 0, i32* %12, align 4
  %94 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %95 = call i32 @wdev_lock(%struct.wireless_dev* %94)
  %96 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %97 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  switch i64 %98, label %170 [
    i64 136, label %99
    i64 128, label %99
    i64 131, label %99
    i64 135, label %144
    i64 129, label %144
    i64 134, label %144
    i64 133, label %156
    i64 130, label %169
    i64 132, label %169
  ]

99:                                               ; preds = %93, %93, %93
  %100 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %101 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %100, i32 0, i32 1
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = icmp ne %struct.TYPE_14__* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @ENOTCONN, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %12, align 4
  br label %173

107:                                              ; preds = %99
  %108 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %109 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %108, i32 0, i32 1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %115 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ether_addr_equal(i32 %113, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %107
  %120 = load i32, i32* @ENOTCONN, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %12, align 4
  br label %173

122:                                              ; preds = %107
  %123 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %124 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 136
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %173

128:                                              ; preds = %122
  %129 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %130 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %129, i32 0, i32 1
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %136 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ether_addr_equal(i32 %134, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %128
  %141 = load i32, i32* @ENOTCONN, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %12, align 4
  br label %173

143:                                              ; preds = %128
  br label %173

144:                                              ; preds = %93, %93, %93
  %145 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %146 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %149 = call i32 @wdev_address(%struct.wireless_dev* %148)
  %150 = call i32 @ether_addr_equal(i32 %147, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %152, %144
  br label %173

156:                                              ; preds = %93
  %157 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %158 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %161 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @ether_addr_equal(i32 %159, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %156
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %12, align 4
  br label %173

168:                                              ; preds = %156
  br label %173

169:                                              ; preds = %93, %93
  br label %170

170:                                              ; preds = %93, %169
  %171 = load i32, i32* @EOPNOTSUPP, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %170, %168, %165, %155, %143, %140, %127, %119, %104
  %174 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %175 = call i32 @wdev_unlock(%struct.wireless_dev* %174)
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %5, align 4
  br label %241

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %85, %79
  %182 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %183 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %186 = call i32 @wdev_address(%struct.wireless_dev* %185)
  %187 = call i32 @ether_addr_equal(i32 %184, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %235, label %189

189:                                              ; preds = %181
  %190 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %191 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @ieee80211_is_action(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %189
  %196 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %197 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @WLAN_CATEGORY_PUBLIC, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %195, %189
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %5, align 4
  br label %241

206:                                              ; preds = %195
  %207 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %208 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %207, i32 0, i32 1
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = icmp ne %struct.TYPE_14__* %209, null
  br i1 %210, label %220, label %211

211:                                              ; preds = %206
  %212 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %213 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %212, i32 0, i32 0
  %214 = load i32, i32* @NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA, align 4
  %215 = call i32 @wiphy_ext_feature_isset(i32* %213, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %211
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %5, align 4
  br label %241

220:                                              ; preds = %211, %206
  %221 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %222 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %221, i32 0, i32 1
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = icmp ne %struct.TYPE_14__* %223, null
  br i1 %224, label %225, label %234

225:                                              ; preds = %220
  %226 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %227 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %226, i32 0, i32 0
  %228 = load i32, i32* @NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA_CONNECTED, align 4
  %229 = call i32 @wiphy_ext_feature_isset(i32* %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %225
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %5, align 4
  br label %241

234:                                              ; preds = %225, %220
  br label %235

235:                                              ; preds = %234, %181
  %236 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %237 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %238 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %239 = load i32*, i32** %9, align 8
  %240 = call i32 @rdev_mgmt_tx(%struct.cfg80211_registered_device* %236, %struct.wireless_dev* %237, %struct.cfg80211_mgmt_tx_params* %238, i32* %239)
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %235, %231, %217, %203, %178, %76, %50, %37, %29, %19
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i32 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @wdev_address(%struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @wiphy_ext_feature_isset(i32*, i32) #1

declare dso_local i32 @rdev_mgmt_tx(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_mgmt_tx_params*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
