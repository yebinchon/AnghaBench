; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_tool__fill_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_tool__fill_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@process_event_sample_stub = common dso_local global i8* null, align 8
@process_event_stub = common dso_local global i8* null, align 8
@perf_event__process_lost = common dso_local global i32* null, align 8
@perf_event__process_lost_samples = common dso_local global i32* null, align 8
@perf_event__process_aux = common dso_local global i32* null, align 8
@perf_event__process_itrace_start = common dso_local global i32* null, align 8
@perf_event__process_switch = common dso_local global i32* null, align 8
@perf_event__process_ksymbol = common dso_local global i32* null, align 8
@perf_event__process_bpf = common dso_local global i32* null, align 8
@process_event_synth_attr_stub = common dso_local global i32* null, align 8
@process_event_synth_event_update_stub = common dso_local global i32* null, align 8
@process_event_synth_tracing_data_stub = common dso_local global i32* null, align 8
@process_event_op2_stub = common dso_local global i8* null, align 8
@process_finished_round = common dso_local global i32* null, align 8
@process_finished_round_stub = common dso_local global i32* null, align 8
@process_event_auxtrace_stub = common dso_local global i32* null, align 8
@process_event_thread_map_stub = common dso_local global i32* null, align 8
@process_event_cpu_map_stub = common dso_local global i32* null, align 8
@process_event_stat_config_stub = common dso_local global i32* null, align 8
@process_stat_stub = common dso_local global i32* null, align 8
@process_stat_round_stub = common dso_local global i32* null, align 8
@perf_session__process_compressed_event = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_tool__fill_defaults(%struct.perf_tool* %0) #0 {
  %2 = alloca %struct.perf_tool*, align 8
  store %struct.perf_tool* %0, %struct.perf_tool** %2, align 8
  %3 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %4 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %3, i32 0, i32 34
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i8*, i8** @process_event_sample_stub, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %11 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %10, i32 0, i32 34
  store i32* %9, i32** %11, align 8
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %14 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %13, i32 0, i32 33
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** @process_event_stub, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %21 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %20, i32 0, i32 33
  store i32* %19, i32** %21, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %24 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %23, i32 0, i32 32
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** @process_event_stub, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %31 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %30, i32 0, i32 32
  store i32* %29, i32** %31, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %34 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %33, i32 0, i32 31
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** @process_event_stub, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %41 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %40, i32 0, i32 31
  store i32* %39, i32** %41, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %44 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %43, i32 0, i32 30
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** @process_event_stub, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %51 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %50, i32 0, i32 30
  store i32* %49, i32** %51, align 8
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %54 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %53, i32 0, i32 29
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i8*, i8** @process_event_stub, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %61 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %60, i32 0, i32 29
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %64 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %63, i32 0, i32 28
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** @process_event_stub, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %71 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %70, i32 0, i32 28
  store i32* %69, i32** %71, align 8
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %74 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %73, i32 0, i32 27
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32*, i32** @perf_event__process_lost, align 8
  %79 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %80 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %79, i32 0, i32 27
  store i32* %78, i32** %80, align 8
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %83 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %82, i32 0, i32 26
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32*, i32** @perf_event__process_lost_samples, align 8
  %88 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %89 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %88, i32 0, i32 26
  store i32* %87, i32** %89, align 8
  br label %90

90:                                               ; preds = %86, %81
  %91 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %92 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %91, i32 0, i32 25
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32*, i32** @perf_event__process_aux, align 8
  %97 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %98 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %97, i32 0, i32 25
  store i32* %96, i32** %98, align 8
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %101 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %100, i32 0, i32 24
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32*, i32** @perf_event__process_itrace_start, align 8
  %106 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %107 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %106, i32 0, i32 24
  store i32* %105, i32** %107, align 8
  br label %108

108:                                              ; preds = %104, %99
  %109 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %110 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %109, i32 0, i32 23
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32*, i32** @perf_event__process_switch, align 8
  %115 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %116 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %115, i32 0, i32 23
  store i32* %114, i32** %116, align 8
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %119 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %118, i32 0, i32 22
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32*, i32** @perf_event__process_ksymbol, align 8
  %124 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %125 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %124, i32 0, i32 22
  store i32* %123, i32** %125, align 8
  br label %126

