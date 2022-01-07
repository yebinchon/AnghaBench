; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___alloc_pages_slowpath.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___alloc_pages_slowpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }
%struct.alloc_context = type { i64, i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@PAGE_ALLOC_COSTLY_ORDER = common dso_local global i32 0, align 4
@__GFP_ATOMIC = common dso_local global i32 0, align 4
@DEF_COMPACT_PRIORITY = common dso_local global i32 0, align 4
@ALLOC_KSWAPD = common dso_local global i32 0, align 4
@MIGRATE_MOVABLE = common dso_local global i64 0, align 8
@INIT_COMPACT_PRIORITY = common dso_local global i32 0, align 4
@pageblock_order = common dso_local global i32 0, align 4
@__GFP_IO = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@COMPACT_SKIPPED = common dso_local global i32 0, align 4
@COMPACT_DEFERRED = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@ALLOC_CPUSET = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@ALLOC_OOM = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@ALLOC_HARDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"page allocation failure: order:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32, i32, %struct.alloc_context*)* @__alloc_pages_slowpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__alloc_pages_slowpath(i32 %0, i32 %1, %struct.alloc_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.alloc_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.alloc_context* %2, %struct.alloc_context** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PAGE_ALLOC_COSTLY_ORDER, align 4
  %23 = icmp ugt i32 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  store %struct.page* null, %struct.page** %9, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @__GFP_ATOMIC, align 4
  %27 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = load i32, i32* @__GFP_ATOMIC, align 4
  %31 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %32 = or i32 %30, %31
  %33 = icmp eq i32 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load i32, i32* @__GFP_ATOMIC, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %3
  br label %43

43:                                               ; preds = %313, %280, %42
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %44 = load i32, i32* @DEF_COMPACT_PRIORITY, align 4
  store i32 %44, i32* %12, align 4
  %45 = call i32 (...) @read_mems_allowed_begin()
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @gfp_to_alloc_flags(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %49 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %52 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %55 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i8* @first_zones_zonelist(i32 %50, i32 %53, i32* %56)
  %58 = bitcast i8* %57 to %struct.TYPE_4__*
  %59 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %60 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %59, i32 0, i32 4
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %60, align 8
  %61 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %62 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %61, i32 0, i32 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %43
  br label %308

68:                                               ; preds = %43
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @ALLOC_KSWAPD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %77 = call i32 @wake_all_kswapds(i32 %74, i32 %75, %struct.alloc_context* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %83 = call %struct.page* @get_page_from_freelist(i32 %79, i32 %80, i32 %81, %struct.alloc_context* %82)
  store %struct.page* %83, %struct.page** %9, align 8
  %84 = load %struct.page*, %struct.page** %9, align 8
  %85 = icmp ne %struct.page* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %357

87:                                               ; preds = %78
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %156

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = icmp ugt i32 %94, 0
  br i1 %95, label %96, label %156

96:                                               ; preds = %93
  %97 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %98 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MIGRATE_MOVABLE, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %156

102:                                              ; preds = %96, %90
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @gfp_pfmemalloc_allowed(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %156, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %111 = load i32, i32* @INIT_COMPACT_PRIORITY, align 4
  %112 = call %struct.page* @__alloc_pages_direct_compact(i32 %107, i32 %108, i32 %109, %struct.alloc_context* %110, i32 %111, i32* %13)
  store %struct.page* %112, %struct.page** %9, align 8
  %113 = load %struct.page*, %struct.page** %9, align 8
  %114 = icmp ne %struct.page* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %357

116:                                              ; preds = %106
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @pageblock_order, align 4
  %119 = icmp uge i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @__GFP_IO, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @COMPACT_SKIPPED, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @COMPACT_DEFERRED, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %130
  br label %308

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %125, %120, %116
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @__GFP_NORETRY, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @COMPACT_DEFERRED, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %308

153:                                              ; preds = %148
  %154 = load i32, i32* @INIT_COMPACT_PRIORITY, align 4
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %153, %143, %140
  br label %156

156:                                              ; preds = %155, %102, %96, %93, %87
  br label %157

157:                                              ; preds = %347, %306, %274, %263, %156
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @ALLOC_KSWAPD, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %166 = call i32 @wake_all_kswapds(i32 %163, i32 %164, %struct.alloc_context* %165)
  br label %167

167:                                              ; preds = %162, %157
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @__gfp_pfmemalloc_flags(i32 %168)
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %17, align 4
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %172, %167
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @ALLOC_CPUSET, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %17, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %179, %174
  %183 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %184 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %183, i32 0, i32 1
  store i32* null, i32** %184, align 8
  %185 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %186 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %189 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %192 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = call i8* @first_zones_zonelist(i32 %187, i32 %190, i32* %193)
  %195 = bitcast i8* %194 to %struct.TYPE_4__*
  %196 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %197 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %196, i32 0, i32 4
  store %struct.TYPE_4__* %195, %struct.TYPE_4__** %197, align 8
  br label %198

198:                                              ; preds = %182, %179
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %203 = call %struct.page* @get_page_from_freelist(i32 %199, i32 %200, i32 %201, %struct.alloc_context* %202)
  store %struct.page* %203, %struct.page** %9, align 8
  %204 = load %struct.page*, %struct.page** %9, align 8
  %205 = icmp ne %struct.page* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  br label %357

207:                                              ; preds = %198
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %207
  br label %308

211:                                              ; preds = %207
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @PF_MEMALLOC, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  br label %308

219:                                              ; preds = %211
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* %10, align 4
  %223 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %224 = call %struct.page* @__alloc_pages_direct_reclaim(i32 %220, i32 %221, i32 %222, %struct.alloc_context* %223, i64* %11)
  store %struct.page* %224, %struct.page** %9, align 8
  %225 = load %struct.page*, %struct.page** %9, align 8
  %226 = icmp ne %struct.page* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  br label %357

228:                                              ; preds = %219
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %233 = load i32, i32* %12, align 4
  %234 = call %struct.page* @__alloc_pages_direct_compact(i32 %229, i32 %230, i32 %231, %struct.alloc_context* %232, i32 %233, i32* %13)
  store %struct.page* %234, %struct.page** %9, align 8
  %235 = load %struct.page*, %struct.page** %9, align 8
  %236 = icmp ne %struct.page* %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %228
  br label %357

238:                                              ; preds = %228
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* @__GFP_NORETRY, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  br label %308

244:                                              ; preds = %238
  %245 = load i32, i32* %8, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %244
  %248 = load i32, i32* %4, align 4
  %249 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %247
  br label %308

253:                                              ; preds = %247, %244
  %254 = load i32, i32* %4, align 4
  %255 = load i32, i32* %5, align 4
  %256 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %257 = load i32, i32* %10, align 4
  %258 = load i64, i64* %11, align 8
  %259 = icmp ugt i64 %258, 0
  %260 = zext i1 %259 to i32
  %261 = call i64 @should_reclaim_retry(i32 %254, i32 %255, %struct.alloc_context* %256, i32 %257, i32 %260, i32* %15)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %253
  br label %157

264:                                              ; preds = %253
  %265 = load i64, i64* %11, align 8
  %266 = icmp ugt i64 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %264
  %268 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %269 = load i32, i32* %5, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %13, align 4
  %272 = call i64 @should_compact_retry(%struct.alloc_context* %268, i32 %269, i32 %270, i32 %271, i32* %12, i32* %14)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %267
  br label %157

275:                                              ; preds = %267, %264
  %276 = load i32, i32* %16, align 4
  %277 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %278 = call i64 @check_retry_cpuset(i32 %276, %struct.alloc_context* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %275
  br label %43

281:                                              ; preds = %275
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* %5, align 4
  %284 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %285 = call %struct.page* @__alloc_pages_may_oom(i32 %282, i32 %283, %struct.alloc_context* %284, i64* %11)
  store %struct.page* %285, %struct.page** %9, align 8
  %286 = load %struct.page*, %struct.page** %9, align 8
  %287 = icmp ne %struct.page* %286, null
  br i1 %287, label %288, label %289

288:                                              ; preds = %281
  br label %357

289:                                              ; preds = %281
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %291 = call i64 @tsk_is_oom_victim(%struct.TYPE_5__* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %289
  %294 = load i32, i32* %10, align 4
  %295 = load i32, i32* @ALLOC_OOM, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %302, label %297

297:                                              ; preds = %293
  %298 = load i32, i32* %4, align 4
  %299 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %297, %293
  br label %308

303:                                              ; preds = %297, %289
  %304 = load i64, i64* %11, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  store i32 0, i32* %15, align 4
  br label %157

307:                                              ; preds = %303
  br label %308

308:                                              ; preds = %307, %302, %252, %243, %218, %210, %152, %138, %67
  %309 = load i32, i32* %16, align 4
  %310 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %311 = call i64 @check_retry_cpuset(i32 %309, %struct.alloc_context* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  br label %43

314:                                              ; preds = %308
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* @__GFP_NOFAIL, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %349

319:                                              ; preds = %314
  %320 = load i32, i32* %7, align 4
  %321 = icmp ne i32 %320, 0
  %322 = xor i1 %321, true
  %323 = zext i1 %322 to i32
  %324 = call i64 @WARN_ON_ONCE(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  br label %350

327:                                              ; preds = %319
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @PF_MEMALLOC, align 4
  %332 = and i32 %330, %331
  %333 = call i64 @WARN_ON_ONCE(i32 %332)
  %334 = load i32, i32* %5, align 4
  %335 = load i32, i32* @PAGE_ALLOC_COSTLY_ORDER, align 4
  %336 = icmp ugt i32 %334, %335
  %337 = zext i1 %336 to i32
  %338 = call i64 @WARN_ON_ONCE(i32 %337)
  %339 = load i32, i32* %4, align 4
  %340 = load i32, i32* %5, align 4
  %341 = load i32, i32* @ALLOC_HARDER, align 4
  %342 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %343 = call %struct.page* @__alloc_pages_cpuset_fallback(i32 %339, i32 %340, i32 %341, %struct.alloc_context* %342)
  store %struct.page* %343, %struct.page** %9, align 8
  %344 = load %struct.page*, %struct.page** %9, align 8
  %345 = icmp ne %struct.page* %344, null
  br i1 %345, label %346, label %347

346:                                              ; preds = %327
  br label %357

347:                                              ; preds = %327
  %348 = call i32 (...) @cond_resched()
  br label %157

349:                                              ; preds = %314
  br label %350

350:                                              ; preds = %349, %326
  %351 = load i32, i32* %4, align 4
  %352 = load %struct.alloc_context*, %struct.alloc_context** %6, align 8
  %353 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %5, align 4
  %356 = call i32 @warn_alloc(i32 %351, i32* %354, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %355)
  br label %357

357:                                              ; preds = %350, %346, %288, %237, %227, %206, %115, %86
  %358 = load %struct.page*, %struct.page** %9, align 8
  ret %struct.page* %358
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @read_mems_allowed_begin(...) #1

declare dso_local i32 @gfp_to_alloc_flags(i32) #1

declare dso_local i8* @first_zones_zonelist(i32, i32, i32*) #1

declare dso_local i32 @wake_all_kswapds(i32, i32, %struct.alloc_context*) #1

declare dso_local %struct.page* @get_page_from_freelist(i32, i32, i32, %struct.alloc_context*) #1

declare dso_local i32 @gfp_pfmemalloc_allowed(i32) #1

declare dso_local %struct.page* @__alloc_pages_direct_compact(i32, i32, i32, %struct.alloc_context*, i32, i32*) #1

declare dso_local i32 @__gfp_pfmemalloc_flags(i32) #1

declare dso_local %struct.page* @__alloc_pages_direct_reclaim(i32, i32, i32, %struct.alloc_context*, i64*) #1

declare dso_local i64 @should_reclaim_retry(i32, i32, %struct.alloc_context*, i32, i32, i32*) #1

declare dso_local i64 @should_compact_retry(%struct.alloc_context*, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @check_retry_cpuset(i32, %struct.alloc_context*) #1

declare dso_local %struct.page* @__alloc_pages_may_oom(i32, i32, %struct.alloc_context*, i64*) #1

declare dso_local i64 @tsk_is_oom_victim(%struct.TYPE_5__*) #1

declare dso_local %struct.page* @__alloc_pages_cpuset_fallback(i32, i32, i32, %struct.alloc_context*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @warn_alloc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
