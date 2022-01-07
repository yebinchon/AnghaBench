; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_delta_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_delta_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.msr_counter* }
%struct.msr_counter = type { i64, %struct.msr_counter* }
%struct.thread_data = type { i32, i32, i64, i32, i32, i64*, i64, i64, i32, i32, i32, i32, i32 }
%struct.core_data = type { i32, i32, i32 }

@BIC_APIC = common dso_local global i32 0, align 4
@BIC_X2APIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [152 x i8] c"Insanely slow TSC rate, TSC stops in idle?\0AYou can disable all c-states by booting with \22idle=poll\22\0Aor just the deep ones with \22processor.max_cstate=1\22\00", align 1
@BIC_Avg_MHz = common dso_local global i32 0, align 4
@BIC_Busy = common dso_local global i32 0, align 4
@BIC_Bzy_MHz = common dso_local global i32 0, align 4
@use_c1_residency_msr = common dso_local global i64 0, align 8
@tsc_tweak = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cpu%d MPERF 0!\0A\00", align 1
@BIC_IRQ = common dso_local global i32 0, align 4
@BIC_SMI = common dso_local global i32 0, align 4
@sys = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FORMAT_RAW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delta_thread(%struct.thread_data* %0, %struct.thread_data* %1, %struct.core_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_data*, align 8
  %6 = alloca %struct.thread_data*, align 8
  %7 = alloca %struct.core_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.msr_counter*, align 8
  store %struct.thread_data* %0, %struct.thread_data** %5, align 8
  store %struct.thread_data* %1, %struct.thread_data** %6, align 8
  store %struct.core_data* %2, %struct.core_data** %7, align 8
  %10 = load i32, i32* @BIC_APIC, align 4
  %11 = call i64 @DO_BIC(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %15 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %18 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %17, i32 0, i32 12
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @BIC_X2APIC, align 4
  %21 = call i64 @DO_BIC(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %25 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %28 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %27, i32 0, i32 11
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %31 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %30, i32 0, i32 9
  %32 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %33 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %32, i32 0, i32 9
  %34 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %35 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %34, i32 0, i32 10
  %36 = call i32 @timersub(i32* %31, i32* %33, i32* %35)
  %37 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %38 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %41 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 4
  %42 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %43 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %46 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %48 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %51 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %49, %52
  %54 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %55 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %57 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 1000000
  br i1 %59, label %60, label %62

60:                                               ; preds = %29
  %61 = call i32 @errx(i32 -3, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %29
  %63 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %64 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %67 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  %70 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %71 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @BIC_Avg_MHz, align 4
  %73 = call i64 @DO_BIC(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* @BIC_Busy, align 4
  %77 = call i64 @DO_BIC(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @BIC_Bzy_MHz, align 4
  %81 = call i64 @DO_BIC(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @BIC_Avg_MHz, align 4
  %85 = call i64 @soft_c1_residency_display(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %83, %79, %75, %62
  %88 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %89 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %92 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %87
  %96 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %97 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %100 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %98, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %95
  %104 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %105 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %108 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %112 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %114 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %117 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %115, %118
  %120 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %121 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  br label %123

122:                                              ; preds = %95, %87
  store i32 -1, i32* %4, align 4
  br label %278

123:                                              ; preds = %103
  br label %124

124:                                              ; preds = %123, %83
  %125 = load i64, i64* @use_c1_residency_msr, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %178

128:                                              ; preds = %124
  %129 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %130 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.core_data*, %struct.core_data** %7, align 8
  %133 = getelementptr inbounds %struct.core_data, %struct.core_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %131, %134
  %136 = load %struct.core_data*, %struct.core_data** %7, align 8
  %137 = getelementptr inbounds %struct.core_data, %struct.core_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = load %struct.core_data*, %struct.core_data** %7, align 8
  %141 = getelementptr inbounds %struct.core_data, %struct.core_data* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %145 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @tsc_tweak, align 4
  %148 = mul nsw i32 %146, %147
  %149 = icmp sgt i32 %143, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %128
  %151 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %152 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  br label %177

153:                                              ; preds = %128
  %154 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %155 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @tsc_tweak, align 4
  %158 = mul nsw i32 %156, %157
  %159 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %160 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %158, %161
  %163 = load %struct.core_data*, %struct.core_data** %7, align 8
  %164 = getelementptr inbounds %struct.core_data, %struct.core_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %162, %165
  %167 = load %struct.core_data*, %struct.core_data** %7, align 8
  %168 = getelementptr inbounds %struct.core_data, %struct.core_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %166, %169
  %171 = load %struct.core_data*, %struct.core_data** %7, align 8
  %172 = getelementptr inbounds %struct.core_data, %struct.core_data* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %170, %173
  %175 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %176 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %153, %150
  br label %178

178:                                              ; preds = %177, %127
  %179 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %180 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %178
  %184 = load i32, i32* @debug, align 4
  %185 = icmp sgt i32 %184, 1
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load i32, i32* @outf, align 4
  %188 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %189 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @fprintf(i32 %187, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %186, %183
  %193 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %194 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %193, i32 0, i32 3
  store i32 1, i32* %194, align 8
  br label %195

195:                                              ; preds = %192, %178
  %196 = load i32, i32* @BIC_IRQ, align 4
  %197 = call i64 @DO_BIC(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %195
  %200 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %201 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %204 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %203, i32 0, i32 7
  %205 = load i64, i64* %204, align 8
  %206 = sub nsw i64 %202, %205
  %207 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %208 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %207, i32 0, i32 7
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %199, %195
  %210 = load i32, i32* @BIC_SMI, align 4
  %211 = call i64 @DO_BIC(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %209
  %214 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %215 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %214, i32 0, i32 6
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %218 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = sub nsw i64 %216, %219
  %221 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %222 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %221, i32 0, i32 6
  store i64 %220, i64* %222, align 8
  br label %223

223:                                              ; preds = %213, %209
  store i32 0, i32* %8, align 4
  %224 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 0), align 8
  store %struct.msr_counter* %224, %struct.msr_counter** %9, align 8
  br label %225

225:                                              ; preds = %271, %223
  %226 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %227 = icmp ne %struct.msr_counter* %226, null
  br i1 %227, label %228, label %277

228:                                              ; preds = %225
  %229 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %230 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @FORMAT_RAW, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %248

234:                                              ; preds = %228
  %235 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %236 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %235, i32 0, i32 5
  %237 = load i64*, i64** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %243 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %242, i32 0, i32 5
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  store i64 %241, i64* %247, align 8
  br label %270

248:                                              ; preds = %228
  %249 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %250 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %249, i32 0, i32 5
  %251 = load i64*, i64** %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64, i64* %251, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %257 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %256, i32 0, i32 5
  %258 = load i64*, i64** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %258, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = sub nsw i64 %255, %262
  %264 = load %struct.thread_data*, %struct.thread_data** %6, align 8
  %265 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %264, i32 0, i32 5
  %266 = load i64*, i64** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  store i64 %263, i64* %269, align 8
  br label %270

270:                                              ; preds = %248, %234
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %8, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %8, align 4
  %274 = load %struct.msr_counter*, %struct.msr_counter** %9, align 8
  %275 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %274, i32 0, i32 1
  %276 = load %struct.msr_counter*, %struct.msr_counter** %275, align 8
  store %struct.msr_counter* %276, %struct.msr_counter** %9, align 8
  br label %225

277:                                              ; preds = %225
  store i32 0, i32* %4, align 4
  br label %278

278:                                              ; preds = %277, %122
  %279 = load i32, i32* %4, align 4
  ret i32 %279
}

declare dso_local i64 @DO_BIC(i32) #1

declare dso_local i32 @timersub(i32*, i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @soft_c1_residency_display(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
