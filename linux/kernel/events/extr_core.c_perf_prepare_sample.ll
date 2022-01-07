; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_prepare_sample.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_prepare_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_header = type { i64, i32, i32 }
%struct.perf_sample_data = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_6__*, %struct.perf_raw_record*, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.perf_raw_record = type { i32, %struct.perf_raw_frag }
%struct.perf_raw_frag = type { i64, %struct.perf_raw_frag*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.perf_event = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.pt_regs = type { i32 }

@PERF_RECORD_SAMPLE = common dso_local global i32 0, align 4
@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@__PERF_SAMPLE_CALLCHAIN_EARLY = common dso_local global i32 0, align 4
@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_STACK = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_USER = common dso_local global i32 0, align 4
@PERF_SAMPLE_STACK_USER = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_INTR = common dso_local global i32 0, align 4
@PERF_SAMPLE_PHYS_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_prepare_sample(%struct.perf_event_header* %0, %struct.perf_sample_data* %1, %struct.perf_event* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca %struct.perf_event_header*, align 8
  %6 = alloca %struct.perf_sample_data*, align 8
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.perf_raw_record*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.perf_raw_frag*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.perf_event_header* %0, %struct.perf_event_header** %5, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %6, align 8
  store %struct.perf_event* %2, %struct.perf_event** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @PERF_RECORD_SAMPLE, align 4
  %27 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %28 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 16, %31
  %33 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %34 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %36 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %35, i32 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %38 = call i32 @perf_misc_flags(%struct.pt_regs* %37)
  %39 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %40 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %44 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %45 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %46 = call i32 @__perf_event_header__init_id(%struct.perf_event_header* %43, %struct.perf_sample_data* %44, %struct.perf_event* %45)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %53 = call i32 @perf_instruction_pointer(%struct.pt_regs* %52)
  %54 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %55 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %56
  store i32 1, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @__PERF_SAMPLE_CALLCHAIN_EARLY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %68 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %69 = call %struct.TYPE_10__* @perf_callchain(%struct.perf_event* %67, %struct.pt_regs* %68)
  %70 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %71 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %70, i32 0, i32 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %71, align 8
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %74 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %73, i32 0, i32 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %86 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %72, %56
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %144

94:                                               ; preds = %89
  %95 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %96 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %95, i32 0, i32 7
  %97 = load %struct.perf_raw_record*, %struct.perf_raw_record** %96, align 8
  store %struct.perf_raw_record* %97, %struct.perf_raw_record** %11, align 8
  %98 = load %struct.perf_raw_record*, %struct.perf_raw_record** %11, align 8
  %99 = icmp ne %struct.perf_raw_record* %98, null
  br i1 %99, label %100, label %136

100:                                              ; preds = %94
  %101 = load %struct.perf_raw_record*, %struct.perf_raw_record** %11, align 8
  %102 = getelementptr inbounds %struct.perf_raw_record, %struct.perf_raw_record* %101, i32 0, i32 1
  store %struct.perf_raw_frag* %102, %struct.perf_raw_frag** %13, align 8
  store i64 0, i64* %14, align 8
  br label %103

103:                                              ; preds = %117, %100
  %104 = load %struct.perf_raw_frag*, %struct.perf_raw_frag** %13, align 8
  %105 = getelementptr inbounds %struct.perf_raw_frag, %struct.perf_raw_frag* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %14, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %14, align 8
  %109 = load %struct.perf_raw_frag*, %struct.perf_raw_frag** %13, align 8
  %110 = call i64 @perf_raw_frag_last(%struct.perf_raw_frag* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %118

113:                                              ; preds = %103
  %114 = load %struct.perf_raw_frag*, %struct.perf_raw_frag** %13, align 8
  %115 = getelementptr inbounds %struct.perf_raw_frag, %struct.perf_raw_frag* %114, i32 0, i32 1
  %116 = load %struct.perf_raw_frag*, %struct.perf_raw_frag** %115, align 8
  store %struct.perf_raw_frag* %116, %struct.perf_raw_frag** %13, align 8
  br label %117

117:                                              ; preds = %113
  br i1 true, label %103, label %118

118:                                              ; preds = %117, %112
  %119 = load i64, i64* %14, align 8
  %120 = add i64 %119, 8
  %121 = call i32 @round_up(i64 %120, i32 4)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = sub i64 %123, 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.perf_raw_record*, %struct.perf_raw_record** %11, align 8
  %127 = getelementptr inbounds %struct.perf_raw_record, %struct.perf_raw_record* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.perf_raw_record*, %struct.perf_raw_record** %11, align 8
  %129 = getelementptr inbounds %struct.perf_raw_record, %struct.perf_raw_record* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %14, align 8
  %133 = sub nsw i64 %131, %132
  %134 = load %struct.perf_raw_frag*, %struct.perf_raw_frag** %13, align 8
  %135 = getelementptr inbounds %struct.perf_raw_frag, %struct.perf_raw_frag* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %137

136:                                              ; preds = %94
  store i32 4, i32* %12, align 4
  br label %137

137:                                              ; preds = %136, %118
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %141 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, %139
  store i64 %143, i64* %141, align 8
  br label %144

144:                                              ; preds = %137, %89
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %144
  store i32 4, i32* %15, align 4
  %150 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %151 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %150, i32 0, i32 6
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = icmp ne %struct.TYPE_6__* %152, null
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %156 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %155, i32 0, i32 6
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %15, align 4
  br label %166

166:                                              ; preds = %154, %149
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %170 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, %168
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %166, %144
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @PERF_SAMPLE_REGS_USER, align 4
  %176 = load i32, i32* @PERF_SAMPLE_STACK_USER, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %173
  %181 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %182 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %181, i32 0, i32 4
  %183 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %184 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %185 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %184, i32 0, i32 5
  %186 = call i32 @perf_sample_regs_user(%struct.TYPE_8__* %182, %struct.pt_regs* %183, i32* %185)
  br label %187

187:                                              ; preds = %180, %173
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @PERF_SAMPLE_REGS_USER, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %218

192:                                              ; preds = %187
  store i32 4, i32* %16, align 4
  %193 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %194 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %192
  %199 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %200 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %17, align 4
  %204 = call i32 @hweight64(i32 %203)
  %205 = sext i32 %204 to i64
  %206 = mul i64 %205, 4
  %207 = load i32, i32* %16, align 4
  %208 = sext i32 %207 to i64
  %209 = add i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %16, align 4
  br label %211

211:                                              ; preds = %198, %192
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %215 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, %213
  store i64 %217, i64* %215, align 8
  br label %218

218:                                              ; preds = %211, %187
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @PERF_SAMPLE_STACK_USER, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %257

223:                                              ; preds = %218
  %224 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %225 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %18, align 4
  store i32 4, i32* %19, align 4
  %228 = load i32, i32* %18, align 4
  %229 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %230 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %233 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @perf_sample_ustack_size(i32 %228, i64 %231, i64 %235)
  store i32 %236, i32* %18, align 4
  %237 = load i32, i32* %18, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %223
  %240 = load i32, i32* %18, align 4
  %241 = sext i32 %240 to i64
  %242 = add i64 4, %241
  %243 = load i32, i32* %19, align 4
  %244 = sext i32 %243 to i64
  %245 = add i64 %244, %242
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %19, align 4
  br label %247

247:                                              ; preds = %239, %223
  %248 = load i32, i32* %18, align 4
  %249 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %250 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* %19, align 4
  %252 = sext i32 %251 to i64
  %253 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %254 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, %252
  store i64 %256, i64* %254, align 8
  br label %257

257:                                              ; preds = %247, %218
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* @PERF_SAMPLE_REGS_INTR, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %292

262:                                              ; preds = %257
  store i32 4, i32* %20, align 4
  %263 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %264 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %263, i32 0, i32 3
  %265 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %266 = call i32 @perf_sample_regs_intr(%struct.TYPE_9__* %264, %struct.pt_regs* %265)
  %267 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %268 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %285

272:                                              ; preds = %262
  %273 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %274 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %21, align 4
  %277 = load i32, i32* %21, align 4
  %278 = call i32 @hweight64(i32 %277)
  %279 = sext i32 %278 to i64
  %280 = mul i64 %279, 4
  %281 = load i32, i32* %20, align 4
  %282 = sext i32 %281 to i64
  %283 = add i64 %282, %280
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %20, align 4
  br label %285

285:                                              ; preds = %272, %262
  %286 = load i32, i32* %20, align 4
  %287 = sext i32 %286 to i64
  %288 = load %struct.perf_event_header*, %struct.perf_event_header** %5, align 8
  %289 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, %287
  store i64 %291, i64* %289, align 8
  br label %292

292:                                              ; preds = %285, %257
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* @PERF_SAMPLE_PHYS_ADDR, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %292
  %298 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %299 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @perf_virt_to_phys(i32 %300)
  %302 = load %struct.perf_sample_data*, %struct.perf_sample_data** %6, align 8
  %303 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %302, i32 0, i32 2
  store i32 %301, i32* %303, align 8
  br label %304

304:                                              ; preds = %297, %292
  ret void
}

declare dso_local i32 @perf_misc_flags(%struct.pt_regs*) #1

declare dso_local i32 @__perf_event_header__init_id(%struct.perf_event_header*, %struct.perf_sample_data*, %struct.perf_event*) #1

declare dso_local i32 @perf_instruction_pointer(%struct.pt_regs*) #1

declare dso_local %struct.TYPE_10__* @perf_callchain(%struct.perf_event*, %struct.pt_regs*) #1

declare dso_local i64 @perf_raw_frag_last(%struct.perf_raw_frag*) #1

declare dso_local i32 @round_up(i64, i32) #1

declare dso_local i32 @perf_sample_regs_user(%struct.TYPE_8__*, %struct.pt_regs*, i32*) #1

declare dso_local i32 @hweight64(i32) #1

declare dso_local i32 @perf_sample_ustack_size(i32, i64, i64) #1

declare dso_local i32 @perf_sample_regs_intr(%struct.TYPE_9__*, %struct.pt_regs*) #1

declare dso_local i32 @perf_virt_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
