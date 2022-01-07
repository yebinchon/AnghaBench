; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct.intel_pt* }
%struct.intel_pt = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.perf_env* }
%struct.perf_env = type { i64 }
%struct.intel_pt_params = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.intel_pt_queue*, i32, i32, i32 }

@PERF_SAMPLE_MAX_SIZE = common dso_local global i32 0, align 4
@intel_pt_get_trace = common dso_local global i32 0, align 4
@intel_pt_walk_next_insn = common dso_local global i32 0, align 4
@intel_pt_lookahead = common dso_local global i32 0, align 4
@intel_pt_pgd_ip = common dso_local global i32 0, align 4
@INTEL_PT_PERIOD_INSTRUCTIONS = common dso_local global i8* null, align 8
@INTEL_PT_PERIOD_TICKS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"GenuineIntel,6,92,\00", align 1
@INTEL_PT_FUP_WITH_NLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_pt_queue* (%struct.intel_pt*, i32)* @intel_pt_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_pt_queue* @intel_pt_alloc_queue(%struct.intel_pt* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_pt_queue*, align 8
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_pt_params, align 8
  %7 = alloca %struct.perf_env*, align 8
  %8 = alloca %struct.intel_pt_queue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.intel_pt* %0, %struct.intel_pt** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = bitcast %struct.intel_pt_params* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 72, i1 false)
  %12 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %13 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.perf_env*, %struct.perf_env** %15, align 8
  store %struct.perf_env* %16, %struct.perf_env** %7, align 8
  %17 = call i8* @zalloc(i64 72)
  %18 = bitcast i8* %17 to %struct.intel_pt_queue*
  store %struct.intel_pt_queue* %18, %struct.intel_pt_queue** %8, align 8
  %19 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %20 = icmp ne %struct.intel_pt_queue* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.intel_pt_queue* null, %struct.intel_pt_queue** %3, align 8
  br label %245

22:                                               ; preds = %2
  %23 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %24 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  store i64 4, i64* %9, align 8
  %29 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %30 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i8* @zalloc(i64 %38)
  %40 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %41 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %43 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %42, i32 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %28
  br label %230

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %22
  %49 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %50 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %48
  store i64 4, i64* %10, align 8
  %55 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %56 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i8* @zalloc(i64 %63)
  %65 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %66 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %65, i32 0, i32 7
  store i8* %64, i8** %66, align 8
  %67 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %68 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %67, i32 0, i32 7
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %54
  br label %230

72:                                               ; preds = %54
  %73 = load i64, i64* %10, align 8
  %74 = call i8* @zalloc(i64 %73)
  %75 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %76 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %78 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %77, i32 0, i32 6
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  br label %230

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %48
  %84 = load i32, i32* @PERF_SAMPLE_MAX_SIZE, align 4
  %85 = call i8* @malloc(i32 %84)
  %86 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %87 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %86, i32 0, i32 8
  store i8* %85, i8** %87, align 8
  %88 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %89 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %88, i32 0, i32 8
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  br label %230

93:                                               ; preds = %83
  %94 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %95 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %96 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %95, i32 0, i32 11
  store %struct.intel_pt* %94, %struct.intel_pt** %96, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %99 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %101 = call i32 @intel_pt_exclude_kernel(%struct.intel_pt* %100)
  %102 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %103 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %102, i32 0, i32 10
  store i32 %101, i32* %103, align 4
  %104 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %105 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %104, i32 0, i32 1
  store i32 -1, i32* %105, align 4
  %106 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %107 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %106, i32 0, i32 2
  store i32 -1, i32* %107, align 8
  %108 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %109 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %108, i32 0, i32 3
  store i32 -1, i32* %109, align 4
  %110 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %111 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %110, i32 0, i32 4
  store i32 -1, i32* %111, align 8
  %112 = load i32, i32* @intel_pt_get_trace, align 4
  %113 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 13
  store i32 %112, i32* %113, align 8
  %114 = load i32, i32* @intel_pt_walk_next_insn, align 4
  %115 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 12
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @intel_pt_lookahead, align 4
  %117 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 11
  store i32 %116, i32* %117, align 8
  %118 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %119 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 10
  store %struct.intel_pt_queue* %118, %struct.intel_pt_queue** %119, align 8
  %120 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %121 = call i32 @intel_pt_return_compression(%struct.intel_pt* %120)
  %122 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 9
  store i32 %121, i32* %122, align 8
  %123 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %124 = call i32 @intel_pt_branch_enable(%struct.intel_pt* %123)
  %125 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 8
  store i32 %124, i32* %125, align 4
  %126 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %127 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 7
  store i32 %128, i32* %129, align 8
  %130 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %131 = call i32 @intel_pt_mtc_period(%struct.intel_pt* %130)
  %132 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 6
  store i32 %131, i32* %132, align 4
  %133 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %134 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 5
  store i32 %135, i32* %136, align 8
  %137 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %138 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 4
  store i32 %139, i32* %140, align 4
  %141 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %142 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %93
  %147 = load i32, i32* @intel_pt_pgd_ip, align 4
  %148 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 3
  store i32 %147, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %93
  %150 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %151 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %203

