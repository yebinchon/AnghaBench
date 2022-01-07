; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_scan_swap_map_slots.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_scan_swap_map_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i64, i32, i32, i32, i64, i64, i8*, i32, i64, i32 }
%struct.swap_cluster_info = type { i32 }

@LATENCY_LIMIT = common dso_local global i32 0, align 4
@SWAP_BATCH = common dso_local global i32 0, align 4
@SWP_SCANNING = common dso_local global i64 0, align 8
@SWAPFILE_CLUSTER = common dso_local global i32 0, align 4
@SWP_WRITEOK = common dso_local global i32 0, align 4
@SWAP_HAS_CACHE = common dso_local global i8 0, align 1
@TTRS_ANYWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_info_struct*, i8, i32, i32*)* @scan_swap_map_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_swap_map_slots(%struct.swap_info_struct* %0, i8 zeroext %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.swap_info_struct*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.swap_cluster_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %13, align 8
  %17 = load i32, i32* @LATENCY_LIMIT, align 4
  store i32 %17, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SWAP_BATCH, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @SWAP_BATCH, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %4
  %24 = load i64, i64* @SWP_SCANNING, align 8
  %25 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %26 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 8
  %31 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %32 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  store i64 %33, i64* %12, align 8
  %34 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %35 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %23
  %39 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %40 = call i64 @scan_swap_map_try_ssd_cluster(%struct.swap_info_struct* %39, i64* %11, i64* %12)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %145

43:                                               ; preds = %38
  br label %343

44:                                               ; preds = %23
  %45 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %46 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = icmp ne i32 %47, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %144

54:                                               ; preds = %44
  %55 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %56 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %59 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  %62 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %68 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %145

69:                                               ; preds = %54
  %70 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %71 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %70, i32 0, i32 8
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %74 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %11, align 8
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %76, %78
  %80 = sub i64 %79, 1
  store i64 %80, i64* %13, align 8
  br label %81

81:                                               ; preds = %132, %69
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %84 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ule i64 %82, %85
  br i1 %86, label %87, label %135

87:                                               ; preds = %81
  %88 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %89 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %88, i32 0, i32 7
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load i64, i64* %11, align 8
  %97 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %96, %98
  store i64 %99, i64* %13, align 8
  br label %121

100:                                              ; preds = %87
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %13, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %106 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %105, i32 0, i32 8
  %107 = call i32 @spin_lock(i32* %106)
  %108 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %11, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %11, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %115 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %119 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  br label %145

120:                                              ; preds = %100
  br label %121

121:                                              ; preds = %120, %95
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %14, align 4
  %124 = icmp slt i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = call i32 (...) @cond_resched()
  %130 = load i32, i32* @LATENCY_LIMIT, align 4
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %128, %121
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %11, align 8
  br label %81

135:                                              ; preds = %81
  %136 = load i64, i64* %12, align 8
  store i64 %136, i64* %11, align 8
  %137 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %138 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %137, i32 0, i32 8
  %139 = call i32 @spin_lock(i32* %138)
  %140 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %143 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %135, %44
  br label %145

145:                                              ; preds = %429, %411, %380, %362, %328, %311, %223, %144, %104, %64, %42
  %146 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %147 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %146, i32 0, i32 9
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %165, %150
  %152 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %153 = load i64, i64* %11, align 8
  %154 = call i64 @scan_swap_map_ssd_cluster_conflict(%struct.swap_info_struct* %152, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %151
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %334

160:                                              ; preds = %156
  %161 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %162 = call i64 @scan_swap_map_try_ssd_cluster(%struct.swap_info_struct* %161, i64* %11, i64* %12)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  br label %343

165:                                              ; preds = %160
  br label %151

166:                                              ; preds = %151
  br label %167

167:                                              ; preds = %166, %145
  %168 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %169 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @SWP_WRITEOK, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %167
  br label %450

175:                                              ; preds = %167
  %176 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %177 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  br label %450

181:                                              ; preds = %175
  %182 = load i64, i64* %11, align 8
  %183 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %184 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = icmp ugt i64 %182, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %189 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %11, align 8
  store i64 %190, i64* %12, align 8
  br label %191

191:                                              ; preds = %187, %181
  %192 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %193 = load i64, i64* %11, align 8
  %194 = call %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct* %192, i64 %193)
  store %struct.swap_cluster_info* %194, %struct.swap_cluster_info** %10, align 8
  %195 = call i64 (...) @vm_swap_full()
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %225

197:                                              ; preds = %191
  %198 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %199 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %198, i32 0, i32 7
  %200 = load i8*, i8** %199, align 8
  %201 = load i64, i64* %11, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %225

208:                                              ; preds = %197
  %209 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %10, align 8
  %210 = call i32 @unlock_cluster(%struct.swap_cluster_info* %209)
  %211 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %212 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %211, i32 0, i32 8
  %213 = call i32 @spin_unlock(i32* %212)
  %214 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %215 = load i64, i64* %11, align 8
  %216 = load i32, i32* @TTRS_ANYWAY, align 4
  %217 = call i32 @__try_to_reclaim_swap(%struct.swap_info_struct* %214, i64 %215, i32 %216)
  store i32 %217, i32* %16, align 4
  %218 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %219 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %218, i32 0, i32 8
  %220 = call i32 @spin_lock(i32* %219)
  %221 = load i32, i32* %16, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %208
  br label %145

224:                                              ; preds = %208
  br label %343

225:                                              ; preds = %197, %191
  %226 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %227 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %226, i32 0, i32 7
  %228 = load i8*, i8** %227, align 8
  %229 = load i64, i64* %11, align 8
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = icmp ne i8 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %225
  %234 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %10, align 8
  %235 = call i32 @unlock_cluster(%struct.swap_cluster_info* %234)
  %236 = load i32, i32* %15, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %233
  br label %343

239:                                              ; preds = %233
  br label %334

240:                                              ; preds = %225
  %241 = load i8, i8* %7, align 1
  %242 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %243 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %242, i32 0, i32 7
  %244 = load i8*, i8** %243, align 8
  %245 = load i64, i64* %11, align 8
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8 %241, i8* %246, align 1
  %247 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %248 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %249 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %248, i32 0, i32 9
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* %11, align 8
  %252 = call i32 @inc_cluster_info_page(%struct.swap_info_struct* %247, i64 %250, i64 %251)
  %253 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %10, align 8
  %254 = call i32 @unlock_cluster(%struct.swap_cluster_info* %253)
  %255 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %256 = load i64, i64* %11, align 8
  %257 = call i32 @swap_range_alloc(%struct.swap_info_struct* %255, i64 %256, i32 1)
  %258 = load i64, i64* %11, align 8
  %259 = add i64 %258, 1
  %260 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %261 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %260, i32 0, i32 1
  store i64 %259, i64* %261, align 8
  %262 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %263 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %262, i32 0, i32 10
  %264 = load i32, i32* %263, align 8
  %265 = load i64, i64* %11, align 8
  %266 = call i32 @swp_entry(i32 %264, i64 %265)
  %267 = load i32*, i32** %9, align 8
  %268 = load i32, i32* %15, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %15, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  store i32 %266, i32* %271, align 4
  %272 = load i32, i32* %15, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %281, label %275

275:                                              ; preds = %240
  %276 = load i64, i64* %11, align 8
  %277 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %278 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %277, i32 0, i32 6
  %279 = load i64, i64* %278, align 8
  %280 = icmp uge i64 %276, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %275, %240
  br label %334

282:                                              ; preds = %275
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %14, align 4
  %285 = icmp slt i32 %284, 0
  %286 = zext i1 %285 to i32
  %287 = call i64 @unlikely(i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %282
  %290 = load i32, i32* %15, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  br label %334

293:                                              ; preds = %289
  %294 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %295 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %294, i32 0, i32 8
  %296 = call i32 @spin_unlock(i32* %295)
  %297 = call i32 (...) @cond_resched()
  %298 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %299 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %298, i32 0, i32 8
  %300 = call i32 @spin_lock(i32* %299)
  %301 = load i32, i32* @LATENCY_LIMIT, align 4
  store i32 %301, i32* %14, align 4
  br label %302

302:                                              ; preds = %293, %282
  %303 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %304 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %303, i32 0, i32 9
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %302
  %308 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %309 = call i64 @scan_swap_map_try_ssd_cluster(%struct.swap_info_struct* %308, i64* %11, i64* %12)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %307
  br label %145

312:                                              ; preds = %307
  br label %334

313:                                              ; preds = %302
  %314 = load i64, i64* %11, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %11, align 8
  %316 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %317 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %333

320:                                              ; preds = %313
  %321 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %322 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %321, i32 0, i32 7
  %323 = load i8*, i8** %322, align 8
  %324 = load i64, i64* %11, align 8
  %325 = getelementptr inbounds i8, i8* %323, i64 %324
  %326 = load i8, i8* %325, align 1
  %327 = icmp ne i8 %326, 0
  br i1 %327, label %333, label %328

328:                                              ; preds = %320
  %329 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %330 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %330, align 8
  br label %145

333:                                              ; preds = %320, %313
  br label %334

334:                                              ; preds = %333, %312, %292, %281, %239, %159
  %335 = load i64, i64* @SWP_SCANNING, align 8
  %336 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %337 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = sext i32 %338 to i64
  %340 = sub nsw i64 %339, %335
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %337, align 8
  %342 = load i32, i32* %15, align 4
  store i32 %342, i32* %5, align 4
  br label %459

343:                                              ; preds = %238, %224, %164, %43
  %344 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %345 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %344, i32 0, i32 8
  %346 = call i32 @spin_unlock(i32* %345)
  br label %347

347:                                              ; preds = %394, %343
  %348 = load i64, i64* %11, align 8
  %349 = add i64 %348, 1
  store i64 %349, i64* %11, align 8
  %350 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %351 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %350, i32 0, i32 6
  %352 = load i64, i64* %351, align 8
  %353 = icmp ule i64 %349, %352
  br i1 %353, label %354, label %395

354:                                              ; preds = %347
  %355 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %356 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %355, i32 0, i32 7
  %357 = load i8*, i8** %356, align 8
  %358 = load i64, i64* %11, align 8
  %359 = getelementptr inbounds i8, i8* %357, i64 %358
  %360 = load i8, i8* %359, align 1
  %361 = icmp ne i8 %360, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %354
  %363 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %364 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %363, i32 0, i32 8
  %365 = call i32 @spin_lock(i32* %364)
  br label %145

366:                                              ; preds = %354
  %367 = call i64 (...) @vm_swap_full()
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %384

369:                                              ; preds = %366
  %370 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %371 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %370, i32 0, i32 7
  %372 = load i8*, i8** %371, align 8
  %373 = load i64, i64* %11, align 8
  %374 = getelementptr inbounds i8, i8* %372, i64 %373
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %376, %378
  br i1 %379, label %380, label %384

380:                                              ; preds = %369
  %381 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %382 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %381, i32 0, i32 8
  %383 = call i32 @spin_lock(i32* %382)
  br label %145

384:                                              ; preds = %369, %366
  %385 = load i32, i32* %14, align 4
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %14, align 4
  %387 = icmp slt i32 %386, 0
  %388 = zext i1 %387 to i32
  %389 = call i64 @unlikely(i32 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %384
  %392 = call i32 (...) @cond_resched()
  %393 = load i32, i32* @LATENCY_LIMIT, align 4
  store i32 %393, i32* %14, align 4
  br label %394

394:                                              ; preds = %391, %384
  br label %347

395:                                              ; preds = %347
  %396 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %397 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %396, i32 0, i32 5
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %11, align 8
  br label %399

399:                                              ; preds = %443, %395
  %400 = load i64, i64* %11, align 8
  %401 = load i64, i64* %12, align 8
  %402 = icmp ult i64 %400, %401
  br i1 %402, label %403, label %446

403:                                              ; preds = %399
  %404 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %405 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %404, i32 0, i32 7
  %406 = load i8*, i8** %405, align 8
  %407 = load i64, i64* %11, align 8
  %408 = getelementptr inbounds i8, i8* %406, i64 %407
  %409 = load i8, i8* %408, align 1
  %410 = icmp ne i8 %409, 0
  br i1 %410, label %415, label %411

411:                                              ; preds = %403
  %412 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %413 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %412, i32 0, i32 8
  %414 = call i32 @spin_lock(i32* %413)
  br label %145

415:                                              ; preds = %403
  %416 = call i64 (...) @vm_swap_full()
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %433

418:                                              ; preds = %415
  %419 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %420 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %419, i32 0, i32 7
  %421 = load i8*, i8** %420, align 8
  %422 = load i64, i64* %11, align 8
  %423 = getelementptr inbounds i8, i8* %421, i64 %422
  %424 = load i8, i8* %423, align 1
  %425 = sext i8 %424 to i32
  %426 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %427 = sext i8 %426 to i32
  %428 = icmp eq i32 %425, %427
  br i1 %428, label %429, label %433

429:                                              ; preds = %418
  %430 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %431 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %430, i32 0, i32 8
  %432 = call i32 @spin_lock(i32* %431)
  br label %145

433:                                              ; preds = %418, %415
  %434 = load i32, i32* %14, align 4
  %435 = add nsw i32 %434, -1
  store i32 %435, i32* %14, align 4
  %436 = icmp slt i32 %435, 0
  %437 = zext i1 %436 to i32
  %438 = call i64 @unlikely(i32 %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %443

440:                                              ; preds = %433
  %441 = call i32 (...) @cond_resched()
  %442 = load i32, i32* @LATENCY_LIMIT, align 4
  store i32 %442, i32* %14, align 4
  br label %443

443:                                              ; preds = %440, %433
  %444 = load i64, i64* %11, align 8
  %445 = add i64 %444, 1
  store i64 %445, i64* %11, align 8
  br label %399

446:                                              ; preds = %399
  %447 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %448 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %447, i32 0, i32 8
  %449 = call i32 @spin_lock(i32* %448)
  br label %450

450:                                              ; preds = %446, %180, %174
  %451 = load i64, i64* @SWP_SCANNING, align 8
  %452 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %453 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = sext i32 %454 to i64
  %456 = sub nsw i64 %455, %451
  %457 = trunc i64 %456 to i32
  store i32 %457, i32* %453, align 8
  %458 = load i32, i32* %15, align 4
  store i32 %458, i32* %5, align 4
  br label %459

459:                                              ; preds = %450, %334
  %460 = load i32, i32* %5, align 4
  ret i32 %460
}

declare dso_local i64 @scan_swap_map_try_ssd_cluster(%struct.swap_info_struct*, i64*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @scan_swap_map_ssd_cluster_conflict(%struct.swap_info_struct*, i64) #1

declare dso_local %struct.swap_cluster_info* @lock_cluster(%struct.swap_info_struct*, i64) #1

declare dso_local i64 @vm_swap_full(...) #1

declare dso_local i32 @unlock_cluster(%struct.swap_cluster_info*) #1

declare dso_local i32 @__try_to_reclaim_swap(%struct.swap_info_struct*, i64, i32) #1

declare dso_local i32 @inc_cluster_info_page(%struct.swap_info_struct*, i64, i64) #1

declare dso_local i32 @swap_range_alloc(%struct.swap_info_struct*, i64, i32) #1

declare dso_local i32 @swp_entry(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