126:                                              ; preds = %122, %117
  %127 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %128 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %127, i32 0, i32 21
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32*, i32** @perf_event__process_bpf, align 8
  %133 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %134 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %133, i32 0, i32 21
  store i32* %132, i32** %134, align 8
  br label %135

135:                                              ; preds = %131, %126
  %136 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %137 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %136, i32 0, i32 20
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i8*, i8** @process_event_sample_stub, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %144 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %143, i32 0, i32 20
  store i32* %142, i32** %144, align 8
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %147 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %146, i32 0, i32 19
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i8*, i8** @process_event_stub, align 8
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %154 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %153, i32 0, i32 19
  store i32* %152, i32** %154, align 8
  br label %155

155:                                              ; preds = %150, %145
  %156 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %157 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %156, i32 0, i32 18
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load i8*, i8** @process_event_stub, align 8
  %162 = bitcast i8* %161 to i32*
  %163 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %164 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %163, i32 0, i32 18
  store i32* %162, i32** %164, align 8
  br label %165

165:                                              ; preds = %160, %155
  %166 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %167 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %166, i32 0, i32 17
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32*, i32** @process_event_synth_attr_stub, align 8
  %172 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %173 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %172, i32 0, i32 17
  store i32* %171, i32** %173, align 8
  br label %174

174:                                              ; preds = %170, %165
  %175 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %176 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %175, i32 0, i32 16
  %177 = load i32*, i32** %176, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load i32*, i32** @process_event_synth_event_update_stub, align 8
  %181 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %182 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %181, i32 0, i32 16
  store i32* %180, i32** %182, align 8
  br label %183

183:                                              ; preds = %179, %174
  %184 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %185 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %184, i32 0, i32 15
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32*, i32** @process_event_synth_tracing_data_stub, align 8
  %190 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %191 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %190, i32 0, i32 15
  store i32* %189, i32** %191, align 8
  br label %192

192:                                              ; preds = %188, %183
  %193 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %194 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %193, i32 0, i32 14
  %195 = load i32*, i32** %194, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load i8*, i8** @process_event_op2_stub, align 8
  %199 = bitcast i8* %198 to i32*
  %200 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %201 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %200, i32 0, i32 14
  store i32* %199, i32** %201, align 8
  br label %202

202:                                              ; preds = %197, %192
  %203 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %204 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %203, i32 0, i32 12
  %205 = load i32*, i32** %204, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %207, label %221

207:                                              ; preds = %202
  %208 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %209 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %208, i32 0, i32 13
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load i32*, i32** @process_finished_round, align 8
  %214 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %215 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %214, i32 0, i32 12
  store i32* %213, i32** %215, align 8
  br label %220

216:                                              ; preds = %207
  %217 = load i32*, i32** @process_finished_round_stub, align 8
  %218 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %219 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %218, i32 0, i32 12
  store i32* %217, i32** %219, align 8
  br label %220

220:                                              ; preds = %216, %212
  br label %221

221:                                              ; preds = %220, %202
  %222 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %223 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %222, i32 0, i32 11
  %224 = load i32*, i32** %223, align 8
  %225 = icmp eq i32* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load i8*, i8** @process_event_op2_stub, align 8
  %228 = bitcast i8* %227 to i32*
  %229 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %230 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %229, i32 0, i32 11
  store i32* %228, i32** %230, align 8
  br label %231

231:                                              ; preds = %226, %221
  %232 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %233 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %232, i32 0, i32 10
  %234 = load i32*, i32** %233, align 8
  %235 = icmp eq i32* %234, null
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = load i8*, i8** @process_event_op2_stub, align 8
  %238 = bitcast i8* %237 to i32*
  %239 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %240 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %239, i32 0, i32 10
  store i32* %238, i32** %240, align 8
  br label %241