155:                                              ; preds = %149
  %156 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %157 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %194

161:                                              ; preds = %155
  %162 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %163 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %192 [
    i32 130, label %166
    i32 128, label %174
    i32 129, label %182
  ]

166:                                              ; preds = %161
  %167 = load i8*, i8** @INTEL_PT_PERIOD_INSTRUCTIONS, align 8
  %168 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 2
  store i8* %167, i8** %168, align 8
  %169 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %170 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 0
  store i32 %172, i32* %173, align 8
  br label %193

174:                                              ; preds = %161
  %175 = load i8*, i8** @INTEL_PT_PERIOD_TICKS, align 8
  %176 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 2
  store i8* %175, i8** %176, align 8
  %177 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %178 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 0
  store i32 %180, i32* %181, align 8
  br label %193

182:                                              ; preds = %161
  %183 = load i8*, i8** @INTEL_PT_PERIOD_TICKS, align 8
  %184 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 2
  store i8* %183, i8** %184, align 8
  %185 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %186 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %187 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @intel_pt_ns_to_ticks(%struct.intel_pt* %185, i32 %189)
  %191 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 0
  store i32 %190, i32* %191, align 8
  br label %193

192:                                              ; preds = %161
  br label %193

193:                                              ; preds = %192, %182, %174, %166
  br label %194

194:                                              ; preds = %193, %155
  %195 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = load i8*, i8** @INTEL_PT_PERIOD_INSTRUCTIONS, align 8
  %200 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 2
  store i8* %199, i8** %200, align 8
  %201 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 0
  store i32 1, i32* %201, align 8
  br label %202

202:                                              ; preds = %198, %194
  br label %203

203:                                              ; preds = %202, %149
  %204 = load %struct.perf_env*, %struct.perf_env** %7, align 8
  %205 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %203
  %209 = load %struct.perf_env*, %struct.perf_env** %7, align 8
  %210 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @strncmp(i64 %211, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 18)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %208
  %215 = load i32, i32* @INTEL_PT_FUP_WITH_NLIP, align 4
  %216 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %6, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %215
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %214, %208, %203
  %220 = call i32 @intel_pt_decoder_new(%struct.intel_pt_params* %6)
  %221 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %222 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %221, i32 0, i32 9
  store i32 %220, i32* %222, align 8
  %223 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %224 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %219
  br label %230

228:                                              ; preds = %219
  %229 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  store %struct.intel_pt_queue* %229, %struct.intel_pt_queue** %3, align 8
  br label %245

230:                                              ; preds = %227, %92, %81, %71, %46
  %231 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %232 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %231, i32 0, i32 8
  %233 = call i32 @zfree(i8** %232)
  %234 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %235 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %234, i32 0, i32 7
  %236 = call i32 @zfree(i8** %235)
  %237 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %238 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %237, i32 0, i32 6
  %239 = call i32 @zfree(i8** %238)
  %240 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %241 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %240, i32 0, i32 5
  %242 = call i32 @zfree(i8** %241)
  %243 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %8, align 8
  %244 = call i32 @free(%struct.intel_pt_queue* %243)
  store %struct.intel_pt_queue* null, %struct.intel_pt_queue** %3, align 8
  br label %245

245:                                              ; preds = %230, %228, %21
  %246 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  ret %struct.intel_pt_queue* %246
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @zalloc(i64) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @intel_pt_exclude_kernel(%struct.intel_pt*) #2

declare dso_local i32 @intel_pt_return_compression(%struct.intel_pt*) #2

declare dso_local i32 @intel_pt_branch_enable(%struct.intel_pt*) #2

declare dso_local i32 @intel_pt_mtc_period(%struct.intel_pt*) #2

declare dso_local i32 @intel_pt_ns_to_ticks(%struct.intel_pt*, i32) #2

declare dso_local i32 @strncmp(i64, i8*, i32) #2

declare dso_local i32 @intel_pt_decoder_new(%struct.intel_pt_params*) #2

declare dso_local i32 @zfree(i8**) #2

declare dso_local i32 @free(%struct.intel_pt_queue*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
