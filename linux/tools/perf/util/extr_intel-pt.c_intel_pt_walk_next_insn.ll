; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_walk_next_insn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_walk_next_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_insn = type { i64, i64, i32, i32, i32 }
%struct.intel_pt_queue = type { %struct.TYPE_11__*, %struct.thread* }
%struct.TYPE_11__ = type { %struct.thread*, %struct.machine* }
%struct.machine = type { i32 }
%struct.thread = type { i32 }
%struct.addr_location = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_10__*, i64)*, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.intel_pt_cache_entry = type { i64, i64, i64, i64, i32, i32, i32 }

@INTEL_PT_INSN_BUF_SZ = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_KERNEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DSO_DATA_STATUS_ERROR = common dso_local global i64 0, align 8
@DSO_DATA_STATUS_SEEN_ITRACE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@INTEL_PT_BR_NO_BRANCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_insn*, i64*, i64*, i64, i64, i8*)* @intel_pt_walk_next_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_walk_next_insn(%struct.intel_pt_insn* %0, i64* %1, i64* %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_pt_insn*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.intel_pt_queue*, align 8
  %15 = alloca %struct.machine*, align 8
  %16 = alloca %struct.thread*, align 8
  %17 = alloca %struct.addr_location, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.intel_pt_cache_entry*, align 8
  %30 = alloca %struct.intel_pt_cache_entry*, align 8
  store %struct.intel_pt_insn* %0, %struct.intel_pt_insn** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = bitcast i8* %31 to %struct.intel_pt_queue*
  store %struct.intel_pt_queue* %32, %struct.intel_pt_queue** %14, align 8
  %33 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %14, align 8
  %34 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.machine*, %struct.machine** %36, align 8
  store %struct.machine* %37, %struct.machine** %15, align 8
  %38 = load i32, i32* @INTEL_PT_INSN_BUF_SZ, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %18, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %19, align 8
  store i64 0, i64* %26, align 8
  store i32 1, i32* %27, align 4
  %42 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %43 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %6
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %318

52:                                               ; preds = %46, %6
  %53 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %14, align 8
  %54 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @intel_pt_cpumode(%struct.TYPE_11__* %55, i64 %57)
  store i64 %58, i64* %22, align 8
  %59 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %14, align 8
  %60 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %59, i32 0, i32 1
  %61 = load %struct.thread*, %struct.thread** %60, align 8
  store %struct.thread* %61, %struct.thread** %16, align 8
  %62 = load %struct.thread*, %struct.thread** %16, align 8
  %63 = icmp ne %struct.thread* %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %52
  %65 = load i64, i64* %22, align 8
  %66 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %321

71:                                               ; preds = %64
  %72 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %14, align 8
  %73 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.thread*, %struct.thread** %75, align 8
  store %struct.thread* %76, %struct.thread** %16, align 8
  br label %77

77:                                               ; preds = %71, %52
  br label %78

78:                                               ; preds = %282, %77
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.thread*, %struct.thread** %16, align 8
  %81 = load i64, i64* %22, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @thread__find_map(%struct.thread* %80, i64 %81, i64 %83, %struct.addr_location* %17)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = icmp ne %struct.TYPE_12__* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86, %79
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %321

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DSO_DATA_STATUS_ERROR, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i32, i32* @DSO_DATA_STATUS_SEEN_ITRACE, align 4
  %111 = call i64 @dso__data_status_seen(%struct.TYPE_12__* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* @ENOENT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %321

116:                                              ; preds = %105, %95
  %117 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64 (%struct.TYPE_10__*, i64)*, i64 (%struct.TYPE_10__*, i64)** %119, align 8
  %121 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load i64*, i64** %10, align 8
  %124 = load i64, i64* %123, align 8
  %125 = call i64 %120(%struct.TYPE_10__* %122, i64 %124)
  store i64 %125, i64* %23, align 8
  %126 = load i64, i64* %11, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %194, label %128

128:                                              ; preds = %116
  %129 = load i32, i32* %27, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %194

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load %struct.machine*, %struct.machine** %15, align 8
  %137 = load i64, i64* %23, align 8
  %138 = call %struct.intel_pt_cache_entry* @intel_pt_cache_lookup(%struct.TYPE_12__* %135, %struct.machine* %136, i64 %137)
  store %struct.intel_pt_cache_entry* %138, %struct.intel_pt_cache_entry** %29, align 8
  %139 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %29, align 8
  %140 = icmp ne %struct.intel_pt_cache_entry* %139, null
  br i1 %140, label %141, label %193

141:                                              ; preds = %131
  %142 = load i64, i64* %12, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %29, align 8
  %146 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %12, align 8
  %149 = icmp sle i64 %147, %148
  br i1 %149, label %150, label %193

150:                                              ; preds = %144, %141
  %151 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %29, align 8
  %152 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** %9, align 8
  store i64 %153, i64* %154, align 8
  %155 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %29, align 8
  %156 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %10, align 8
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, %157
  store i64 %160, i64* %158, align 8
  %161 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %29, align 8
  %162 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %165 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 8
  %166 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %29, align 8
  %167 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %170 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %169, i32 0, i32 1
  store i64 %168, i64* %170, align 8
  %171 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %29, align 8
  %172 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %175 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %29, align 8
  %177 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %180 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %182 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %29, align 8
  %185 = getelementptr inbounds %struct.intel_pt_cache_entry, %struct.intel_pt_cache_entry* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @INTEL_PT_INSN_BUF_SZ, align 4
  %188 = call i32 @memcpy(i32 %183, i32 %186, i32 %187)
  %189 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %190 = load i64*, i64** %10, align 8
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @intel_pt_log_insn_no_data(%struct.intel_pt_insn* %189, i64 %191)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %321

193:                                              ; preds = %144, %131
  br label %194

194:                                              ; preds = %193, %128, %116
  %195 = load i64, i64* %23, align 8
  store i64 %195, i64* %24, align 8
  %196 = load i64*, i64** %10, align 8
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %25, align 8
  %198 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = call i32 @map__load(%struct.TYPE_10__* %199)
  %201 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %21, align 4
  br label %207

207:                                              ; preds = %276, %194
  br label %208

208:                                              ; preds = %207
  %209 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = load %struct.machine*, %struct.machine** %15, align 8
  %214 = load i64, i64* %23, align 8
  %215 = load i32, i32* @INTEL_PT_INSN_BUF_SZ, align 4
  %216 = call i64 @dso__data_read_offset(%struct.TYPE_12__* %212, %struct.machine* %213, i64 %214, i8* %41, i32 %215)
  store i64 %216, i64* %20, align 8
  %217 = load i64, i64* %20, align 8
  %218 = icmp sle i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %208
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %321

222:                                              ; preds = %208
  %223 = load i64, i64* %20, align 8
  %224 = load i32, i32* %21, align 4
  %225 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %226 = call i64 @intel_pt_get_insn(i8* %41, i64 %223, i32 %224, %struct.intel_pt_insn* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %321

231:                                              ; preds = %222
  %232 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %233 = load i64*, i64** %10, align 8
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @intel_pt_log_insn(%struct.intel_pt_insn* %232, i64 %234)
  %236 = load i64, i64* %26, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %26, align 8
  %238 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %239 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @INTEL_PT_BR_NO_BRANCH, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %231
  br label %283

244:                                              ; preds = %231
  %245 = load i64, i64* %12, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %244
  %248 = load i64, i64* %26, align 8
  %249 = load i64, i64* %12, align 8
  %250 = icmp sge i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  br label %318

252:                                              ; preds = %247, %244
  %253 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %254 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64*, i64** %10, align 8
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %257, %255
  store i64 %258, i64* %256, align 8
  %259 = load i64, i64* %11, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %252
  %262 = load i64*, i64** %10, align 8
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* %11, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  br label %318

267:                                              ; preds = %261, %252
  %268 = load i64*, i64** %10, align 8
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = icmp sge i64 %269, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  br label %282

276:                                              ; preds = %267
  %277 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %278 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* %23, align 8
  %281 = add nsw i64 %280, %279
  store i64 %281, i64* %23, align 8
  br label %207

282:                                              ; preds = %275
  store i32 0, i32* %27, align 4
  br label %78

283:                                              ; preds = %243
  %284 = load i64, i64* %26, align 8
  %285 = load i64*, i64** %9, align 8
  store i64 %284, i64* %285, align 8
  %286 = load i32, i32* %27, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %283
  br label %318

289:                                              ; preds = %283
  %290 = load i64, i64* %11, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %304

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %295, align 8
  %297 = load %struct.machine*, %struct.machine** %15, align 8
  %298 = load i64, i64* %24, align 8
  %299 = call %struct.intel_pt_cache_entry* @intel_pt_cache_lookup(%struct.TYPE_12__* %296, %struct.machine* %297, i64 %298)
  store %struct.intel_pt_cache_entry* %299, %struct.intel_pt_cache_entry** %30, align 8
  %300 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %30, align 8
  %301 = icmp ne %struct.intel_pt_cache_entry* %300, null
  br i1 %301, label %302, label %303

302:                                              ; preds = %292
  store i32 0, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %321

303:                                              ; preds = %292
  br label %304

304:                                              ; preds = %303, %289
  %305 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 2
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %307, align 8
  %309 = load %struct.machine*, %struct.machine** %15, align 8
  %310 = load i64, i64* %24, align 8
  %311 = load i64, i64* %26, align 8
  %312 = load i64*, i64** %10, align 8
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* %25, align 8
  %315 = sub nsw i64 %313, %314
  %316 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %8, align 8
  %317 = call i32 @intel_pt_cache_add(%struct.TYPE_12__* %308, %struct.machine* %309, i64 %310, i64 %311, i64 %315, %struct.intel_pt_insn* %316)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %321

318:                                              ; preds = %288, %266, %251, %51
  %319 = load i64, i64* %26, align 8
  %320 = load i64*, i64** %9, align 8
  store i64 %319, i64* %320, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %321

321:                                              ; preds = %318, %304, %302, %228, %219, %150, %113, %92, %68
  %322 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %322)
  %323 = load i32, i32* %7, align 4
  ret i32 %323
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @intel_pt_cpumode(%struct.TYPE_11__*, i64) #2

declare dso_local i32 @thread__find_map(%struct.thread*, i64, i64, %struct.addr_location*) #2

declare dso_local i64 @dso__data_status_seen(%struct.TYPE_12__*, i32) #2

declare dso_local %struct.intel_pt_cache_entry* @intel_pt_cache_lookup(%struct.TYPE_12__*, %struct.machine*, i64) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @intel_pt_log_insn_no_data(%struct.intel_pt_insn*, i64) #2

declare dso_local i32 @map__load(%struct.TYPE_10__*) #2

declare dso_local i64 @dso__data_read_offset(%struct.TYPE_12__*, %struct.machine*, i64, i8*, i32) #2

declare dso_local i64 @intel_pt_get_insn(i8*, i64, i32, %struct.intel_pt_insn*) #2

declare dso_local i32 @intel_pt_log_insn(%struct.intel_pt_insn*, i64) #2

declare dso_local i32 @intel_pt_cache_add(%struct.TYPE_12__*, %struct.machine*, i64, i64, i64, %struct.intel_pt_insn*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