241:                                              ; preds = %236, %231
  %242 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %243 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %242, i32 0, i32 9
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i32*, i32** @process_event_auxtrace_stub, align 8
  %248 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %249 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %248, i32 0, i32 9
  store i32* %247, i32** %249, align 8
  br label %250

250:                                              ; preds = %246, %241
  %251 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %252 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %251, i32 0, i32 8
  %253 = load i32*, i32** %252, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i8*, i8** @process_event_op2_stub, align 8
  %257 = bitcast i8* %256 to i32*
  %258 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %259 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %258, i32 0, i32 8
  store i32* %257, i32** %259, align 8
  br label %260

260:                                              ; preds = %255, %250
  %261 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %262 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %261, i32 0, i32 7
  %263 = load i32*, i32** %262, align 8
  %264 = icmp eq i32* %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %260
  %266 = load i32*, i32** @process_event_thread_map_stub, align 8
  %267 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %268 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %267, i32 0, i32 7
  store i32* %266, i32** %268, align 8
  br label %269

269:                                              ; preds = %265, %260
  %270 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %271 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %270, i32 0, i32 6
  %272 = load i32*, i32** %271, align 8
  %273 = icmp eq i32* %272, null
  br i1 %273, label %274, label %278

274:                                              ; preds = %269
  %275 = load i32*, i32** @process_event_cpu_map_stub, align 8
  %276 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %277 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %276, i32 0, i32 6
  store i32* %275, i32** %277, align 8
  br label %278

278:                                              ; preds = %274, %269
  %279 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %280 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %279, i32 0, i32 5
  %281 = load i32*, i32** %280, align 8
  %282 = icmp eq i32* %281, null
  br i1 %282, label %283, label %287

283:                                              ; preds = %278
  %284 = load i32*, i32** @process_event_stat_config_stub, align 8
  %285 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %286 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %285, i32 0, i32 5
  store i32* %284, i32** %286, align 8
  br label %287

287:                                              ; preds = %283, %278
  %288 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %289 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %288, i32 0, i32 4
  %290 = load i32*, i32** %289, align 8
  %291 = icmp eq i32* %290, null
  br i1 %291, label %292, label %296

292:                                              ; preds = %287
  %293 = load i32*, i32** @process_stat_stub, align 8
  %294 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %295 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %294, i32 0, i32 4
  store i32* %293, i32** %295, align 8
  br label %296

296:                                              ; preds = %292, %287
  %297 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %298 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %297, i32 0, i32 3
  %299 = load i32*, i32** %298, align 8
  %300 = icmp eq i32* %299, null
  br i1 %300, label %301, label %305

301:                                              ; preds = %296
  %302 = load i32*, i32** @process_stat_round_stub, align 8
  %303 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %304 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %303, i32 0, i32 3
  store i32* %302, i32** %304, align 8
  br label %305

305:                                              ; preds = %301, %296
  %306 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %307 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %306, i32 0, i32 2
  %308 = load i32*, i32** %307, align 8
  %309 = icmp eq i32* %308, null
  br i1 %309, label %310, label %315

310:                                              ; preds = %305
  %311 = load i8*, i8** @process_event_op2_stub, align 8
  %312 = bitcast i8* %311 to i32*
  %313 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %314 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %313, i32 0, i32 2
  store i32* %312, i32** %314, align 8
  br label %315

315:                                              ; preds = %310, %305
  %316 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %317 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = icmp eq i32* %318, null
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = load i8*, i8** @process_event_op2_stub, align 8
  %322 = bitcast i8* %321 to i32*
  %323 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %324 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %323, i32 0, i32 1
  store i32* %322, i32** %324, align 8
  br label %325

325:                                              ; preds = %320, %315
  %326 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %327 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = icmp eq i32* %328, null
  br i1 %329, label %330, label %334

330:                                              ; preds = %325
  %331 = load i32*, i32** @perf_session__process_compressed_event, align 8
  %332 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %333 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %332, i32 0, i32 0
  store i32* %331, i32** %333, align 8
  br label %334

334:                                              ; preds = %330, %325
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
