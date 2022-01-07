; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c___cfg80211_connect_result.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c___cfg80211_connect_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_27__*, %struct.TYPE_20__*, i64, i64, i32*, i32, i32, %struct.TYPE_23__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.cfg80211_connect_resp_params = type { i64, %struct.TYPE_19__*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@IEEE80211_PRIVACY_ANY = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_STATIC_WEP = common dso_local global i32 0, align 4
@WLAN_EID_COUNTRY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IWEVASSOCREQIE = common dso_local global i32 0, align 4
@IWEVASSOCRESPIE = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cfg80211_connect_result(%struct.net_device* %0, %struct.cfg80211_connect_resp_params* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cfg80211_connect_resp_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i64*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cfg80211_connect_resp_params* %1, %struct.cfg80211_connect_resp_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  store %struct.wireless_dev* %11, %struct.wireless_dev** %7, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %13 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %12)
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %24 = icmp ne i64 %22, %23
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ false, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %32 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  %34 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %35 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %34, i32 0, i32 1
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = call i32 @cfg80211_put_bss(%struct.TYPE_27__* %33, %struct.TYPE_19__* %36)
  br label %227

38:                                               ; preds = %25
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %40 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %40, align 8
  %42 = call %struct.TYPE_26__* @wiphy_to_rdev(%struct.TYPE_27__* %41)
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @nl80211_send_connect_result(%struct.TYPE_26__* %42, %struct.net_device* %43, %struct.cfg80211_connect_resp_params* %44, i32 %45)
  %47 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %48 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = icmp ne %struct.TYPE_19__* %49, null
  br i1 %50, label %100, label %51

51:                                               ; preds = %38
  %52 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %53 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %51
  %58 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %59 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %59, align 8
  %61 = call %struct.TYPE_26__* @wiphy_to_rdev(%struct.TYPE_27__* %60)
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON_ONCE(i32 %68)
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %71 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %71, align 8
  %73 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %74 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %77 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %80 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %83 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IEEE80211_PRIVACY_ANY, align 4
  %86 = call %struct.TYPE_19__* @cfg80211_get_bss(%struct.TYPE_27__* %72, i32* null, i32 %75, i32 %78, i64 %81, i32 %84, i32 %85)
  %87 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %88 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %87, i32 0, i32 1
  store %struct.TYPE_19__* %86, %struct.TYPE_19__** %88, align 8
  %89 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %90 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %89, i32 0, i32 1
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = icmp ne %struct.TYPE_19__* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %57
  %94 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %95 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %94, i32 0, i32 1
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = call %struct.TYPE_20__* @bss_from_pub(%struct.TYPE_19__* %96)
  %98 = call i32 @cfg80211_hold_bss(%struct.TYPE_20__* %97)
  br label %99

99:                                               ; preds = %93, %57
  br label %100

100:                                              ; preds = %99, %51, %38
  %101 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %102 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %101, i32 0, i32 2
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = icmp ne %struct.TYPE_20__* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %100
  %106 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %107 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %106, i32 0, i32 2
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = call i32 @cfg80211_unhold_bss(%struct.TYPE_20__* %108)
  %110 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %111 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %110, i32 0, i32 1
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %111, align 8
  %113 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %114 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %113, i32 0, i32 2
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = call i32 @cfg80211_put_bss(%struct.TYPE_27__* %112, %struct.TYPE_19__* %116)
  %118 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %119 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %118, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %119, align 8
  br label %120

120:                                              ; preds = %105, %100
  %121 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %122 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %157

126:                                              ; preds = %120
  %127 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %128 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @kzfree(i32* %129)
  %131 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %132 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %131, i32 0, i32 5
  store i32* null, i32** %132, align 8
  %133 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %134 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %133, i32 0, i32 4
  store i64 0, i64* %134, align 8
  %135 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %136 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %135, i32 0, i32 3
  store i64 0, i64* %136, align 8
  %137 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %138 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %137, i32 0, i32 1
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = icmp ne %struct.TYPE_19__* %139, null
  br i1 %140, label %141, label %154

141:                                              ; preds = %126
  %142 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %143 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %142, i32 0, i32 1
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  %145 = call %struct.TYPE_20__* @bss_from_pub(%struct.TYPE_19__* %144)
  %146 = call i32 @cfg80211_unhold_bss(%struct.TYPE_20__* %145)
  %147 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %148 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %147, i32 0, i32 1
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %148, align 8
  %150 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %151 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %150, i32 0, i32 1
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %151, align 8
  %153 = call i32 @cfg80211_put_bss(%struct.TYPE_27__* %149, %struct.TYPE_19__* %152)
  br label %154

154:                                              ; preds = %141, %126
  %155 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %156 = call i32 @cfg80211_sme_free(%struct.wireless_dev* %155)
  br label %227

157:                                              ; preds = %120
  %158 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %159 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %158, i32 0, i32 1
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = icmp ne %struct.TYPE_19__* %160, null
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i64 @WARN_ON(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %227

167:                                              ; preds = %157
  %168 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %169 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %168, i32 0, i32 1
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = call %struct.TYPE_20__* @bss_from_pub(%struct.TYPE_19__* %170)
  %172 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %173 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %172, i32 0, i32 2
  store %struct.TYPE_20__* %171, %struct.TYPE_20__** %173, align 8
  %174 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %175 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %174, i32 0, i32 1
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @WIPHY_FLAG_HAS_STATIC_WEP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %167
  %183 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %184 = call i32 @cfg80211_upload_connect_keys(%struct.wireless_dev* %183)
  br label %185

185:                                              ; preds = %182, %167
  %186 = call i32 (...) @rcu_read_lock()
  %187 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %188 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %187, i32 0, i32 1
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = load i32, i32* @WLAN_EID_COUNTRY, align 4
  %191 = call i64* @ieee80211_bss_get_ie(%struct.TYPE_19__* %189, i32 %190)
  store i64* %191, i64** %8, align 8
  %192 = load i64*, i64** %8, align 8
  %193 = icmp ne i64* %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %185
  %195 = call i32 (...) @rcu_read_unlock()
  br label %227

196:                                              ; preds = %185
  %197 = load i64*, i64** %8, align 8
  %198 = load i64*, i64** %8, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 1
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 2, %200
  %202 = load i32, i32* @GFP_ATOMIC, align 4
  %203 = call i64* @kmemdup(i64* %197, i64 %201, i32 %202)
  store i64* %203, i64** %8, align 8
  %204 = call i32 (...) @rcu_read_unlock()
  %205 = load i64*, i64** %8, align 8
  %206 = icmp ne i64* %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %196
  br label %227

208:                                              ; preds = %196
  %209 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %210 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %209, i32 0, i32 1
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %210, align 8
  %212 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %213 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %212, i32 0, i32 1
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i64*, i64** %8, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 2
  %221 = load i64*, i64** %8, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 1
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @regulatory_hint_country_ie(%struct.TYPE_27__* %211, i32 %218, i64* %220, i64 %223)
  %225 = load i64*, i64** %8, align 8
  %226 = call i32 @kfree(i64* %225)
  br label %227

227:                                              ; preds = %208, %207, %194, %166, %154, %30
  ret void
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_put_bss(%struct.TYPE_27__*, %struct.TYPE_19__*) #1

declare dso_local i32 @nl80211_send_connect_result(%struct.TYPE_26__*, %struct.net_device*, %struct.cfg80211_connect_resp_params*, i32) #1

declare dso_local %struct.TYPE_26__* @wiphy_to_rdev(%struct.TYPE_27__*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.TYPE_19__* @cfg80211_get_bss(%struct.TYPE_27__*, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @cfg80211_hold_bss(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @bss_from_pub(%struct.TYPE_19__*) #1

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_20__*) #1

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i32 @cfg80211_sme_free(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_upload_connect_keys(%struct.wireless_dev*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64* @ieee80211_bss_get_ie(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64* @kmemdup(i64*, i64, i32) #1

declare dso_local i32 @regulatory_hint_country_ie(%struct.TYPE_27__*, i32, i64*, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
