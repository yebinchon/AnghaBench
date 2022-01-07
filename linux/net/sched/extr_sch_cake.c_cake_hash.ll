; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cake_tin_data = type { i64*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.flow_keys = type { %struct.TYPE_20__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@CAKE_FLOW_NONE = common dso_local global i32 0, align 4
@CAKE_FLOW_FLOWS = common dso_local global i32 0, align 4
@CAKE_FLOW_HOSTS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL = common dso_local global i32 0, align 4
@CAKE_FLOW_NAT_FLAG = common dso_local global i32 0, align 4
@CAKE_FLOW_SRC_IP = common dso_local global i32 0, align 4
@CAKE_FLOW_DST_IP = common dso_local global i32 0, align 4
@CAKE_QUEUES = common dso_local global i64 0, align 8
@CAKE_SET_WAYS = common dso_local global i64 0, align 8
@CAKE_SET_BULK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cake_tin_data*, %struct.sk_buff*, i32, i64, i64)* @cake_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cake_hash(%struct.cake_tin_data* %0, %struct.sk_buff* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.cake_tin_data*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.flow_keys, align 8
  %19 = alloca %struct.flow_keys, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.cake_tin_data* %0, %struct.cake_tin_data** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CAKE_FLOW_NONE, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %546

33:                                               ; preds = %5
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @CAKE_FLOW_FLOWS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36, %33
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @CAKE_FLOW_HOSTS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44, %41
  br label %118

50:                                               ; preds = %44, %36
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load i32, i32* @FLOW_DISSECTOR_F_STOP_AT_FLOW_LABEL, align 4
  %53 = call i32 @skb_flow_dissect_flow_keys(%struct.sk_buff* %51, %struct.flow_keys* %18, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @CAKE_FLOW_NAT_FLAG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = call i32 @cake_update_flowkeys(%struct.flow_keys* %18, %struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %58, %50
  %62 = bitcast %struct.flow_keys* %19 to i8*
  %63 = bitcast %struct.flow_keys* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 56, i1 false)
  %64 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %19, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %19, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %19, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %19, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %19, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %109 [
    i32 129, label %75
    i32 128, label %91
  ]

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %19, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = call i64 @flow_hash_from_keys(%struct.flow_keys* %19)
  store i64 %79, i64* %14, align 8
  %80 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %18, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %19, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %19, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = call i64 @flow_hash_from_keys(%struct.flow_keys* %19)
  store i64 %90, i64* %13, align 8
  br label %110

91:                                               ; preds = %61
  %92 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %19, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = call i32 @memset(i32* %94, i32 0, i32 4)
  %96 = call i64 @flow_hash_from_keys(%struct.flow_keys* %19)
  store i64 %96, i64* %14, align 8
  %97 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %18, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %19, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %19, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = call i32 @memset(i32* %106, i32 0, i32 4)
  %108 = call i64 @flow_hash_from_keys(%struct.flow_keys* %19)
  store i64 %108, i64* %13, align 8
  br label %110

109:                                              ; preds = %61
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %110

110:                                              ; preds = %109, %91, %75
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @CAKE_FLOW_FLOWS, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i64 @flow_hash_from_keys(%struct.flow_keys* %18)
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %115, %110
  br label %118

118:                                              ; preds = %117, %49
  %119 = load i64, i64* %10, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i64, i64* %10, align 8
  %123 = sub i64 %122, 1
  store i64 %123, i64* %12, align 8
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i64, i64* %11, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i64, i64* %11, align 8
  %129 = sub i64 %128, 1
  store i64 %129, i64* %14, align 8
  %130 = load i64, i64* %11, align 8
  %131 = sub i64 %130, 1
  store i64 %131, i64* %13, align 8
  br label %132

132:                                              ; preds = %127, %124
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @CAKE_FLOW_FLOWS, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %156, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @CAKE_FLOW_SRC_IP, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* %12, align 8
  %145 = xor i64 %144, %143
  store i64 %145, i64* %12, align 8
  br label %146

146:                                              ; preds = %142, %137
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @CAKE_FLOW_DST_IP, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* %12, align 8
  %154 = xor i64 %153, %152
  store i64 %154, i64* %12, align 8
  br label %155

155:                                              ; preds = %151, %146
  br label %156

156:                                              ; preds = %155, %132
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* @CAKE_QUEUES, align 8
  %159 = urem i64 %157, %158
  store i64 %159, i64* %15, align 8
  %160 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %161 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* %15, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %12, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %156
  %169 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %170 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %169, i32 0, i32 1
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = load i64, i64* %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br label %177

177:                                              ; preds = %168, %156
  %178 = phi i1 [ false, %156 ], [ %176, %168 ]
  %179 = zext i1 %178 to i32
  %180 = call i64 @likely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %184 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  br label %544

187:                                              ; preds = %177
  %188 = load i64, i64* %15, align 8
  %189 = load i64, i64* @CAKE_SET_WAYS, align 8
  %190 = urem i64 %188, %189
  store i64 %190, i64* %20, align 8
  %191 = load i64, i64* %15, align 8
  %192 = load i64, i64* %20, align 8
  %193 = sub i64 %191, %192
  store i64 %193, i64* %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i64 0, i64* %24, align 8
  %194 = load i64, i64* %20, align 8
  store i64 %194, i64* %25, align 8
  br label %195

195:                                              ; preds = %236, %187
  %196 = load i64, i64* %24, align 8
  %197 = load i64, i64* @CAKE_SET_WAYS, align 8
  %198 = icmp ult i64 %196, %197
  br i1 %198, label %199, label %243

199:                                              ; preds = %195
  %200 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %201 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = load i64, i64* %21, align 8
  %204 = load i64, i64* %25, align 8
  %205 = add i64 %203, %204
  %206 = getelementptr inbounds i64, i64* %202, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %12, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %235

210:                                              ; preds = %199
  %211 = load i64, i64* %24, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %215 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %213, %210
  %219 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %220 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %219, i32 0, i32 1
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = load i64, i64* %21, align 8
  %223 = load i64, i64* %25, align 8
  %224 = add i64 %222, %223
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %218
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @cake_dsrc(i32 %230)
  store i32 %231, i32* %22, align 4
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @cake_ddst(i32 %232)
  store i32 %233, i32* %23, align 4
  br label %234

234:                                              ; preds = %229, %218
  br label %326

235:                                              ; preds = %199
  br label %236

236:                                              ; preds = %235
  %237 = load i64, i64* %24, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %24, align 8
  %239 = load i64, i64* %25, align 8
  %240 = add i64 %239, 1
  %241 = load i64, i64* @CAKE_SET_WAYS, align 8
  %242 = urem i64 %240, %241
  store i64 %242, i64* %25, align 8
  br label %195

243:                                              ; preds = %195
  store i64 0, i64* %24, align 8
  br label %244

244:                                              ; preds = %269, %243
  %245 = load i64, i64* %24, align 8
  %246 = load i64, i64* @CAKE_SET_WAYS, align 8
  %247 = icmp ult i64 %245, %246
  br i1 %247, label %248, label %276

248:                                              ; preds = %244
  %249 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %250 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %249, i32 0, i32 1
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %250, align 8
  %252 = load i64, i64* %21, align 8
  %253 = load i64, i64* %25, align 8
  %254 = add i64 %252, %253
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %268, label %259

259:                                              ; preds = %248
  %260 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %261 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %261, align 4
  %264 = load i32, i32* %9, align 4
  %265 = call i32 @cake_dsrc(i32 %264)
  store i32 %265, i32* %22, align 4
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @cake_ddst(i32 %266)
  store i32 %267, i32* %23, align 4
  br label %326

268:                                              ; preds = %248
  br label %269

269:                                              ; preds = %268
  %270 = load i64, i64* %24, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %24, align 8
  %272 = load i64, i64* %25, align 8
  %273 = add i64 %272, 1
  %274 = load i64, i64* @CAKE_SET_WAYS, align 8
  %275 = urem i64 %273, %274
  store i64 %275, i64* %25, align 8
  br label %244

276:                                              ; preds = %244
  %277 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %278 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 8
  %281 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %282 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %281, i32 0, i32 1
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = load i64, i64* %21, align 8
  %285 = load i64, i64* %25, align 8
  %286 = add i64 %284, %285
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @CAKE_SET_BULK, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %321

292:                                              ; preds = %276
  %293 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %294 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %293, i32 0, i32 2
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %297 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %296, i32 0, i32 1
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %297, align 8
  %299 = load i64, i64* %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %304, align 4
  %307 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %308 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %307, i32 0, i32 2
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %308, align 8
  %310 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %311 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %310, i32 0, i32 1
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %311, align 8
  %313 = load i64, i64* %15, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* %318, align 8
  br label %321

321:                                              ; preds = %292, %276
  %322 = load i32, i32* %9, align 4
  %323 = call i32 @cake_dsrc(i32 %322)
  store i32 %323, i32* %22, align 4
  %324 = load i32, i32* %9, align 4
  %325 = call i32 @cake_ddst(i32 %324)
  store i32 %325, i32* %23, align 4
  br label %326

326:                                              ; preds = %321, %259, %234
  %327 = load i64, i64* %21, align 8
  %328 = load i64, i64* %25, align 8
  %329 = add i64 %327, %328
  store i64 %329, i64* %15, align 8
  %330 = load i64, i64* %12, align 8
  %331 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %332 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %331, i32 0, i32 0
  %333 = load i64*, i64** %332, align 8
  %334 = load i64, i64* %15, align 8
  %335 = getelementptr inbounds i64, i64* %333, i64 %334
  store i64 %330, i64* %335, align 8
  %336 = load i32, i32* %22, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %439

338:                                              ; preds = %326
  %339 = load i64, i64* %13, align 8
  %340 = load i64, i64* @CAKE_QUEUES, align 8
  %341 = urem i64 %339, %340
  store i64 %341, i64* %16, align 8
  %342 = load i64, i64* %16, align 8
  %343 = load i64, i64* @CAKE_SET_WAYS, align 8
  %344 = urem i64 %342, %343
  store i64 %344, i64* %20, align 8
  %345 = load i64, i64* %16, align 8
  %346 = load i64, i64* %20, align 8
  %347 = sub i64 %345, %346
  store i64 %347, i64* %21, align 8
  store i64 0, i64* %24, align 8
  %348 = load i64, i64* %20, align 8
  store i64 %348, i64* %25, align 8
  br label %349

349:                                              ; preds = %367, %338
  %350 = load i64, i64* %24, align 8
  %351 = load i64, i64* @CAKE_SET_WAYS, align 8
  %352 = icmp ult i64 %350, %351
  br i1 %352, label %353, label %374

353:                                              ; preds = %349
  %354 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %355 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %354, i32 0, i32 2
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %355, align 8
  %357 = load i64, i64* %21, align 8
  %358 = load i64, i64* %25, align 8
  %359 = add i64 %357, %358
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* %13, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %353
  br label %409

366:                                              ; preds = %353
  br label %367

367:                                              ; preds = %366
  %368 = load i64, i64* %24, align 8
  %369 = add i64 %368, 1
  store i64 %369, i64* %24, align 8
  %370 = load i64, i64* %25, align 8
  %371 = add i64 %370, 1
  %372 = load i64, i64* @CAKE_SET_WAYS, align 8
  %373 = urem i64 %371, %372
  store i64 %373, i64* %25, align 8
  br label %349

374:                                              ; preds = %349
  store i64 0, i64* %24, align 8
  br label %375

375:                                              ; preds = %392, %374
  %376 = load i64, i64* %24, align 8
  %377 = load i64, i64* @CAKE_SET_WAYS, align 8
  %378 = icmp ult i64 %376, %377
  br i1 %378, label %379, label %399

379:                                              ; preds = %375
  %380 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %381 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %380, i32 0, i32 2
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %381, align 8
  %383 = load i64, i64* %21, align 8
  %384 = load i64, i64* %25, align 8
  %385 = add i64 %383, %384
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %379
  br label %399

391:                                              ; preds = %379
  br label %392

392:                                              ; preds = %391
  %393 = load i64, i64* %24, align 8
  %394 = add i64 %393, 1
  store i64 %394, i64* %24, align 8
  %395 = load i64, i64* %25, align 8
  %396 = add i64 %395, 1
  %397 = load i64, i64* @CAKE_SET_WAYS, align 8
  %398 = urem i64 %396, %397
  store i64 %398, i64* %25, align 8
  br label %375

399:                                              ; preds = %390, %375
  %400 = load i64, i64* %13, align 8
  %401 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %402 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %401, i32 0, i32 2
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %402, align 8
  %404 = load i64, i64* %21, align 8
  %405 = load i64, i64* %25, align 8
  %406 = add i64 %404, %405
  %407 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 0
  store i64 %400, i64* %408, align 8
  br label %409

409:                                              ; preds = %399, %365
  %410 = load i64, i64* %21, align 8
  %411 = load i64, i64* %25, align 8
  %412 = add i64 %410, %411
  store i64 %412, i64* %16, align 8
  %413 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %414 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %413, i32 0, i32 1
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %414, align 8
  %416 = load i64, i64* %15, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %415, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @CAKE_SET_BULK, align 8
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %422, label %431

422:                                              ; preds = %409
  %423 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %424 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %423, i32 0, i32 2
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %424, align 8
  %426 = load i64, i64* %16, align 8
  %427 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %428, align 4
  br label %431

431:                                              ; preds = %422, %409
  %432 = load i64, i64* %16, align 8
  %433 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %434 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %433, i32 0, i32 1
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %434, align 8
  %436 = load i64, i64* %15, align 8
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 1
  store i64 %432, i64* %438, align 8
  br label %439

439:                                              ; preds = %431, %326
  %440 = load i32, i32* %23, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %543

442:                                              ; preds = %439
  %443 = load i64, i64* %14, align 8
  %444 = load i64, i64* @CAKE_QUEUES, align 8
  %445 = urem i64 %443, %444
  store i64 %445, i64* %17, align 8
  %446 = load i64, i64* %17, align 8
  %447 = load i64, i64* @CAKE_SET_WAYS, align 8
  %448 = urem i64 %446, %447
  store i64 %448, i64* %20, align 8
  %449 = load i64, i64* %17, align 8
  %450 = load i64, i64* %20, align 8
  %451 = sub i64 %449, %450
  store i64 %451, i64* %21, align 8
  store i64 0, i64* %24, align 8
  %452 = load i64, i64* %20, align 8
  store i64 %452, i64* %25, align 8
  br label %453

453:                                              ; preds = %471, %442
  %454 = load i64, i64* %24, align 8
  %455 = load i64, i64* @CAKE_SET_WAYS, align 8
  %456 = icmp ult i64 %454, %455
  br i1 %456, label %457, label %478

457:                                              ; preds = %453
  %458 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %459 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %458, i32 0, i32 2
  %460 = load %struct.TYPE_12__*, %struct.TYPE_12__** %459, align 8
  %461 = load i64, i64* %21, align 8
  %462 = load i64, i64* %25, align 8
  %463 = add i64 %461, %462
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %460, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 1
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* %14, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %469, label %470

469:                                              ; preds = %457
  br label %513

470:                                              ; preds = %457
  br label %471

471:                                              ; preds = %470
  %472 = load i64, i64* %24, align 8
  %473 = add i64 %472, 1
  store i64 %473, i64* %24, align 8
  %474 = load i64, i64* %25, align 8
  %475 = add i64 %474, 1
  %476 = load i64, i64* @CAKE_SET_WAYS, align 8
  %477 = urem i64 %475, %476
  store i64 %477, i64* %25, align 8
  br label %453

478:                                              ; preds = %453
  store i64 0, i64* %24, align 8
  br label %479

479:                                              ; preds = %496, %478
  %480 = load i64, i64* %24, align 8
  %481 = load i64, i64* @CAKE_SET_WAYS, align 8
  %482 = icmp ult i64 %480, %481
  br i1 %482, label %483, label %503

483:                                              ; preds = %479
  %484 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %485 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %484, i32 0, i32 2
  %486 = load %struct.TYPE_12__*, %struct.TYPE_12__** %485, align 8
  %487 = load i64, i64* %21, align 8
  %488 = load i64, i64* %25, align 8
  %489 = add i64 %487, %488
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %495, label %494

494:                                              ; preds = %483
  br label %503

495:                                              ; preds = %483
  br label %496

496:                                              ; preds = %495
  %497 = load i64, i64* %24, align 8
  %498 = add i64 %497, 1
  store i64 %498, i64* %24, align 8
  %499 = load i64, i64* %25, align 8
  %500 = add i64 %499, 1
  %501 = load i64, i64* @CAKE_SET_WAYS, align 8
  %502 = urem i64 %500, %501
  store i64 %502, i64* %25, align 8
  br label %479

503:                                              ; preds = %494, %479
  %504 = load i64, i64* %14, align 8
  %505 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %506 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %505, i32 0, i32 2
  %507 = load %struct.TYPE_12__*, %struct.TYPE_12__** %506, align 8
  %508 = load i64, i64* %21, align 8
  %509 = load i64, i64* %25, align 8
  %510 = add i64 %508, %509
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %507, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 1
  store i64 %504, i64* %512, align 8
  br label %513

513:                                              ; preds = %503, %469
  %514 = load i64, i64* %21, align 8
  %515 = load i64, i64* %25, align 8
  %516 = add i64 %514, %515
  store i64 %516, i64* %17, align 8
  %517 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %518 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %517, i32 0, i32 1
  %519 = load %struct.TYPE_11__*, %struct.TYPE_11__** %518, align 8
  %520 = load i64, i64* %15, align 8
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = load i64, i64* @CAKE_SET_BULK, align 8
  %525 = icmp eq i64 %523, %524
  br i1 %525, label %526, label %535

526:                                              ; preds = %513
  %527 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %528 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %527, i32 0, i32 2
  %529 = load %struct.TYPE_12__*, %struct.TYPE_12__** %528, align 8
  %530 = load i64, i64* %17, align 8
  %531 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %529, i64 %530
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 8
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %532, align 8
  br label %535

535:                                              ; preds = %526, %513
  %536 = load i64, i64* %17, align 8
  %537 = load %struct.cake_tin_data*, %struct.cake_tin_data** %7, align 8
  %538 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %537, i32 0, i32 1
  %539 = load %struct.TYPE_11__*, %struct.TYPE_11__** %538, align 8
  %540 = load i64, i64* %15, align 8
  %541 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %539, i64 %540
  %542 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %541, i32 0, i32 2
  store i64 %536, i64* %542, align 8
  br label %543

543:                                              ; preds = %535, %439
  br label %544

544:                                              ; preds = %543, %182
  %545 = load i64, i64* %15, align 8
  store i64 %545, i64* %6, align 8
  br label %546

546:                                              ; preds = %544, %32
  %547 = load i64, i64* %6, align 8
  ret i64 %547
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_flow_dissect_flow_keys(%struct.sk_buff*, %struct.flow_keys*, i32) #1

declare dso_local i32 @cake_update_flowkeys(%struct.flow_keys*, %struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @flow_hash_from_keys(%struct.flow_keys*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cake_dsrc(i32) #1

declare dso_local i32 @cake_ddst(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
