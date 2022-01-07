; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_roamed.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_roamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_roam_info = type { i32, %struct.TYPE_5__, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_event = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__, i32*, i64, i32*, i64 }
%struct.TYPE_4__ = type { i32, i64, i32*, i32*, i64, i32*, i64 }

@IEEE80211_PRIVACY_ANY = common dso_local global i32 0, align 4
@WLAN_PMKID_LEN = common dso_local global i64 0, align 8
@EVENT_ROAMED = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_roamed(%struct.net_device* %0, %struct.cfg80211_roam_info* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cfg80211_roam_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.cfg80211_event*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cfg80211_roam_info* %1, %struct.cfg80211_roam_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %14, %struct.wireless_dev** %7, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %17)
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %8, align 8
  %19 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %20 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %3
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %28 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %31 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %37 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %40 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_PRIVACY_ANY, align 4
  %43 = call i32 @cfg80211_get_bss(i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %42)
  %44 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %45 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %23, %3
  %47 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %48 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %326

56:                                               ; preds = %46
  %57 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %58 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add i64 112, %59
  %61 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %62 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %60, %63
  %65 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %66 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %64, %68
  %70 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %71 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %69, %73
  %75 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %76 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %56
  %81 = load i64, i64* @WLAN_PMKID_LEN, align 8
  br label %83

82:                                               ; preds = %56
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i64 [ %81, %80 ], [ 0, %82 ]
  %85 = add i64 %74, %84
  %86 = load i32, i32* %6, align 4
  %87 = call %struct.cfg80211_event* @kzalloc(i64 %85, i32 %86)
  store %struct.cfg80211_event* %87, %struct.cfg80211_event** %9, align 8
  %88 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %89 = icmp ne %struct.cfg80211_event* %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %83
  %91 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %92 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %95 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @cfg80211_put_bss(i32 %93, i32 %96)
  br label %326

98:                                               ; preds = %83
  %99 = load i32, i32* @EVENT_ROAMED, align 4
  %100 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %101 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %103 = bitcast %struct.cfg80211_event* %102 to i32*
  %104 = getelementptr inbounds i32, i32* %103, i64 112
  store i32* %104, i32** %11, align 8
  %105 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %106 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %137

109:                                              ; preds = %98
  %110 = load i32*, i32** %11, align 8
  %111 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %112 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  store i32* %110, i32** %113, align 8
  %114 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %115 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %118 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 5
  store i64 %116, i64* %119, align 8
  %120 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %121 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = bitcast i32* %123 to i8*
  %125 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %126 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %129 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @memcpy(i8* %124, i64 %127, i64 %130)
  %132 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %133 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 %134
  store i32* %136, i32** %11, align 8
  br label %137

137:                                              ; preds = %109, %98
  %138 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %139 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %170

142:                                              ; preds = %137
  %143 = load i32*, i32** %11, align 8
  %144 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %145 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  store i32* %143, i32** %146, align 8
  %147 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %148 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %151 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  store i64 %149, i64* %152, align 8
  %153 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %154 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = bitcast i32* %156 to i8*
  %158 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %159 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %162 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @memcpy(i8* %157, i64 %160, i64 %163)
  %165 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %166 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i32*, i32** %11, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 %167
  store i32* %169, i32** %11, align 8
  br label %170

170:                                              ; preds = %142, %137
  %171 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %172 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %211

176:                                              ; preds = %170
  %177 = load i32*, i32** %11, align 8
  %178 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %179 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 5
  store i32* %177, i32** %181, align 8
  %182 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %183 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %187 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 6
  store i64 %185, i64* %189, align 8
  %190 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %191 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = bitcast i32* %194 to i8*
  %196 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %197 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %201 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @memcpy(i8* %195, i64 %199, i64 %203)
  %205 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %206 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = load i32*, i32** %11, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 %208
  store i32* %210, i32** %11, align 8
  br label %211

211:                                              ; preds = %176, %170
  %212 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %213 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %252

217:                                              ; preds = %211
  %218 = load i32*, i32** %11, align 8
  %219 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %220 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 3
  store i32* %218, i32** %222, align 8
  %223 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %224 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %228 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 4
  store i64 %226, i64* %230, align 8
  %231 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %232 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = bitcast i32* %235 to i8*
  %237 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %238 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %242 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @memcpy(i8* %236, i64 %240, i64 %244)
  %246 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %247 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load i32*, i32** %11, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 %249
  store i32* %251, i32** %11, align 8
  br label %252

252:                                              ; preds = %217, %211
  %253 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %254 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %279

258:                                              ; preds = %252
  %259 = load i32*, i32** %11, align 8
  %260 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %261 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 2
  store i32* %259, i32** %263, align 8
  %264 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %265 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = bitcast i32* %268 to i8*
  %270 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %271 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @WLAN_PMKID_LEN, align 8
  %275 = call i32 @memcpy(i8* %269, i64 %273, i64 %274)
  %276 = load i64, i64* @WLAN_PMKID_LEN, align 8
  %277 = load i32*, i32** %11, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 %276
  store i32* %278, i32** %11, align 8
  br label %279

279:                                              ; preds = %258, %252
  %280 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %281 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %285 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  store i64 %283, i64* %287, align 8
  %288 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %289 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %279
  %294 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %295 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %299 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 0
  store i32 %297, i32* %301, align 8
  br label %302

302:                                              ; preds = %293, %279
  %303 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %5, align 8
  %304 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %307 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 0
  store i32 %305, i32* %308, align 8
  %309 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %310 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %309, i32 0, i32 0
  %311 = load i64, i64* %10, align 8
  %312 = call i32 @spin_lock_irqsave(i32* %310, i64 %311)
  %313 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %314 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %313, i32 0, i32 0
  %315 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %316 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %315, i32 0, i32 1
  %317 = call i32 @list_add_tail(i32* %314, i32* %316)
  %318 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %319 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %318, i32 0, i32 0
  %320 = load i64, i64* %10, align 8
  %321 = call i32 @spin_unlock_irqrestore(i32* %319, i64 %320)
  %322 = load i32, i32* @cfg80211_wq, align 4
  %323 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %324 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %323, i32 0, i32 0
  %325 = call i32 @queue_work(i32 %322, i32* %324)
  br label %326

326:                                              ; preds = %302, %90, %55
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @cfg80211_get_bss(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.cfg80211_event* @kzalloc(i64, i32) #1

declare dso_local i32 @cfg80211_put_bss(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

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
