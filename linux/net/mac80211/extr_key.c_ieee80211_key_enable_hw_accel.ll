; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_enable_hw_accel.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_enable_hw_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { i32, %struct.TYPE_9__*, %struct.TYPE_11__, %struct.sta_info*, %struct.ieee80211_sub_if_data* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.sta_info = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@KEY_FLAG_TAINTED = common dso_local global i32 0, align 4
@KEY_FLAG_UPLOADED_TO_HARDWARE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_MIC_SPACE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_RESERVE_TAILROOM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@SUPPORTS_PER_STA_GTK = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@SET_KEY = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to set key (%d, %pM) to hardware (%d)\0A\00", align 1
@bcast_addr = common dso_local global i32 0, align 4
@SW_CRYPTO_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_key*)* @ieee80211_key_enable_hw_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_key_enable_hw_accel(%struct.ieee80211_key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_key*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %3, align 8
  %7 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %7, i32 0, i32 4
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  store %struct.ieee80211_sub_if_data* %9, %struct.ieee80211_sub_if_data** %4, align 8
  %10 = load i32, i32* @EOPNOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = call i32 (...) @might_sleep()
  %13 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @KEY_FLAG_TAINTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %1
  %20 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @KEY_FLAG_UPLOADED_TO_HARDWARE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %32 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_MIC_SPACE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @IEEE80211_KEY_FLAG_RESERVE_TAILROOM, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %30, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %40 = call i32 @increment_tailroom_need_count(%struct.ieee80211_sub_if_data* %39)
  br label %41

41:                                               ; preds = %38, %26, %19
  %42 = load i32, i32* @KEY_FLAG_UPLOADED_TO_HARDWARE, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %248

50:                                               ; preds = %1
  %51 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %224

60:                                               ; preds = %50
  %61 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %62 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = call i32 @assert_key_lock(%struct.TYPE_9__* %63)
  %65 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %65, i32 0, i32 3
  %67 = load %struct.sta_info*, %struct.sta_info** %66, align 8
  store %struct.sta_info* %67, %struct.sta_info** %5, align 8
  %68 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %69 = icmp ne %struct.sta_info* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %60
  %71 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %72 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %70
  %79 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %80 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* @SUPPORTS_PER_STA_GTK, align 4
  %84 = call i64 @ieee80211_hw_check(i32* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  br label %224

87:                                               ; preds = %78, %70, %60
  %88 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %89 = icmp ne %struct.sta_info* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %92 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %224

96:                                               ; preds = %90, %87
  %97 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %105 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %103
  store i32 1, i32* %6, align 4
  br label %224

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %96
  %114 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %115 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* @SET_KEY, align 4
  %118 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %119 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %120 = icmp ne %struct.sta_info* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %123 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %122, i32 0, i32 0
  br label %125

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %121
  %126 = phi %struct.TYPE_10__* [ %123, %121 ], [ null, %124 ]
  %127 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %128 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %127, i32 0, i32 2
  %129 = call i32 @drv_set_key(%struct.TYPE_9__* %116, i32 %117, %struct.ieee80211_sub_if_data* %118, %struct.TYPE_10__* %126, %struct.TYPE_11__* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %191, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* @KEY_FLAG_UPLOADED_TO_HARDWARE, align 4
  %134 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %135 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %139 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %143 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_MIC_SPACE, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @IEEE80211_KEY_FLAG_RESERVE_TAILROOM, align 4
  %146 = or i32 %144, %145
  %147 = and i32 %141, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %132
  %150 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %151 = call i32 @decrease_tailroom_need_count(%struct.ieee80211_sub_if_data* %150, i32 1)
  br label %152

152:                                              ; preds = %149, %132
  %153 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %154 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %152
  %161 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %162 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br label %168

168:                                              ; preds = %160, %152
  %169 = phi i1 [ false, %152 ], [ %167, %160 ]
  %170 = zext i1 %169 to i32
  %171 = call i32 @WARN_ON(i32 %170)
  %172 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %173 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_MIC_SPACE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %168
  %180 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %181 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br label %187

187:                                              ; preds = %179, %168
  %188 = phi i1 [ false, %168 ], [ %186, %179 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @WARN_ON(i32 %189)
  store i32 0, i32* %2, align 4
  br label %248

191:                                              ; preds = %125
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @ENOSPC, align 4
  %194 = sub nsw i32 0, %193
  %195 = icmp ne i32 %192, %194
  br i1 %195, label %196, label %223

196:                                              ; preds = %191
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @EOPNOTSUPP, align 4
  %199 = sub nsw i32 0, %198
  %200 = icmp ne i32 %197, %199
  br i1 %200, label %201, label %223

201:                                              ; preds = %196
  %202 = load i32, i32* %6, align 4
  %203 = icmp ne i32 %202, 1
  br i1 %203, label %204, label %223

204:                                              ; preds = %201
  %205 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %206 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %207 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %211 = icmp ne %struct.sta_info* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %204
  %213 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %214 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  br label %219

217:                                              ; preds = %204
  %218 = load i32, i32* @bcast_addr, align 4
  br label %219

219:                                              ; preds = %217, %212
  %220 = phi i32 [ %216, %212 ], [ %218, %217 ]
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @sdata_err(%struct.ieee80211_sub_if_data* %205, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %209, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %219, %201, %196, %191
  br label %224

224:                                              ; preds = %223, %111, %95, %86, %59
  %225 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %226 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  switch i32 %228, label %245 [
    i32 128, label %229
    i32 129, label %229
    i32 130, label %229
    i32 134, label %229
    i32 133, label %229
    i32 138, label %229
    i32 137, label %229
    i32 136, label %229
    i32 135, label %229
    i32 132, label %229
    i32 131, label %229
  ]

229:                                              ; preds = %224, %224, %224, %224, %224, %224, %224, %224, %224, %224, %224
  %230 = load i32, i32* %6, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store i32 0, i32* %2, align 4
  br label %248

233:                                              ; preds = %229
  %234 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %235 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %234, i32 0, i32 1
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i32, i32* @SW_CRYPTO_CONTROL, align 4
  %239 = call i64 @ieee80211_hw_check(i32* %237, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %233
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %2, align 4
  br label %248

244:                                              ; preds = %233
  store i32 0, i32* %2, align 4
  br label %248

245:                                              ; preds = %224
  %246 = load i32, i32* @EINVAL, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %245, %244, %241, %232, %187, %41
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @increment_tailroom_need_count(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @assert_key_lock(%struct.TYPE_9__*) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @drv_set_key(%struct.TYPE_9__*, i32, %struct.ieee80211_sub_if_data*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @decrease_tailroom_need_count(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sdata_err(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
