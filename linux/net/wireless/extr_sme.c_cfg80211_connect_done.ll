; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_connect_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_connect_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_connect_resp_params = type { i32, i32, i32, i32, %struct.cfg80211_bss*, %struct.TYPE_6__, i64, i64, i64 }
%struct.cfg80211_bss = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_event = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.cfg80211_bss*, %struct.TYPE_4__, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32*, i32*, i32* }
%struct.cfg80211_internal_bss = type { i32, i32 }

@IEEE80211_PRIVACY_ANY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_PMKID_LEN = common dso_local global i32 0, align 4
@EVENT_CONNECT_RESULT = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_connect_done(%struct.net_device* %0, %struct.cfg80211_connect_resp_params* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cfg80211_connect_resp_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.cfg80211_event*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cfg80211_internal_bss*, align 8
  %13 = alloca %struct.cfg80211_bss*, align 8
  %14 = alloca %struct.cfg80211_bss*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cfg80211_connect_resp_params* %1, %struct.cfg80211_connect_resp_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %7, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %8, align 8
  %22 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %23 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %22, i32 0, i32 4
  %24 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %23, align 8
  %25 = icmp ne %struct.cfg80211_bss* %24, null
  br i1 %25, label %26, label %78

26:                                               ; preds = %3
  %27 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %28 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %27, i32 0, i32 4
  %29 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %28, align 8
  %30 = call %struct.cfg80211_internal_bss* @bss_from_pub(%struct.cfg80211_bss* %29)
  store %struct.cfg80211_internal_bss* %30, %struct.cfg80211_internal_bss** %12, align 8
  %31 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %12, align 8
  %32 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %31, i32 0, i32 1
  %33 = call i64 @list_empty(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %26
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %13, align 8
  %36 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %37 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %36, i32 0, i32 4
  %38 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %37, align 8
  store %struct.cfg80211_bss* %38, %struct.cfg80211_bss** %14, align 8
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %40 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %43 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %42, i32 0, i32 4
  %44 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %43, align 8
  %45 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %51 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_PRIVACY_ANY, align 4
  %57 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %41, i32* null, i32 %46, i32 %49, i32 %52, i32 %55, i32 %56)
  store %struct.cfg80211_bss* %57, %struct.cfg80211_bss** %13, align 8
  %58 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %13, align 8
  %59 = icmp ne %struct.cfg80211_bss* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %35
  %61 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %13, align 8
  %62 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %63 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %62, i32 0, i32 4
  store %struct.cfg80211_bss* %61, %struct.cfg80211_bss** %63, align 8
  br label %71

64:                                               ; preds = %35
  %65 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %66 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %12, align 8
  %67 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %12, align 8
  %68 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cfg80211_bss_update(%struct.cfg80211_registered_device* %65, %struct.cfg80211_internal_bss* %66, i32 0, i32 %69)
  br label %71

71:                                               ; preds = %64, %60
  %72 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %73 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %14, align 8
  %76 = call i32 @cfg80211_put_bss(i32 %74, %struct.cfg80211_bss* %75)
  br label %77

77:                                               ; preds = %71, %26
  br label %78

78:                                               ; preds = %77, %3
  %79 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %80 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %79, i32 0, i32 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @ETH_ALEN, align 4
  br label %86

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  %88 = sext i32 %87 to i64
  %89 = add i64 112, %88
  %90 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %91 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add i64 %89, %93
  %95 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %96 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %94, %98
  %100 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %101 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add i64 %99, %104
  %106 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %107 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = add i64 %105, %110
  %112 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %113 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %86
  %118 = load i32, i32* @WLAN_PMKID_LEN, align 4
  br label %120

119:                                              ; preds = %86
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  %122 = sext i32 %121 to i64
  %123 = add i64 %111, %122
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %6, align 4
  %126 = call %struct.cfg80211_event* @kzalloc(i32 %124, i32 %125)
  store %struct.cfg80211_event* %126, %struct.cfg80211_event** %9, align 8
  %127 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %128 = icmp ne %struct.cfg80211_event* %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %120
  %130 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %131 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %134 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %133, i32 0, i32 4
  %135 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %134, align 8
  %136 = call i32 @cfg80211_put_bss(i32 %132, %struct.cfg80211_bss* %135)
  br label %417

137:                                              ; preds = %120
  %138 = load i32, i32* @EVENT_CONNECT_RESULT, align 4
  %139 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %140 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %142 = bitcast %struct.cfg80211_event* %141 to i32*
  %143 = getelementptr inbounds i32, i32* %142, i64 112
  store i32* %143, i32** %11, align 8
  %144 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %145 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %144, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %137
  %149 = load i32*, i32** %11, align 8
  %150 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %151 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 8
  store i32* %149, i32** %152, align 8
  %153 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %154 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 8
  %156 = load i32*, i32** %155, align 8
  %157 = bitcast i32* %156 to i8*
  %158 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %159 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %158, i32 0, i32 8
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @ETH_ALEN, align 4
  %162 = call i32 @memcpy(i8* %157, i64 %160, i32 %161)
  %163 = load i32, i32* @ETH_ALEN, align 4
  %164 = load i32*, i32** %11, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %11, align 8
  br label %167

167:                                              ; preds = %148, %137
  %168 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %169 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %201

172:                                              ; preds = %167
  %173 = load i32*, i32** %11, align 8
  %174 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %175 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 7
  store i32* %173, i32** %176, align 8
  %177 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %178 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %181 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %184 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 7
  %186 = load i32*, i32** %185, align 8
  %187 = bitcast i32* %186 to i8*
  %188 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %189 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %188, i32 0, i32 7
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %192 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @memcpy(i8* %187, i64 %190, i32 %193)
  %195 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %196 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32*, i32** %11, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %11, align 8
  br label %201

201:                                              ; preds = %172, %167
  %202 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %203 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %235

206:                                              ; preds = %201
  %207 = load i32*, i32** %11, align 8
  %208 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %209 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 6
  store i32* %207, i32** %210, align 8
  %211 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %212 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %215 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  store i32 %213, i32* %216, align 4
  %217 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %218 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 6
  %220 = load i32*, i32** %219, align 8
  %221 = bitcast i32* %220 to i8*
  %222 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %223 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %226 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @memcpy(i8* %221, i64 %224, i32 %227)
  %229 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %230 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %11, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %11, align 8
  br label %235

235:                                              ; preds = %206, %201
  %236 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %237 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %277

241:                                              ; preds = %235
  %242 = load i32*, i32** %11, align 8
  %243 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %244 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 6
  store i32* %242, i32** %246, align 8
  %247 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %248 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %252 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  store i32 %250, i32* %254, align 8
  %255 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %256 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 6
  %259 = load i32*, i32** %258, align 8
  %260 = bitcast i32* %259 to i8*
  %261 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %262 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 6
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %266 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @memcpy(i8* %260, i64 %264, i32 %268)
  %270 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %271 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32*, i32** %11, align 8
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  store i32* %276, i32** %11, align 8
  br label %277

277:                                              ; preds = %241, %235
  %278 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %279 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %278, i32 0, i32 5
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %319

283:                                              ; preds = %277
  %284 = load i32*, i32** %11, align 8
  %285 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %286 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 5
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 5
  store i32* %284, i32** %288, align 8
  %289 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %290 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %289, i32 0, i32 5
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %294 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 1
  store i32 %292, i32* %296, align 4
  %297 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %298 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 5
  %301 = load i32*, i32** %300, align 8
  %302 = bitcast i32* %301 to i8*
  %303 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %304 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 5
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %308 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %307, i32 0, i32 5
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @memcpy(i8* %302, i64 %306, i32 %310)
  %312 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %313 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32*, i32** %11, align 8
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32* %318, i32** %11, align 8
  br label %319

319:                                              ; preds = %283, %277
  %320 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %321 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 4
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %347

325:                                              ; preds = %319
  %326 = load i32*, i32** %11, align 8
  %327 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %328 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 4
  store i32* %326, i32** %330, align 8
  %331 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %332 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 4
  %335 = load i32*, i32** %334, align 8
  %336 = bitcast i32* %335 to i8*
  %337 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %338 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %337, i32 0, i32 5
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 4
  %340 = load i64, i64* %339, align 8
  %341 = load i32, i32* @WLAN_PMKID_LEN, align 4
  %342 = call i32 @memcpy(i8* %336, i64 %340, i32 %341)
  %343 = load i32, i32* @WLAN_PMKID_LEN, align 4
  %344 = load i32*, i32** %11, align 8
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  store i32* %346, i32** %11, align 8
  br label %347

347:                                              ; preds = %325, %319
  %348 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %349 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 3
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %353 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 5
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 3
  store i64 %351, i64* %355, align 8
  %356 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %357 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %347
  %362 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %363 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %362, i32 0, i32 5
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %367 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 5
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 2
  store i32 %365, i32* %369, align 8
  br label %370

370:                                              ; preds = %361, %347
  %371 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %372 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %371, i32 0, i32 4
  %373 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %372, align 8
  %374 = icmp ne %struct.cfg80211_bss* %373, null
  br i1 %374, label %375, label %381

375:                                              ; preds = %370
  %376 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %377 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %376, i32 0, i32 4
  %378 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %377, align 8
  %379 = call %struct.cfg80211_internal_bss* @bss_from_pub(%struct.cfg80211_bss* %378)
  %380 = call i32 @cfg80211_hold_bss(%struct.cfg80211_internal_bss* %379)
  br label %381

381:                                              ; preds = %375, %370
  %382 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %383 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %382, i32 0, i32 4
  %384 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %383, align 8
  %385 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %386 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 4
  store %struct.cfg80211_bss* %384, %struct.cfg80211_bss** %387, align 8
  %388 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %389 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %392 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i32 0, i32 3
  store i32 %390, i32* %393, align 4
  %394 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %5, align 8
  %395 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %398 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 2
  store i32 %396, i32* %399, align 8
  %400 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %401 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %400, i32 0, i32 0
  %402 = load i64, i64* %10, align 8
  %403 = call i32 @spin_lock_irqsave(i32* %401, i64 %402)
  %404 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %405 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %404, i32 0, i32 0
  %406 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %407 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %406, i32 0, i32 1
  %408 = call i32 @list_add_tail(i32* %405, i32* %407)
  %409 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %410 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %409, i32 0, i32 0
  %411 = load i64, i64* %10, align 8
  %412 = call i32 @spin_unlock_irqrestore(i32* %410, i64 %411)
  %413 = load i32, i32* @cfg80211_wq, align 4
  %414 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %415 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %414, i32 0, i32 0
  %416 = call i32 @queue_work(i32 %413, i32* %415)
  br label %417

417:                                              ; preds = %381, %129
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local %struct.cfg80211_internal_bss* @bss_from_pub(%struct.cfg80211_bss*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cfg80211_bss_update(%struct.cfg80211_registered_device*, %struct.cfg80211_internal_bss*, i32, i32) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #1

declare dso_local %struct.cfg80211_event* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @cfg80211_hold_bss(%struct.cfg80211_internal_bss*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
