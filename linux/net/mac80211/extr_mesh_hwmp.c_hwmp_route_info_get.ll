; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_hwmp_route_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_hwmp_route_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_3__, %struct.ieee80211_local* }
%struct.TYPE_3__ = type { i32* }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_mgmt = type { i32* }
%struct.mesh_path = type { i32, i64, i64, i64, i32, i32, i32, i32 }
%struct.sta_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MAX_METRIC = common dso_local global i64 0, align 8
@MESH_PATH_FIXED = common dso_local global i32 0, align 4
@MESH_PATH_ACTIVE = common dso_local global i32 0, align 4
@MESH_PATH_SN_VALID = common dso_local global i32 0, align 4
@MAX_SANE_SN_DELTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i32*, i32)* @hwmp_route_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hwmp_route_info_get(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.mesh_path*, align 8
  %12 = alloca %struct.sta_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 1
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %28, align 8
  store %struct.ieee80211_local* %29, %struct.ieee80211_local** %10, align 8
  store i32 1, i32* %22, align 4
  %30 = call i32 (...) @rcu_read_lock()
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %32 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %31, i32* %34)
  store %struct.sta_info* %35, %struct.sta_info** %12, align 8
  %36 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %37 = icmp ne %struct.sta_info* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %4
  %39 = call i32 (...) @rcu_read_unlock()
  store i64 0, i64* %5, align 8
  br label %429

40:                                               ; preds = %4
  %41 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %42 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %43 = call i64 @airtime_link_metric_get(%struct.ieee80211_local* %41, %struct.sta_info* %42)
  store i64 %43, i64* %20, align 8
  store i32 1, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %69 [
    i32 128, label %45
    i32 129, label %57
  ]

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  %47 = call i32* @PREQ_IE_ORIG_ADDR(i32* %46)
  store i32* %47, i32** %14, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @PREQ_IE_ORIG_SN(i32* %48)
  store i64 %49, i64* %16, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i64 @PREQ_IE_LIFETIME(i32* %50)
  store i64 %51, i64* %18, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @PREQ_IE_METRIC(i32* %52)
  store i64 %53, i64* %17, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @PREQ_IE_HOPCOUNT(i32* %54)
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %23, align 4
  br label %71

57:                                               ; preds = %40
  %58 = load i32*, i32** %8, align 8
  %59 = call i32* @PREP_IE_TARGET_ADDR(i32* %58)
  store i32* %59, i32** %14, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @PREP_IE_TARGET_SN(i32* %60)
  store i64 %61, i64* %16, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @PREP_IE_LIFETIME(i32* %62)
  store i64 %63, i64* %18, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i64 @PREP_IE_METRIC(i32* %64)
  store i64 %65, i64* %17, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @PREP_IE_HOPCOUNT(i32* %66)
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %23, align 4
  br label %71

69:                                               ; preds = %40
  %70 = call i32 (...) @rcu_read_unlock()
  store i64 0, i64* %5, align 8
  br label %429

71:                                               ; preds = %57, %45
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %20, align 8
  %74 = add nsw i64 %72, %73
  store i64 %74, i64* %21, align 8
  %75 = load i64, i64* %21, align 8
  %76 = load i64, i64* %17, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i64, i64* @MAX_METRIC, align 8
  store i64 %79, i64* %21, align 8
  br label %80

80:                                               ; preds = %78, %71
  %81 = load i64, i64* %18, align 8
  %82 = call i64 @TU_TO_EXP_TIME(i64 %81)
  store i64 %82, i64* %19, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @ether_addr_equal(i32* %83, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  store i32 0, i32* %22, align 4
  store i32 0, i32* %13, align 4
  br label %293

91:                                               ; preds = %80
  %92 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %92, i32* %93)
  store %struct.mesh_path* %94, %struct.mesh_path** %11, align 8
  %95 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %96 = icmp ne %struct.mesh_path* %95, null
  br i1 %96, label %97, label %209

97:                                               ; preds = %91
  %98 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %99 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %98, i32 0, i32 5
  %100 = call i32 @spin_lock_bh(i32* %99)
  %101 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %102 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MESH_PATH_FIXED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  br label %208

108:                                              ; preds = %97
  %109 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %110 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %155

115:                                              ; preds = %108
  %116 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %117 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @MESH_PATH_SN_VALID, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %155

