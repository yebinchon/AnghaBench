; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_process_auxtrace_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_process_auxtrace_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.perf_record_auxtrace_info }
%struct.perf_record_auxtrace_info = type { i32*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.perf_session = type { %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.intel_bts = type { i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__, i32, i32, i32*, %struct.perf_session* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@INTEL_BTS_SNAPSHOT_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INTEL_BTS_PMU_TYPE = common dso_local global i64 0, align 8
@INTEL_BTS_TIME_SHIFT = common dso_local global i64 0, align 8
@INTEL_BTS_TIME_MULT = common dso_local global i64 0, align 8
@INTEL_BTS_TIME_ZERO = common dso_local global i64 0, align 8
@INTEL_BTS_CAP_USER_TIME_ZERO = common dso_local global i64 0, align 8
@intel_bts_process_event = common dso_local global i32 0, align 4
@intel_bts_process_auxtrace_event = common dso_local global i32 0, align 4
@intel_bts_flush = common dso_local global i32 0, align 4
@intel_bts_free_events = common dso_local global i32 0, align 4
@intel_bts_free = common dso_local global i32 0, align 4
@dump_trace = common dso_local global i64 0, align 8
@PERF_IP_FLAG_CALL = common dso_local global i32 0, align 4
@PERF_IP_FLAG_ASYNC = common dso_local global i32 0, align 4
@PERF_IP_FLAG_TRACE_END = common dso_local global i32 0, align 4
@PERF_IP_FLAG_RETURN = common dso_local global i32 0, align 4
@PERF_IP_FLAG_TRACE_BEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_bts_process_auxtrace_info(%union.perf_event* %0, %struct.perf_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca %struct.perf_record_auxtrace_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.intel_bts*, align 8
  %9 = alloca i32, align 4
  store %union.perf_event* %0, %union.perf_event** %4, align 8
  store %struct.perf_session* %1, %struct.perf_session** %5, align 8
  %10 = load %union.perf_event*, %union.perf_event** %4, align 8
  %11 = bitcast %union.perf_event* %10 to %struct.perf_record_auxtrace_info*
  store %struct.perf_record_auxtrace_info* %11, %struct.perf_record_auxtrace_info** %6, align 8
  %12 = load i32, i32* @INTEL_BTS_SNAPSHOT_MODE, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  store i64 %14, i64* %7, align 8
  %15 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %16 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %7, align 8
  %21 = add i64 16, %20
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %239

26:                                               ; preds = %2
  %27 = call %struct.intel_bts* @zalloc(i32 120)
  store %struct.intel_bts* %27, %struct.intel_bts** %8, align 8
  %28 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %29 = icmp ne %struct.intel_bts* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %239

33:                                               ; preds = %26
  %34 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %35 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %34, i32 0, i32 3
  %36 = call i32 @auxtrace_queues__init(%struct.TYPE_14__* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %235

40:                                               ; preds = %33
  %41 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %42 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %43 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %42, i32 0, i32 12
  store %struct.perf_session* %41, %struct.perf_session** %43, align 8
  %44 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %45 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %48 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %47, i32 0, i32 11
  store i32* %46, i32** %48, align 8
  %49 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %50 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %53 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 4
  %54 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %55 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @INTEL_BTS_PMU_TYPE, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %61 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %63 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @INTEL_BTS_TIME_SHIFT, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %69 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %72 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @INTEL_BTS_TIME_MULT, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %78 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %77, i32 0, i32 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %81 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @INTEL_BTS_TIME_ZERO, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %87 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %90 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @INTEL_BTS_CAP_USER_TIME_ZERO, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %96 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  %97 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %98 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @INTEL_BTS_SNAPSHOT_MODE, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %105 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %107 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load i32, i32* @intel_bts_process_event, align 4
  %109 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %110 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 8
  %112 = load i32, i32* @intel_bts_process_auxtrace_event, align 4
  %113 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %114 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @intel_bts_flush, align 4
  %117 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %118 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 8
  %120 = load i32, i32* @intel_bts_free_events, align 4
  %121 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %122 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @intel_bts_free, align 4
  %125 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %126 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %129 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %128, i32 0, i32 5
  %130 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %131 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %130, i32 0, i32 0
  store %struct.TYPE_12__* %129, %struct.TYPE_12__** %131, align 8
  %132 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %133 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i64, i64* @INTEL_BTS_PMU_TYPE, align 8
  %137 = load i32, i32* @INTEL_BTS_SNAPSHOT_MODE, align 4
  %138 = call i32 @intel_bts_print_info(i32* %135, i64 %136, i32 %137)
  %139 = load i64, i64* @dump_trace, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %40
  store i32 0, i32* %3, align 4
  br label %239

142:                                              ; preds = %40
  %143 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %144 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %143, i32 0, i32 1
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %151 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %150, i32 0, i32 4
  %152 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %153 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %152, i32 0, i32 1
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = bitcast %struct.TYPE_13__* %151 to i8*
  %156 = bitcast %struct.TYPE_13__* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %155, i8* align 8 %156, i64 32, i1 false)
  br label %174

157:                                              ; preds = %142
  %158 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %159 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %158, i32 0, i32 4
  %160 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %161 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %160, i32 0, i32 1
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @itrace_synth_opts__set_default(%struct.TYPE_13__* %159, i32 %164)
  %166 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %167 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %166, i32 0, i32 1
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %172 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  store i32 %170, i32* %173, align 8
  br label %174

174:                                              ; preds = %157, %149
  %175 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %176 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = load i32, i32* @PERF_IP_FLAG_CALL, align 4
  %182 = load i32, i32* @PERF_IP_FLAG_ASYNC, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @PERF_IP_FLAG_TRACE_END, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %187 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %180, %174
  %191 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %192 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %190
  %197 = load i32, i32* @PERF_IP_FLAG_RETURN, align 4
  %198 = load i32, i32* @PERF_IP_FLAG_TRACE_BEGIN, align 4
  %199 = or i32 %197, %198
  %200 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %201 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %196, %190
  %205 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %206 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %207 = call i32 @intel_bts_synth_events(%struct.intel_bts* %205, %struct.perf_session* %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  br label %229

211:                                              ; preds = %204
  %212 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %213 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %212, i32 0, i32 3
  %214 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %215 = call i32 @auxtrace_queues__process_index(%struct.TYPE_14__* %213, %struct.perf_session* %214)
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  br label %229

219:                                              ; preds = %211
  %220 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %221 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %227 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %226, i32 0, i32 2
  store i32 1, i32* %227, align 8
  br label %228

228:                                              ; preds = %225, %219
  store i32 0, i32* %3, align 4
  br label %239

229:                                              ; preds = %218, %210
  %230 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %231 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %230, i32 0, i32 3
  %232 = call i32 @auxtrace_queues__free(%struct.TYPE_14__* %231)
  %233 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %234 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %233, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %234, align 8
  br label %235

235:                                              ; preds = %229, %39
  %236 = load %struct.intel_bts*, %struct.intel_bts** %8, align 8
  %237 = call i32 @free(%struct.intel_bts* %236)
  %238 = load i32, i32* %9, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %235, %228, %141, %30, %23
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local %struct.intel_bts* @zalloc(i32) #1

declare dso_local i32 @auxtrace_queues__init(%struct.TYPE_14__*) #1

declare dso_local i32 @intel_bts_print_info(i32*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @itrace_synth_opts__set_default(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @intel_bts_synth_events(%struct.intel_bts*, %struct.perf_session*) #1

declare dso_local i32 @auxtrace_queues__process_index(%struct.TYPE_14__*, %struct.perf_session*) #1

declare dso_local i32 @auxtrace_queues__free(%struct.TYPE_14__*) #1

declare dso_local i32 @free(%struct.intel_bts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
