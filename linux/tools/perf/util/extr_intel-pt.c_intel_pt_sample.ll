; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.intel_pt_state*, i32, %struct.intel_pt* }
%struct.intel_pt_state = type { i64, i32, i64, i64, i32, i32, i32 }
%struct.intel_pt = type { i64, %struct.TYPE_2__, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@INTEL_PT_BLK_ITEMS = common dso_local global i32 0, align 4
@INTEL_PT_PWR_EVT = common dso_local global i32 0, align 4
@INTEL_PT_MWAIT_OP = common dso_local global i32 0, align 4
@INTEL_PT_PWR_ENTRY = common dso_local global i32 0, align 4
@INTEL_PT_EX_STOP = common dso_local global i32 0, align 4
@INTEL_PT_PWR_EXIT = common dso_local global i32 0, align 4
@INTEL_PT_INSTRUCTION = common dso_local global i32 0, align 4
@INTEL_PT_TRANSACTION = common dso_local global i32 0, align 4
@INTEL_PT_PTW = common dso_local global i32 0, align 4
@INTEL_PT_BRANCH = common dso_local global i32 0, align 4
@INTEL_PT_SS_TRACING = common dso_local global i8* null, align 8
@INTEL_PT_SS_EXPECTING_SWITCH_EVENT = common dso_local global i32 0, align 4
@PERF_IP_FLAG_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_queue*)* @intel_pt_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_sample(%struct.intel_pt_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_queue*, align 8
  %4 = alloca %struct.intel_pt_state*, align 8
  %5 = alloca %struct.intel_pt*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %3, align 8
  %7 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %8 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %7, i32 0, i32 9
  %9 = load %struct.intel_pt_state*, %struct.intel_pt_state** %8, align 8
  store %struct.intel_pt_state* %9, %struct.intel_pt_state** %4, align 8
  %10 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %11 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %10, i32 0, i32 11
  %12 = load %struct.intel_pt*, %struct.intel_pt** %11, align 8
  store %struct.intel_pt* %12, %struct.intel_pt** %5, align 8
  %13 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %14 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %373

18:                                               ; preds = %1
  %19 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %20 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %22 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %21, i32 0, i32 9
  %23 = load %struct.intel_pt_state*, %struct.intel_pt_state** %22, align 8
  %24 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %27 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %18
  %31 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %32 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %31, i32 0, i32 9
  %33 = load %struct.intel_pt_state*, %struct.intel_pt_state** %32, align 8
  %34 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %37 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 8
  %38 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %39 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %38, i32 0, i32 9
  %40 = load %struct.intel_pt_state*, %struct.intel_pt_state** %39, align 8
  %41 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %44 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %30, %18
  %46 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %47 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %52 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @INTEL_PT_BLK_ITEMS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %59 = call i32 @intel_pt_synth_pebs_sample(%struct.intel_pt_queue* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %373

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %50, %45
  %66 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %67 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %157

70:                                               ; preds = %65
  %71 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %72 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %71, i32 0, i32 9
  %73 = load %struct.intel_pt_state*, %struct.intel_pt_state** %72, align 8
  %74 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %77 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %70
  %81 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %82 = call i32 @intel_pt_synth_cbr_sample(%struct.intel_pt_queue* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %373

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %70
  %89 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %90 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @INTEL_PT_PWR_EVT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %156

95:                                               ; preds = %88
  %96 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %97 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @INTEL_PT_MWAIT_OP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %104 = call i32 @intel_pt_synth_mwait_sample(%struct.intel_pt_queue* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %373

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %95
  %111 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %112 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @INTEL_PT_PWR_ENTRY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %119 = call i32 @intel_pt_synth_pwre_sample(%struct.intel_pt_queue* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %373

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %110
  %126 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %127 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @INTEL_PT_EX_STOP, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %134 = call i32 @intel_pt_synth_exstop_sample(%struct.intel_pt_queue* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %2, align 4
  br label %373

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %125
  %141 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %142 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @INTEL_PT_PWR_EXIT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %140
  %148 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %149 = call i32 @intel_pt_synth_pwrx_sample(%struct.intel_pt_queue* %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %373

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %140
  br label %156

156:                                              ; preds = %155, %88
  br label %157

157:                                              ; preds = %156, %65
  %158 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %159 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %157
  %163 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %164 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @INTEL_PT_INSTRUCTION, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %162
  %170 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %171 = call i32 @intel_pt_synth_instruction_sample(%struct.intel_pt_queue* %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %2, align 4
  br label %373

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176, %162, %157
  %178 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %179 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %197

182:                                              ; preds = %177
  %183 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %184 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @INTEL_PT_TRANSACTION, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %182
  %190 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %191 = call i32 @intel_pt_synth_transaction_sample(%struct.intel_pt_queue* %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %2, align 4
  br label %373

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %182, %177
  %198 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %199 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %217

202:                                              ; preds = %197
  %203 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %204 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @INTEL_PT_PTW, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %202
  %210 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %211 = call i32 @intel_pt_synth_ptwrite_sample(%struct.intel_pt_queue* %210)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* %6, align 4
  store i32 %215, i32* %2, align 4
  br label %373

216:                                              ; preds = %209
  br label %217

217:                                              ; preds = %216, %202, %197
  %218 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %219 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @INTEL_PT_BRANCH, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %217
  store i32 0, i32* %2, align 4
  br label %373

225:                                              ; preds = %217
  %226 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %227 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %225
  %232 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %233 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %260

237:                                              ; preds = %231, %225
  %238 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %239 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %242 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %245 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %248 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %251 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %254 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %253, i32 0, i32 8
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %257 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @thread_stack__event(i32 %240, i32 %243, i32 %246, i32 %249, i64 %252, i32 %255, i32 %258)
  br label %271

260:                                              ; preds = %231
  %261 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %262 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %261, i32 0, i32 7
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %265 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %268 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @thread_stack__set_trace_nr(i32 %263, i32 %266, i32 %269)
  br label %271

271:                                              ; preds = %260, %237
  %272 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %273 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %271
  %277 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %278 = call i32 @intel_pt_synth_branch_sample(%struct.intel_pt_queue* %277)
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %6, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %276
  %282 = load i32, i32* %6, align 4
  store i32 %282, i32* %2, align 4
  br label %373

283:                                              ; preds = %276
  br label %284

284:                                              ; preds = %283, %271
  %285 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %286 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %284
  %291 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %292 = call i32 @intel_pt_update_last_branch_rb(%struct.intel_pt_queue* %291)
  br label %293

293:                                              ; preds = %290, %284
  %294 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %295 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %293
  store i32 0, i32* %2, align 4
  br label %373

299:                                              ; preds = %293
  %300 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %301 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %302 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %301, i32 0, i32 3
  %303 = load i64, i64* %302, align 8
  %304 = call i64 @intel_pt_is_switch_ip(%struct.intel_pt_queue* %300, i64 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %328

306:                                              ; preds = %299
  %307 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %308 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  switch i32 %309, label %323 [
    i32 129, label %310
    i32 128, label %310
    i32 130, label %310
  ]

310:                                              ; preds = %306, %306, %306
  %311 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %312 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %313 = call i32 @intel_pt_next_tid(%struct.intel_pt* %311, %struct.intel_pt_queue* %312)
  store i32 %313, i32* %6, align 4
  %314 = load i32, i32* %6, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %310
  %317 = load i32, i32* %6, align 4
  store i32 %317, i32* %2, align 4
  br label %373

318:                                              ; preds = %310
  %319 = load i8*, i8** @INTEL_PT_SS_TRACING, align 8
  %320 = ptrtoint i8* %319 to i32
  %321 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %322 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %321, i32 0, i32 4
  store i32 %320, i32* %322, align 4
  br label %327

323:                                              ; preds = %306
  %324 = load i32, i32* @INTEL_PT_SS_EXPECTING_SWITCH_EVENT, align 4
  %325 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %326 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %325, i32 0, i32 4
  store i32 %324, i32* %326, align 4
  store i32 1, i32* %2, align 4
  br label %373

327:                                              ; preds = %318
  br label %372

328:                                              ; preds = %299
  %329 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %330 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %328
  %334 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %335 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %334, i32 0, i32 4
  store i32 129, i32* %335, align 4
  br label %371

336:                                              ; preds = %328
  %337 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %338 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 %339, 129
  br i1 %340, label %341, label %344

341:                                              ; preds = %336
  %342 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %343 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %342, i32 0, i32 4
  store i32 128, i32* %343, align 4
  br label %370

344:                                              ; preds = %336
  %345 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %346 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = icmp eq i32 %347, 128
  br i1 %348, label %349, label %369

349:                                              ; preds = %344
  %350 = load %struct.intel_pt_state*, %struct.intel_pt_state** %4, align 8
  %351 = getelementptr inbounds %struct.intel_pt_state, %struct.intel_pt_state* %350, i32 0, i32 3
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %354 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = icmp eq i64 %352, %355
  br i1 %356, label %357, label %369

357:                                              ; preds = %349
  %358 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %359 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @PERF_IP_FLAG_CALL, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %357
  %365 = load i8*, i8** @INTEL_PT_SS_TRACING, align 8
  %366 = ptrtoint i8* %365 to i32
  %367 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %368 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %367, i32 0, i32 4
  store i32 %366, i32* %368, align 4
  br label %369

369:                                              ; preds = %364, %357, %349, %344
  br label %370

370:                                              ; preds = %369, %341
  br label %371

371:                                              ; preds = %370, %333
  br label %372

372:                                              ; preds = %371, %327
  store i32 0, i32* %2, align 4
  br label %373

373:                                              ; preds = %372, %323, %316, %298, %281, %224, %214, %194, %174, %152, %137, %122, %107, %85, %62, %17
  %374 = load i32, i32* %2, align 4
  ret i32 %374
}

declare dso_local i32 @intel_pt_synth_pebs_sample(%struct.intel_pt_queue*) #1

declare dso_local i32 @intel_pt_synth_cbr_sample(%struct.intel_pt_queue*) #1

declare dso_local i32 @intel_pt_synth_mwait_sample(%struct.intel_pt_queue*) #1

declare dso_local i32 @intel_pt_synth_pwre_sample(%struct.intel_pt_queue*) #1

declare dso_local i32 @intel_pt_synth_exstop_sample(%struct.intel_pt_queue*) #1

declare dso_local i32 @intel_pt_synth_pwrx_sample(%struct.intel_pt_queue*) #1

declare dso_local i32 @intel_pt_synth_instruction_sample(%struct.intel_pt_queue*) #1

declare dso_local i32 @intel_pt_synth_transaction_sample(%struct.intel_pt_queue*) #1

declare dso_local i32 @intel_pt_synth_ptwrite_sample(%struct.intel_pt_queue*) #1

declare dso_local i32 @thread_stack__event(i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @thread_stack__set_trace_nr(i32, i32, i32) #1

declare dso_local i32 @intel_pt_synth_branch_sample(%struct.intel_pt_queue*) #1

declare dso_local i32 @intel_pt_update_last_branch_rb(%struct.intel_pt_queue*) #1

declare dso_local i64 @intel_pt_is_switch_ip(%struct.intel_pt_queue*, i64) #1

declare dso_local i32 @intel_pt_next_tid(%struct.intel_pt*, %struct.intel_pt_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