122:                                              ; preds = %115
  %123 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %124 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %16, align 8
  %127 = call i64 @SN_GT(i64 %125, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %153, label %129

129:                                              ; preds = %122
  %130 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %131 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %16, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %129
  %136 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %137 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = call %struct.sta_info* @rcu_access_pointer(i32 %138)
  %140 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %141 = icmp ne %struct.sta_info* %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i64, i64* %21, align 8
  %144 = call i64 @mult_frac(i64 %143, i32 10, i32 9)
  br label %147

145:                                              ; preds = %135
  %146 = load i64, i64* %21, align 8
  br label %147

147:                                              ; preds = %145, %142
  %148 = phi i64 [ %144, %142 ], [ %146, %145 ]
  %149 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %150 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp sge i64 %148, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147, %122
  store i32 0, i32* %22, align 4
  store i32 0, i32* %13, align 4
  br label %154

154:                                              ; preds = %153, %147, %129
  br label %207

155:                                              ; preds = %115, %108
  %156 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %157 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %206, label %162

162:                                              ; preds = %155
  %163 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %164 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @MESH_PATH_SN_VALID, align 4
  %167 = and i32 %165, %166
  store i32 %167, i32* %24, align 4
  %168 = load i32, i32* %24, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %162
  %171 = load i64, i64* %16, align 8
  %172 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %173 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @SN_GT(i64 %171, i64 %174)
  %176 = icmp ne i64 %175, 0
  br label %177

177:                                              ; preds = %170, %162
  %178 = phi i1 [ false, %162 ], [ %176, %170 ]
  %179 = zext i1 %178 to i32
  store i32 %179, i32* %25, align 4
  %180 = load i32, i32* %24, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %177
  %183 = load i64, i64* %16, align 8
  %184 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %185 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @SN_DELTA(i64 %183, i64 %186)
  %188 = load i64, i64* @MAX_SANE_SN_DELTA, align 8
  %189 = icmp sgt i64 %187, %188
  br label %190

190:                                              ; preds = %182, %177
  %191 = phi i1 [ false, %177 ], [ %189, %182 ]
  %192 = zext i1 %191 to i32
  store i32 %192, i32* %26, align 4
  %193 = load i32, i32* %24, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32, i32* %25, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195, %190
  br label %205

199:                                              ; preds = %195
  %200 = load i32, i32* %26, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %204

203:                                              ; preds = %199
  store i32 0, i32* %22, align 4
  store i32 0, i32* %13, align 4
  br label %204

204:                                              ; preds = %203, %202
  br label %205

205:                                              ; preds = %204, %198
  br label %206

206:                                              ; preds = %205, %155
  br label %207

207:                                              ; preds = %206, %154
  br label %208

208:                                              ; preds = %207, %107
  br label %222

209:                                              ; preds = %91
  %210 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %211 = load i32*, i32** %14, align 8
  %212 = call %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data* %210, i32* %211)
  store %struct.mesh_path* %212, %struct.mesh_path** %11, align 8
  %213 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %214 = call i64 @IS_ERR(%struct.mesh_path* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = call i32 (...) @rcu_read_unlock()
  store i64 0, i64* %5, align 8
  br label %429

218:                                              ; preds = %209
  %219 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %220 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %219, i32 0, i32 5
  %221 = call i32 @spin_lock_bh(i32* %220)
  br label %222

222:                                              ; preds = %218, %208
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %288

225:                                              ; preds = %222
  %226 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %227 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = call %struct.sta_info* @rcu_access_pointer(i32 %228)
  %230 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %231 = icmp ne %struct.sta_info* %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %225
  %233 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %234 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %232, %225
  %238 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %239 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %240 = call i32 @mesh_path_assign_nexthop(%struct.mesh_path* %238, %struct.sta_info* %239)
  %241 = load i32, i32* @MESH_PATH_SN_VALID, align 4
  %242 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %243 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  %246 = load i64, i64* %21, align 8
  %247 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %248 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %247, i32 0, i32 2
  store i64 %246, i64* %248, align 8
  %249 = load i64, i64* %16, align 8
  %250 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %251 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %250, i32 0, i32 1
  store i64 %249, i64* %251, align 8
  %252 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %253 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* %19, align 8
  %256 = call i64 @time_after(i64 %254, i64 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %237
  %259 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %260 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  br label %264

262:                                              ; preds = %237
  %263 = load i64, i64* %19, align 8
  br label %264

264:                                              ; preds = %262, %258
  %265 = phi i64 [ %261, %258 ], [ %263, %262 ]
  %266 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %267 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %266, i32 0, i32 3
  store i64 %265, i64* %267, align 8
  %268 = load i32, i32* %23, align 4
  %269 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %270 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %269, i32 0, i32 4
  store i32 %268, i32* %270, align 8
  %271 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %272 = call i32 @mesh_path_activate(%struct.mesh_path* %271)
  %273 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %274 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %273, i32 0, i32 5
  %275 = call i32 @spin_unlock_bh(i32* %274)
  %276 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %277 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %276, i32 0, i32 0
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = call i32 @ewma_mesh_fail_avg_init(i32* %279)
  %281 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %282 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %281, i32 0, i32 0
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = call i32 @ewma_mesh_fail_avg_add(i32* %284, i32 1)
  %286 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %287 = call i32 @mesh_path_tx_pending(%struct.mesh_path* %286)
  br label %292

288:                                              ; preds = %222
  %289 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %290 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %289, i32 0, i32 5
  %291 = call i32 @spin_unlock_bh(i32* %290)
  br label %292

292:                                              ; preds = %288, %264
  br label %293

293:                                              ; preds = %292, %90
  %294 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %295 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  store i32* %296, i32** %15, align 8
  %297 = load i32*, i32** %14, align 8
  %298 = load i32*, i32** %15, align 8
  %299 = call i64 @ether_addr_equal(i32* %297, i32* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  store i32 0, i32* %13, align 4
  br label %420

302:                                              ; preds = %293
  store i32 1, i32* %13, align 4
  %303 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %304 = load i32*, i32** %15, align 8
  %305 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %303, i32* %304)
  store %struct.mesh_path* %305, %struct.mesh_path** %11, align 8
  %306 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %307 = icmp ne %struct.mesh_path* %306, null
  br i1 %307, label %308, label %345

308:                                              ; preds = %302
  %309 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %310 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %309, i32 0, i32 5
  %311 = call i32 @spin_lock_bh(i32* %310)
  %312 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %313 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @MESH_PATH_FIXED, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %343, label %318

318:                                              ; preds = %308
  %319 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %320 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %344

325:                                              ; preds = %318
  %326 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %327 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %326, i32 0, i32 7
  %328 = load i32, i32* %327, align 4
  %329 = call %struct.sta_info* @rcu_access_pointer(i32 %328)
  %330 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %331 = icmp ne %struct.sta_info* %329, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %325
  %333 = load i64, i64* %20, align 8
  %334 = call i64 @mult_frac(i64 %333, i32 10, i32 9)
  br label %337

335:                                              ; preds = %325
  %336 = load i64, i64* %20, align 8
  br label %337

337:                                              ; preds = %335, %332
  %338 = phi i64 [ %334, %332 ], [ %336, %335 ]
  %339 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %340 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %339, i32 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = icmp sgt i64 %338, %341
  br i1 %342, label %343, label %344

343:                                              ; preds = %337, %308
  store i32 0, i32* %13, align 4
  br label %344

344:                                              ; preds = %343, %337, %318
  br label %358

345:                                              ; preds = %302
  %346 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %347 = load i32*, i32** %15, align 8
  %348 = call %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data* %346, i32* %347)
  store %struct.mesh_path* %348, %struct.mesh_path** %11, align 8
  %349 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %350 = call i64 @IS_ERR(%struct.mesh_path* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %345
  %353 = call i32 (...) @rcu_read_unlock()
  store i64 0, i64* %5, align 8
  br label %429

354:                                              ; preds = %345
  %355 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %356 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %355, i32 0, i32 5
  %357 = call i32 @spin_lock_bh(i32* %356)
  br label %358

358:                                              ; preds = %354, %344
  %359 = load i32, i32* %13, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %415

361:                                              ; preds = %358
  %362 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %363 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %362, i32 0, i32 7
  %364 = load i32, i32* %363, align 4
  %365 = call %struct.sta_info* @rcu_access_pointer(i32 %364)
  %366 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %367 = icmp ne %struct.sta_info* %365, %366
  br i1 %367, label %368, label %373

368:                                              ; preds = %361
  %369 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %370 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %369, i32 0, i32 6
  %371 = load i32, i32* %370, align 8
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %370, align 8
  br label %373

373:                                              ; preds = %368, %361
  %374 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %375 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %376 = call i32 @mesh_path_assign_nexthop(%struct.mesh_path* %374, %struct.sta_info* %375)
  %377 = load i64, i64* %20, align 8
  %378 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %379 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %378, i32 0, i32 2
  store i64 %377, i64* %379, align 8
  %380 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %381 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %380, i32 0, i32 3
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* %19, align 8
  %384 = call i64 @time_after(i64 %382, i64 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %373
  %387 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %388 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %387, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  br label %392

390:                                              ; preds = %373
  %391 = load i64, i64* %19, align 8
  br label %392

392:                                              ; preds = %390, %386
  %393 = phi i64 [ %389, %386 ], [ %391, %390 ]
  %394 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %395 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %394, i32 0, i32 3
  store i64 %393, i64* %395, align 8
  %396 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %397 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %396, i32 0, i32 4
  store i32 1, i32* %397, align 8
  %398 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %399 = call i32 @mesh_path_activate(%struct.mesh_path* %398)
  %400 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %401 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %400, i32 0, i32 5
  %402 = call i32 @spin_unlock_bh(i32* %401)
  %403 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %404 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %403, i32 0, i32 0
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  %407 = call i32 @ewma_mesh_fail_avg_init(i32* %406)
  %408 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %409 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %408, i32 0, i32 0
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 0
  %412 = call i32 @ewma_mesh_fail_avg_add(i32* %411, i32 1)
  %413 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %414 = call i32 @mesh_path_tx_pending(%struct.mesh_path* %413)
  br label %419

415:                                              ; preds = %358
  %416 = load %struct.mesh_path*, %struct.mesh_path** %11, align 8
  %417 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %416, i32 0, i32 5
  %418 = call i32 @spin_unlock_bh(i32* %417)
  br label %419

419:                                              ; preds = %415, %392
  br label %420

420:                                              ; preds = %419, %301
  %421 = call i32 (...) @rcu_read_unlock()
  %422 = load i32, i32* %22, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %426

424:                                              ; preds = %420
  %425 = load i64, i64* %21, align 8
  br label %427

426:                                              ; preds = %420
  br label %427

427:                                              ; preds = %426, %424
  %428 = phi i64 [ %425, %424 ], [ 0, %426 ]
  store i64 %428, i64* %5, align 8
  br label %429

429:                                              ; preds = %427, %352, %216, %69, %38
  %430 = load i64, i64* %5, align 8
  ret i64 %430
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @airtime_link_metric_get(%struct.ieee80211_local*, %struct.sta_info*) #1

declare dso_local i32* @PREQ_IE_ORIG_ADDR(i32*) #1

declare dso_local i64 @PREQ_IE_ORIG_SN(i32*) #1

declare dso_local i64 @PREQ_IE_LIFETIME(i32*) #1

declare dso_local i64 @PREQ_IE_METRIC(i32*) #1

declare dso_local i32 @PREQ_IE_HOPCOUNT(i32*) #1

declare dso_local i32* @PREP_IE_TARGET_ADDR(i32*) #1

declare dso_local i64 @PREP_IE_TARGET_SN(i32*) #1

declare dso_local i64 @PREP_IE_LIFETIME(i32*) #1

declare dso_local i64 @PREP_IE_METRIC(i32*) #1

declare dso_local i32 @PREP_IE_HOPCOUNT(i32*) #1

declare dso_local i64 @TU_TO_EXP_TIME(i64) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @SN_GT(i64, i64) #1

declare dso_local %struct.sta_info* @rcu_access_pointer(i32) #1

declare dso_local i64 @mult_frac(i64, i32, i32) #1

declare dso_local i64 @SN_DELTA(i64, i64) #1

declare dso_local %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mesh_path*) #1

declare dso_local i32 @mesh_path_assign_nexthop(%struct.mesh_path*, %struct.sta_info*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mesh_path_activate(%struct.mesh_path*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ewma_mesh_fail_avg_init(i32*) #1

declare dso_local i32 @ewma_mesh_fail_avg_add(i32*, i32) #1

declare dso_local i32 @mesh_path_tx_pending(%struct.mesh_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
