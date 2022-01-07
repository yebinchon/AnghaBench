; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_perf_stat__update_shadow_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_perf_stat__update_shadow_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.evsel*, i64, i32 }
%struct.runtime_stat = type { i32 }
%struct.saved_value = type { i32, i32, i32 }

@STAT_NSECS = common dso_local global i32 0, align 4
@HARDWARE = common dso_local global i32 0, align 4
@HW_CPU_CYCLES = common dso_local global i32 0, align 4
@STAT_CYCLES = common dso_local global i32 0, align 4
@CYCLES_IN_TX = common dso_local global i32 0, align 4
@STAT_CYCLES_IN_TX = common dso_local global i32 0, align 4
@TRANSACTION_START = common dso_local global i32 0, align 4
@STAT_TRANSACTION = common dso_local global i32 0, align 4
@ELISION_START = common dso_local global i32 0, align 4
@STAT_ELISION = common dso_local global i32 0, align 4
@TOPDOWN_TOTAL_SLOTS = common dso_local global i32 0, align 4
@STAT_TOPDOWN_TOTAL_SLOTS = common dso_local global i32 0, align 4
@TOPDOWN_SLOTS_ISSUED = common dso_local global i32 0, align 4
@STAT_TOPDOWN_SLOTS_ISSUED = common dso_local global i32 0, align 4
@TOPDOWN_SLOTS_RETIRED = common dso_local global i32 0, align 4
@STAT_TOPDOWN_SLOTS_RETIRED = common dso_local global i32 0, align 4
@TOPDOWN_FETCH_BUBBLES = common dso_local global i32 0, align 4
@STAT_TOPDOWN_FETCH_BUBBLES = common dso_local global i32 0, align 4
@TOPDOWN_RECOVERY_BUBBLES = common dso_local global i32 0, align 4
@STAT_TOPDOWN_RECOVERY_BUBBLES = common dso_local global i32 0, align 4
@HW_STALLED_CYCLES_FRONTEND = common dso_local global i32 0, align 4
@STAT_STALLED_CYCLES_FRONT = common dso_local global i32 0, align 4
@HW_STALLED_CYCLES_BACKEND = common dso_local global i32 0, align 4
@STAT_STALLED_CYCLES_BACK = common dso_local global i32 0, align 4
@HW_BRANCH_INSTRUCTIONS = common dso_local global i32 0, align 4
@STAT_BRANCHES = common dso_local global i32 0, align 4
@HW_CACHE_REFERENCES = common dso_local global i32 0, align 4
@STAT_CACHEREFS = common dso_local global i32 0, align 4
@HW_CACHE = common dso_local global i32 0, align 4
@HW_CACHE_L1D = common dso_local global i32 0, align 4
@STAT_L1_DCACHE = common dso_local global i32 0, align 4
@HW_CACHE_L1I = common dso_local global i32 0, align 4
@STAT_L1_ICACHE = common dso_local global i32 0, align 4
@HW_CACHE_LL = common dso_local global i32 0, align 4
@STAT_LL_CACHE = common dso_local global i32 0, align 4
@HW_CACHE_DTLB = common dso_local global i32 0, align 4
@STAT_DTLB_CACHE = common dso_local global i32 0, align 4
@HW_CACHE_ITLB = common dso_local global i32 0, align 4
@STAT_ITLB_CACHE = common dso_local global i32 0, align 4
@SMI_NUM = common dso_local global i32 0, align 4
@STAT_SMI_NUM = common dso_local global i32 0, align 4
@APERF = common dso_local global i32 0, align 4
@STAT_APERF = common dso_local global i32 0, align 4
@STAT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_stat__update_shadow_stats(%struct.evsel* %0, i32 %1, i32 %2, %struct.runtime_stat* %3) #0 {
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.runtime_stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.saved_value*, align 8
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.runtime_stat* %3, %struct.runtime_stat** %8, align 8
  %12 = load %struct.evsel*, %struct.evsel** %5, align 8
  %13 = call i32 @evsel_context(%struct.evsel* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.evsel*, %struct.evsel** %5, align 8
  %16 = getelementptr inbounds %struct.evsel, %struct.evsel* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load %struct.evsel*, %struct.evsel** %5, align 8
  %21 = call i64 @perf_evsel__is_clock(%struct.evsel* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %25 = load i32, i32* @STAT_NSECS, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @update_runtime_stat(%struct.runtime_stat* %24, i32 %25, i32 0, i32 %26, i32 %27)
  br label %299

29:                                               ; preds = %4
  %30 = load %struct.evsel*, %struct.evsel** %5, align 8
  %31 = load i32, i32* @HARDWARE, align 4
  %32 = load i32, i32* @HW_CPU_CYCLES, align 4
  %33 = call i64 @perf_evsel__match(%struct.evsel* %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %37 = load i32, i32* @STAT_CYCLES, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @update_runtime_stat(%struct.runtime_stat* %36, i32 %37, i32 %38, i32 %39, i32 %40)
  br label %298

42:                                               ; preds = %29
  %43 = load %struct.evsel*, %struct.evsel** %5, align 8
  %44 = load i32, i32* @CYCLES_IN_TX, align 4
  %45 = call i64 @perf_stat_evsel__is(%struct.evsel* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %49 = load i32, i32* @STAT_CYCLES_IN_TX, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @update_runtime_stat(%struct.runtime_stat* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  br label %297

54:                                               ; preds = %42
  %55 = load %struct.evsel*, %struct.evsel** %5, align 8
  %56 = load i32, i32* @TRANSACTION_START, align 4
  %57 = call i64 @perf_stat_evsel__is(%struct.evsel* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %61 = load i32, i32* @STAT_TRANSACTION, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @update_runtime_stat(%struct.runtime_stat* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  br label %296

66:                                               ; preds = %54
  %67 = load %struct.evsel*, %struct.evsel** %5, align 8
  %68 = load i32, i32* @ELISION_START, align 4
  %69 = call i64 @perf_stat_evsel__is(%struct.evsel* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %73 = load i32, i32* @STAT_ELISION, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @update_runtime_stat(%struct.runtime_stat* %72, i32 %73, i32 %74, i32 %75, i32 %76)
  br label %295

78:                                               ; preds = %66
  %79 = load %struct.evsel*, %struct.evsel** %5, align 8
  %80 = load i32, i32* @TOPDOWN_TOTAL_SLOTS, align 4
  %81 = call i64 @perf_stat_evsel__is(%struct.evsel* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %85 = load i32, i32* @STAT_TOPDOWN_TOTAL_SLOTS, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @update_runtime_stat(%struct.runtime_stat* %84, i32 %85, i32 %86, i32 %87, i32 %88)
  br label %294

90:                                               ; preds = %78
  %91 = load %struct.evsel*, %struct.evsel** %5, align 8
  %92 = load i32, i32* @TOPDOWN_SLOTS_ISSUED, align 4
  %93 = call i64 @perf_stat_evsel__is(%struct.evsel* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %97 = load i32, i32* @STAT_TOPDOWN_SLOTS_ISSUED, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @update_runtime_stat(%struct.runtime_stat* %96, i32 %97, i32 %98, i32 %99, i32 %100)
  br label %293

102:                                              ; preds = %90
  %103 = load %struct.evsel*, %struct.evsel** %5, align 8
  %104 = load i32, i32* @TOPDOWN_SLOTS_RETIRED, align 4
  %105 = call i64 @perf_stat_evsel__is(%struct.evsel* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %109 = load i32, i32* @STAT_TOPDOWN_SLOTS_RETIRED, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @update_runtime_stat(%struct.runtime_stat* %108, i32 %109, i32 %110, i32 %111, i32 %112)
  br label %292

114:                                              ; preds = %102
  %115 = load %struct.evsel*, %struct.evsel** %5, align 8
  %116 = load i32, i32* @TOPDOWN_FETCH_BUBBLES, align 4
  %117 = call i64 @perf_stat_evsel__is(%struct.evsel* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %121 = load i32, i32* @STAT_TOPDOWN_FETCH_BUBBLES, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @update_runtime_stat(%struct.runtime_stat* %120, i32 %121, i32 %122, i32 %123, i32 %124)
  br label %291

126:                                              ; preds = %114
  %127 = load %struct.evsel*, %struct.evsel** %5, align 8
  %128 = load i32, i32* @TOPDOWN_RECOVERY_BUBBLES, align 4
  %129 = call i64 @perf_stat_evsel__is(%struct.evsel* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %133 = load i32, i32* @STAT_TOPDOWN_RECOVERY_BUBBLES, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @update_runtime_stat(%struct.runtime_stat* %132, i32 %133, i32 %134, i32 %135, i32 %136)
  br label %290

138:                                              ; preds = %126
  %139 = load %struct.evsel*, %struct.evsel** %5, align 8
  %140 = load i32, i32* @HARDWARE, align 4
  %141 = load i32, i32* @HW_STALLED_CYCLES_FRONTEND, align 4
  %142 = call i64 @perf_evsel__match(%struct.evsel* %139, i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %146 = load i32, i32* @STAT_STALLED_CYCLES_FRONT, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @update_runtime_stat(%struct.runtime_stat* %145, i32 %146, i32 %147, i32 %148, i32 %149)
  br label %289

151:                                              ; preds = %138
  %152 = load %struct.evsel*, %struct.evsel** %5, align 8
  %153 = load i32, i32* @HARDWARE, align 4
  %154 = load i32, i32* @HW_STALLED_CYCLES_BACKEND, align 4
  %155 = call i64 @perf_evsel__match(%struct.evsel* %152, i32 %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %159 = load i32, i32* @STAT_STALLED_CYCLES_BACK, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @update_runtime_stat(%struct.runtime_stat* %158, i32 %159, i32 %160, i32 %161, i32 %162)
  br label %288

164:                                              ; preds = %151
  %165 = load %struct.evsel*, %struct.evsel** %5, align 8
  %166 = load i32, i32* @HARDWARE, align 4
  %167 = load i32, i32* @HW_BRANCH_INSTRUCTIONS, align 4
  %168 = call i64 @perf_evsel__match(%struct.evsel* %165, i32 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %172 = load i32, i32* @STAT_BRANCHES, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @update_runtime_stat(%struct.runtime_stat* %171, i32 %172, i32 %173, i32 %174, i32 %175)
  br label %287

177:                                              ; preds = %164
  %178 = load %struct.evsel*, %struct.evsel** %5, align 8
  %179 = load i32, i32* @HARDWARE, align 4
  %180 = load i32, i32* @HW_CACHE_REFERENCES, align 4
  %181 = call i64 @perf_evsel__match(%struct.evsel* %178, i32 %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %177
  %184 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %185 = load i32, i32* @STAT_CACHEREFS, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @update_runtime_stat(%struct.runtime_stat* %184, i32 %185, i32 %186, i32 %187, i32 %188)
  br label %286

190:                                              ; preds = %177
  %191 = load %struct.evsel*, %struct.evsel** %5, align 8
  %192 = load i32, i32* @HW_CACHE, align 4
  %193 = load i32, i32* @HW_CACHE_L1D, align 4
  %194 = call i64 @perf_evsel__match(%struct.evsel* %191, i32 %192, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %190
  %197 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %198 = load i32, i32* @STAT_L1_DCACHE, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @update_runtime_stat(%struct.runtime_stat* %197, i32 %198, i32 %199, i32 %200, i32 %201)
  br label %285

203:                                              ; preds = %190
  %204 = load %struct.evsel*, %struct.evsel** %5, align 8
  %205 = load i32, i32* @HW_CACHE, align 4
  %206 = load i32, i32* @HW_CACHE_L1I, align 4
  %207 = call i64 @perf_evsel__match(%struct.evsel* %204, i32 %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %203
  %210 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %211 = load i32, i32* @STAT_L1_ICACHE, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @update_runtime_stat(%struct.runtime_stat* %210, i32 %211, i32 %212, i32 %213, i32 %214)
  br label %284

216:                                              ; preds = %203
  %217 = load %struct.evsel*, %struct.evsel** %5, align 8
  %218 = load i32, i32* @HW_CACHE, align 4
  %219 = load i32, i32* @HW_CACHE_LL, align 4
  %220 = call i64 @perf_evsel__match(%struct.evsel* %217, i32 %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %216
  %223 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %224 = load i32, i32* @STAT_LL_CACHE, align 4
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @update_runtime_stat(%struct.runtime_stat* %223, i32 %224, i32 %225, i32 %226, i32 %227)
  br label %283

229:                                              ; preds = %216
  %230 = load %struct.evsel*, %struct.evsel** %5, align 8
  %231 = load i32, i32* @HW_CACHE, align 4
  %232 = load i32, i32* @HW_CACHE_DTLB, align 4
  %233 = call i64 @perf_evsel__match(%struct.evsel* %230, i32 %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %229
  %236 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %237 = load i32, i32* @STAT_DTLB_CACHE, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @update_runtime_stat(%struct.runtime_stat* %236, i32 %237, i32 %238, i32 %239, i32 %240)
  br label %282

242:                                              ; preds = %229
  %243 = load %struct.evsel*, %struct.evsel** %5, align 8
  %244 = load i32, i32* @HW_CACHE, align 4
  %245 = load i32, i32* @HW_CACHE_ITLB, align 4
  %246 = call i64 @perf_evsel__match(%struct.evsel* %243, i32 %244, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %242
  %249 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %250 = load i32, i32* @STAT_ITLB_CACHE, align 4
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %7, align 4
  %253 = load i32, i32* %6, align 4
  %254 = call i32 @update_runtime_stat(%struct.runtime_stat* %249, i32 %250, i32 %251, i32 %252, i32 %253)
  br label %281

255:                                              ; preds = %242
  %256 = load %struct.evsel*, %struct.evsel** %5, align 8
  %257 = load i32, i32* @SMI_NUM, align 4
  %258 = call i64 @perf_stat_evsel__is(%struct.evsel* %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %255
  %261 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %262 = load i32, i32* @STAT_SMI_NUM, align 4
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @update_runtime_stat(%struct.runtime_stat* %261, i32 %262, i32 %263, i32 %264, i32 %265)
  br label %280

267:                                              ; preds = %255
  %268 = load %struct.evsel*, %struct.evsel** %5, align 8
  %269 = load i32, i32* @APERF, align 4
  %270 = call i64 @perf_stat_evsel__is(%struct.evsel* %268, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %267
  %273 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %274 = load i32, i32* @STAT_APERF, align 4
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* %6, align 4
  %278 = call i32 @update_runtime_stat(%struct.runtime_stat* %273, i32 %274, i32 %275, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %272, %267
  br label %280

280:                                              ; preds = %279, %260
  br label %281

281:                                              ; preds = %280, %248
  br label %282

282:                                              ; preds = %281, %235
  br label %283

283:                                              ; preds = %282, %222
  br label %284

284:                                              ; preds = %283, %209
  br label %285

285:                                              ; preds = %284, %196
  br label %286

286:                                              ; preds = %285, %183
  br label %287

287:                                              ; preds = %286, %170
  br label %288

288:                                              ; preds = %287, %157
  br label %289

289:                                              ; preds = %288, %144
  br label %290

290:                                              ; preds = %289, %131
  br label %291

291:                                              ; preds = %290, %119
  br label %292

292:                                              ; preds = %291, %107
  br label %293

293:                                              ; preds = %292, %95
  br label %294

294:                                              ; preds = %293, %83
  br label %295

295:                                              ; preds = %294, %71
  br label %296

296:                                              ; preds = %295, %59
  br label %297

297:                                              ; preds = %296, %47
  br label %298

298:                                              ; preds = %297, %35
  br label %299

299:                                              ; preds = %298, %23
  %300 = load %struct.evsel*, %struct.evsel** %5, align 8
  %301 = getelementptr inbounds %struct.evsel, %struct.evsel* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %325

304:                                              ; preds = %299
  %305 = load %struct.evsel*, %struct.evsel** %5, align 8
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* @STAT_NONE, align 4
  %308 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %309 = call %struct.saved_value* @saved_value_lookup(%struct.evsel* %305, i32 %306, i32 1, i32 %307, i32 0, %struct.runtime_stat* %308)
  store %struct.saved_value* %309, %struct.saved_value** %11, align 8
  %310 = load %struct.saved_value*, %struct.saved_value** %11, align 8
  %311 = getelementptr inbounds %struct.saved_value, %struct.saved_value* %310, i32 0, i32 2
  %312 = load i32, i32* %6, align 4
  %313 = call i32 @update_stats(i32* %311, i32 %312)
  %314 = load %struct.evsel*, %struct.evsel** %5, align 8
  %315 = getelementptr inbounds %struct.evsel, %struct.evsel* %314, i32 0, i32 0
  %316 = load %struct.evsel*, %struct.evsel** %315, align 8
  %317 = icmp ne %struct.evsel* %316, null
  br i1 %317, label %318, label %324

318:                                              ; preds = %304
  %319 = load i32, i32* %6, align 4
  %320 = load %struct.saved_value*, %struct.saved_value** %11, align 8
  %321 = getelementptr inbounds %struct.saved_value, %struct.saved_value* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, %319
  store i32 %323, i32* %321, align 4
  br label %324

324:                                              ; preds = %318, %304
  br label %348

325:                                              ; preds = %299
  %326 = load %struct.evsel*, %struct.evsel** %5, align 8
  %327 = getelementptr inbounds %struct.evsel, %struct.evsel* %326, i32 0, i32 0
  %328 = load %struct.evsel*, %struct.evsel** %327, align 8
  %329 = icmp ne %struct.evsel* %328, null
  br i1 %329, label %330, label %347

330:                                              ; preds = %325
  %331 = load %struct.evsel*, %struct.evsel** %5, align 8
  %332 = getelementptr inbounds %struct.evsel, %struct.evsel* %331, i32 0, i32 0
  %333 = load %struct.evsel*, %struct.evsel** %332, align 8
  %334 = load i32, i32* %7, align 4
  %335 = load i32, i32* @STAT_NONE, align 4
  %336 = load %struct.runtime_stat*, %struct.runtime_stat** %8, align 8
  %337 = call %struct.saved_value* @saved_value_lookup(%struct.evsel* %333, i32 %334, i32 1, i32 %335, i32 0, %struct.runtime_stat* %336)
  store %struct.saved_value* %337, %struct.saved_value** %11, align 8
  %338 = load i32, i32* %6, align 4
  %339 = load %struct.saved_value*, %struct.saved_value** %11, align 8
  %340 = getelementptr inbounds %struct.saved_value, %struct.saved_value* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %341, %338
  store i32 %342, i32* %340, align 4
  %343 = load %struct.saved_value*, %struct.saved_value** %11, align 8
  %344 = getelementptr inbounds %struct.saved_value, %struct.saved_value* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %344, align 4
  br label %347

347:                                              ; preds = %330, %325
  br label %348

348:                                              ; preds = %347, %324
  ret void
}

declare dso_local i32 @evsel_context(%struct.evsel*) #1

declare dso_local i64 @perf_evsel__is_clock(%struct.evsel*) #1

declare dso_local i32 @update_runtime_stat(%struct.runtime_stat*, i32, i32, i32, i32) #1

declare dso_local i64 @perf_evsel__match(%struct.evsel*, i32, i32) #1

declare dso_local i64 @perf_stat_evsel__is(%struct.evsel*, i32) #1

declare dso_local %struct.saved_value* @saved_value_lookup(%struct.evsel*, i32, i32, i32, i32, %struct.runtime_stat*) #1

declare dso_local i32 @update_stats(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
