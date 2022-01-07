; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_conn_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_conn_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i32, %struct.ieee80211_channel* }
%struct.cfg80211_registered_device = type { %struct.cfg80211_scan_request*, i32, i64 }
%struct.cfg80211_scan_request = type { i32*, i32, i32, i32, i32*, %struct.wireless_dev*, i32, %struct.TYPE_6__*, %struct.ieee80211_channel** }
%struct.TYPE_6__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@CFG80211_CONN_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wireless_dev*)* @cfg80211_conn_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_conn_scan(%struct.wireless_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.cfg80211_scan_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_supported_band*, align 8
  %14 = alloca %struct.ieee80211_channel*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %3, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.TYPE_9__* %17)
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %4, align 8
  %19 = call i32 (...) @ASSERT_RTNL()
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %21 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %20)
  %22 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %23 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %22, i32 0, i32 0
  %24 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %23, align 8
  %25 = icmp ne %struct.cfg80211_scan_request* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %28 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %1
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %272

34:                                               ; preds = %26
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %36 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %39, align 8
  %41 = icmp ne %struct.ieee80211_channel* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %48

43:                                               ; preds = %34
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %45 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = call i32 @ieee80211_get_num_supported_channels(%struct.TYPE_9__* %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %42
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 8, %50
  %52 = add i64 72, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.cfg80211_scan_request* @kzalloc(i32 %53, i32 %54)
  store %struct.cfg80211_scan_request* %55, %struct.cfg80211_scan_request** %5, align 8
  %56 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %57 = icmp ne %struct.cfg80211_scan_request* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %272

61:                                               ; preds = %48
  %62 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %63 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %66, align 8
  %68 = icmp ne %struct.ieee80211_channel* %67, null
  br i1 %68, label %69, label %116

69:                                               ; preds = %61
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %71 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %74, align 8
  %76 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %79 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %78, i32 0, i32 2
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %82, i64 %84
  %86 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %85, align 8
  store %struct.ieee80211_supported_band* %86, %struct.ieee80211_supported_band** %9, align 8
  %87 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %88 = icmp ne %struct.ieee80211_supported_band* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %69
  %90 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %91 = call i32 @kfree(%struct.cfg80211_scan_request* %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %272

94:                                               ; preds = %69
  %95 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %96 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %99, align 8
  %101 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %102 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %101, i32 0, i32 8
  %103 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %102, align 8
  %104 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %103, i64 0
  store %struct.ieee80211_channel* %100, %struct.ieee80211_channel** %104, align 8
  %105 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %106 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = shl i32 1, %107
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %111 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  br label %184

116:                                              ; preds = %61
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %179, %116
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %182

121:                                              ; preds = %117
  %122 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %123 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %126, i64 %128
  %130 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %129, align 8
  store %struct.ieee80211_supported_band* %130, %struct.ieee80211_supported_band** %13, align 8
  %131 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %132 = icmp ne %struct.ieee80211_supported_band* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %121
  br label %179

134:                                              ; preds = %121
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %164, %134
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %138 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %135
  %142 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %143 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %142, i32 0, i32 2
  %144 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %144, i64 %146
  store %struct.ieee80211_channel* %147, %struct.ieee80211_channel** %14, align 8
  %148 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %149 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %141
  br label %164

155:                                              ; preds = %141
  %156 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %157 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %158 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %157, i32 0, i32 8
  %159 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %159, i64 %162
  store %struct.ieee80211_channel* %156, %struct.ieee80211_channel** %163, align 8
  br label %164

164:                                              ; preds = %155, %154
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %135

167:                                              ; preds = %135
  %168 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %169 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = shl i32 1, %170
  %172 = sub nsw i32 %171, 1
  %173 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %174 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  br label %179

179:                                              ; preds = %167, %133
  %180 = load i32, i32* %12, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %12, align 4
  br label %117

182:                                              ; preds = %117
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %182, %94
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %187 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  %188 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %189 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %188, i32 0, i32 8
  %190 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %190, i64 %192
  %194 = bitcast %struct.ieee80211_channel** %193 to i8*
  %195 = bitcast i8* %194 to %struct.TYPE_6__*
  %196 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %197 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %196, i32 0, i32 7
  store %struct.TYPE_6__* %195, %struct.TYPE_6__** %197, align 8
  %198 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %199 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %198, i32 0, i32 2
  store i32 1, i32* %199, align 4
  %200 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %201 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %200, i32 0, i32 7
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %207 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %206, i32 0, i32 1
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %213 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %212, i32 0, i32 1
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @memcpy(i32 %205, i32 %211, i32 %217)
  %219 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %220 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %219, i32 0, i32 1
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %226 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %225, i32 0, i32 7
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  store i32 %224, i32* %229, align 4
  %230 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %231 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @eth_broadcast_addr(i32 %232)
  %234 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %235 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %236 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %235, i32 0, i32 5
  store %struct.wireless_dev* %234, %struct.wireless_dev** %236, align 8
  %237 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %238 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %237, i32 0, i32 1
  %239 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %240 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %239, i32 0, i32 4
  store i32* %238, i32** %240, align 8
  %241 = load i32, i32* @jiffies, align 4
  %242 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %243 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 8
  %244 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %245 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %246 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %245, i32 0, i32 0
  store %struct.cfg80211_scan_request* %244, %struct.cfg80211_scan_request** %246, align 8
  %247 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %248 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %249 = call i32 @rdev_scan(%struct.cfg80211_registered_device* %247, %struct.cfg80211_scan_request* %248)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %265, label %252

252:                                              ; preds = %184
  %253 = load i32, i32* @CFG80211_CONN_SCANNING, align 4
  %254 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %255 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %254, i32 0, i32 1
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  store i32 %253, i32* %257, align 8
  %258 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %259 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %260 = call i32 @nl80211_send_scan_start(%struct.cfg80211_registered_device* %258, %struct.wireless_dev* %259)
  %261 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %262 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @dev_hold(i32 %263)
  br label %270

265:                                              ; preds = %184
  %266 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %267 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %266, i32 0, i32 0
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %267, align 8
  %268 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %269 = call i32 @kfree(%struct.cfg80211_scan_request* %268)
  br label %270

270:                                              ; preds = %265, %252
  %271 = load i32, i32* %7, align 4
  store i32 %271, i32* %2, align 4
  br label %272

272:                                              ; preds = %270, %89, %58, %31
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.TYPE_9__*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @ieee80211_get_num_supported_channels(%struct.TYPE_9__*) #1

declare dso_local %struct.cfg80211_scan_request* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cfg80211_scan_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @rdev_scan(%struct.cfg80211_registered_device*, %struct.cfg80211_scan_request*) #1

declare dso_local i32 @nl80211_send_scan_start(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @dev_hold(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
