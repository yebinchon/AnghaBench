; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_trace_kprobe_create.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_trace_kprobe_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_kprobe = type { i32 }

@KPROBE_EVENT_SYSTEM = common dso_local global i8* null, align 8
@MAX_EVENT_NAME_LEN = common dso_local global i32 0, align 4
@TPARG_FL_KERNEL = common dso_local global i32 0, align 4
@TPARG_FL_RETURN = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"trace_kprobe\00", align 1
@MAXACT_NO_KPROBE = common dso_local global i32 0, align 4
@BAD_MAXACT = common dso_local global i32 0, align 4
@KRETPROBE_MAXACTIVE_MAX = common dso_local global i32 0, align 4
@MAXACT_TOO_BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@BAD_PROBE_ADDR = common dso_local global i32 0, align 4
@TPARG_FL_FENTRY = common dso_local global i32 0, align 4
@BAD_RETPROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%c_%s_%ld\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%c_0x%p\00", align 1
@MAX_TRACE_ARGS = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@BAD_INSN_BNDRY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@FAIL_REG_PROBE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @trace_kprobe_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_kprobe_create(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.trace_kprobe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.trace_kprobe* null, %struct.trace_kprobe** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %22 = load i8*, i8** @KPROBE_EVENT_SYSTEM, align 8
  store i8* %22, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i8* null, i8** %17, align 8
  %23 = load i32, i32* @MAX_EVENT_NAME_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  %27 = load i32, i32* @TPARG_FL_KERNEL, align 4
  store i32 %27, i32* %20, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %39 [
    i32 114, label %34
    i32 112, label %38
  ]

34:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  %35 = load i32, i32* @TPARG_FL_RETURN, align 4
  %36 = load i32, i32* %20, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %20, align 4
  br label %42

38:                                               ; preds = %2
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @ECANCELED, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %374

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @ECANCELED, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %374

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = call i32 @trace_probe_log_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %49, i8** %50)
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i8* @strchr(i8* %55, i8 signext 58)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %13, align 8
  br label %62

62:                                               ; preds = %59, %48
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @isdigit(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %131

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @MAXACT_NO_KPROBE, align 4
  %75 = call i32 @trace_probe_log_err(i32 1, i32 %74)
  br label %368

76:                                               ; preds = %70
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i8*, i8** %13, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = ptrtoint i8* %80 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sub nsw i64 %87, 1
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  br label %96

90:                                               ; preds = %76
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = call i32 @strlen(i8* %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %90, %79
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @MAX_EVENT_NAME_LEN, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp sgt i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @BAD_MAXACT, align 4
  %103 = call i32 @trace_probe_log_err(i32 1, i32 %102)
  br label %368

104:                                              ; preds = %96
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @memcpy(i8* %26, i8* %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %26, i64 %112
  store i8 0, i8* %113, align 1
  %114 = call i32 @kstrtouint(i8* %26, i32 0, i32* %15)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %104
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117, %104
  %121 = load i32, i32* @BAD_MAXACT, align 4
  %122 = call i32 @trace_probe_log_err(i32 1, i32 %121)
  br label %368

123:                                              ; preds = %117
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @KRETPROBE_MAXACTIVE_MAX, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* @MAXACT_TOO_BIG, align 4
  %129 = call i32 @trace_probe_log_err(i32 1, i32 %128)
  br label %368

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %62
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  %134 = load i8*, i8** %133, align 8
  %135 = bitcast i8** %17 to i64*
  %136 = call i64 @kstrtoul(i8* %134, i32 0, i64* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %204

138:                                              ; preds = %131
  %139 = call i32 @trace_probe_log_set_index(i32 1)
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @strchr(i8* %142, i8 signext 47)
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %138
  %146 = load i8**, i8*** %5, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @strchr(i8* %148, i8 signext 58)
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32, i32* @ECANCELED, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %9, align 4
  br label %371

154:                                              ; preds = %145, %138
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 1
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call i8* @kstrdup(i8* %157, i32 %158)
  store i8* %159, i8** %11, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %154
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %374

165:                                              ; preds = %154
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @traceprobe_split_symbol_offset(i8* %166, i64* %16)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %165
  %171 = load i64, i64* %16, align 8
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = load i64, i64* %16, align 8
  %175 = load i64, i64* @UINT_MAX, align 8
  %176 = icmp sgt i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173, %170, %165
  %178 = load i32, i32* @BAD_PROBE_ADDR, align 4
  %179 = call i32 @trace_probe_log_err(i32 0, i32 %178)
  br label %368

180:                                              ; preds = %173
  %181 = load i8*, i8** %11, align 8
  %182 = load i64, i64* %16, align 8
  %183 = call i64 @kprobe_on_func_entry(i32* null, i8* %181, i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* @TPARG_FL_FENTRY, align 4
  %187 = load i32, i32* %20, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %20, align 4
  br label %189

189:                                              ; preds = %185, %180
  %190 = load i64, i64* %16, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %189
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = load i32, i32* %20, align 4
  %197 = load i32, i32* @TPARG_FL_FENTRY, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = load i32, i32* @BAD_RETPROBE, align 4
  %202 = call i32 @trace_probe_log_err(i32 0, i32 %201)
  br label %368

203:                                              ; preds = %195, %192, %189
  br label %204

204:                                              ; preds = %203, %131
  %205 = call i32 @trace_probe_log_set_index(i32 0)
  %206 = load i8*, i8** %13, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %222

208:                                              ; preds = %204
  %209 = load i8*, i8** %13, align 8
  %210 = load i8**, i8*** %5, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 0
  %212 = load i8*, i8** %211, align 8
  %213 = ptrtoint i8* %209 to i64
  %214 = ptrtoint i8* %212 to i64
  %215 = sub i64 %213, %214
  %216 = trunc i64 %215 to i32
  %217 = call i32 @traceprobe_parse_event_name(i8** %13, i8** %14, i8* %26, i32 %216)
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %208
  br label %368

221:                                              ; preds = %208
  br label %246

222:                                              ; preds = %204
  %223 = load i8*, i8** %11, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %235

225:                                              ; preds = %222
  %226 = load i32, i32* @MAX_EVENT_NAME_LEN, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp ne i32 %227, 0
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i32 114, i32 112
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %11, align 8
  %233 = load i64, i64* %16, align 8
  %234 = call i32 (i8*, i32, i8*, i8, i8*, ...) @snprintf(i8* %26, i32 %226, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 signext %231, i8* %232, i64 %233)
  br label %244

235:                                              ; preds = %222
  %236 = load i32, i32* @MAX_EVENT_NAME_LEN, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 114, i32 112
  %241 = trunc i32 %240 to i8
  %242 = load i8*, i8** %17, align 8
  %243 = call i32 (i8*, i32, i8*, i8, i8*, ...) @snprintf(i8* %26, i32 %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8 signext %241, i8* %242)
  br label %244

244:                                              ; preds = %235, %225
  %245 = call i32 @sanitize_event_name(i8* %26)
  store i8* %26, i8** %13, align 8
  br label %246

246:                                              ; preds = %244, %221
  %247 = load i8*, i8** %14, align 8
  %248 = load i8*, i8** %13, align 8
  %249 = load i8*, i8** %17, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = load i64, i64* %16, align 8
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* %4, align 4
  %254 = sub nsw i32 %253, 2
  %255 = load i32, i32* %10, align 4
  %256 = call %struct.trace_kprobe* @alloc_trace_kprobe(i8* %247, i8* %248, i8* %249, i8* %250, i64 %251, i32 %252, i32 %254, i32 %255)
  store %struct.trace_kprobe* %256, %struct.trace_kprobe** %6, align 8
  %257 = load %struct.trace_kprobe*, %struct.trace_kprobe** %6, align 8
  %258 = call i64 @IS_ERR(%struct.trace_kprobe* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %246
  %261 = load %struct.trace_kprobe*, %struct.trace_kprobe** %6, align 8
  %262 = call i32 @PTR_ERR(%struct.trace_kprobe* %261)
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* @ENOMEM, align 4
  %265 = sub nsw i32 0, %264
  %266 = icmp ne i32 %263, %265
  %267 = zext i1 %266 to i32
  %268 = call i32 @WARN_ON_ONCE(i32 %267)
  br label %363

269:                                              ; preds = %246
  %270 = load i32, i32* %4, align 4
  %271 = sub nsw i32 %270, 2
  store i32 %271, i32* %4, align 4
  %272 = load i8**, i8*** %5, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 2
  store i8** %273, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %274

274:                                              ; preds = %313, %269
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* %4, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %274
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* @MAX_TRACE_ARGS, align 4
  %281 = icmp slt i32 %279, %280
  br label %282

282:                                              ; preds = %278, %274
  %283 = phi i1 [ false, %274 ], [ %281, %278 ]
  br i1 %283, label %284, label %316

284:                                              ; preds = %282
  %285 = load i8**, i8*** %5, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8*, i8** %285, i64 %287
  %289 = load i8*, i8** %288, align 8
  %290 = load i32, i32* @GFP_KERNEL, align 4
  %291 = call i8* @kstrdup(i8* %289, i32 %290)
  store i8* %291, i8** %12, align 8
  %292 = load i8*, i8** %12, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %284
  %295 = load i32, i32* @ENOMEM, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %9, align 4
  br label %371

297:                                              ; preds = %284
  %298 = load i32, i32* %7, align 4
  %299 = add nsw i32 %298, 2
  %300 = call i32 @trace_probe_log_set_index(i32 %299)
  %301 = load %struct.trace_kprobe*, %struct.trace_kprobe** %6, align 8
  %302 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %301, i32 0, i32 0
  %303 = load i32, i32* %7, align 4
  %304 = load i8*, i8** %12, align 8
  %305 = load i32, i32* %20, align 4
  %306 = call i32 @traceprobe_parse_probe_arg(i32* %302, i32 %303, i8* %304, i32 %305)
  store i32 %306, i32* %9, align 4
  %307 = load i8*, i8** %12, align 8
  %308 = call i32 @kfree(i8* %307)
  %309 = load i32, i32* %9, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %297
  br label %371

312:                                              ; preds = %297
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %7, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %7, align 4
  br label %274

316:                                              ; preds = %282
  %317 = load %struct.trace_kprobe*, %struct.trace_kprobe** %6, align 8
  %318 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %317, i32 0, i32 0
  %319 = load i32, i32* %10, align 4
  %320 = call i32 @traceprobe_set_print_fmt(i32* %318, i32 %319)
  store i32 %320, i32* %9, align 4
  %321 = load i32, i32* %9, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %316
  br label %371

324:                                              ; preds = %316
  %325 = load %struct.trace_kprobe*, %struct.trace_kprobe** %6, align 8
  %326 = call i32 @register_trace_kprobe(%struct.trace_kprobe* %325)
  store i32 %326, i32* %9, align 4
  %327 = load i32, i32* %9, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %362

329:                                              ; preds = %324
  %330 = call i32 @trace_probe_log_set_index(i32 1)
  %331 = load i32, i32* %9, align 4
  %332 = load i32, i32* @EILSEQ, align 4
  %333 = sub nsw i32 0, %332
  %334 = icmp eq i32 %331, %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %329
  %336 = load i32, i32* @BAD_INSN_BNDRY, align 4
  %337 = call i32 @trace_probe_log_err(i32 0, i32 %336)
  br label %361

338:                                              ; preds = %329
  %339 = load i32, i32* %9, align 4
  %340 = load i32, i32* @ENOENT, align 4
  %341 = sub nsw i32 0, %340
  %342 = icmp eq i32 %339, %341
  br i1 %342, label %343, label %346

343:                                              ; preds = %338
  %344 = load i32, i32* @BAD_PROBE_ADDR, align 4
  %345 = call i32 @trace_probe_log_err(i32 0, i32 %344)
  br label %360

346:                                              ; preds = %338
  %347 = load i32, i32* %9, align 4
  %348 = load i32, i32* @ENOMEM, align 4
  %349 = sub nsw i32 0, %348
  %350 = icmp ne i32 %347, %349
  br i1 %350, label %351, label %359

351:                                              ; preds = %346
  %352 = load i32, i32* %9, align 4
  %353 = load i32, i32* @EEXIST, align 4
  %354 = sub nsw i32 0, %353
  %355 = icmp ne i32 %352, %354
  br i1 %355, label %356, label %359

356:                                              ; preds = %351
  %357 = load i32, i32* @FAIL_REG_PROBE, align 4
  %358 = call i32 @trace_probe_log_err(i32 0, i32 %357)
  br label %359

359:                                              ; preds = %356, %351, %346
  br label %360

360:                                              ; preds = %359, %343
  br label %361

361:                                              ; preds = %360, %335
  br label %371

362:                                              ; preds = %324
  br label %363

363:                                              ; preds = %371, %362, %260
  %364 = call i32 (...) @trace_probe_log_clear()
  %365 = load i8*, i8** %11, align 8
  %366 = call i32 @kfree(i8* %365)
  %367 = load i32, i32* %9, align 4
  store i32 %367, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %374

368:                                              ; preds = %220, %200, %177, %127, %120, %101, %73
  %369 = load i32, i32* @EINVAL, align 4
  %370 = sub nsw i32 0, %369
  store i32 %370, i32* %9, align 4
  br label %371

371:                                              ; preds = %368, %361, %323, %311, %294, %151
  %372 = load %struct.trace_kprobe*, %struct.trace_kprobe** %6, align 8
  %373 = call i32 @free_trace_kprobe(%struct.trace_kprobe* %372)
  br label %363

374:                                              ; preds = %363, %162, %45, %39
  %375 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %375)
  %376 = load i32, i32* %3, align 4
  ret i32 %376
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_probe_log_init(i8*, i32, i8**) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i32 @trace_probe_log_err(i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #2

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #2

declare dso_local i32 @trace_probe_log_set_index(i32) #2

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i32 @traceprobe_split_symbol_offset(i8*, i64*) #2

declare dso_local i64 @kprobe_on_func_entry(i32*, i8*, i64) #2

declare dso_local i32 @traceprobe_parse_event_name(i8**, i8**, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i8*, ...) #2

declare dso_local i32 @sanitize_event_name(i8*) #2

declare dso_local %struct.trace_kprobe* @alloc_trace_kprobe(i8*, i8*, i8*, i8*, i64, i32, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.trace_kprobe*) #2

declare dso_local i32 @PTR_ERR(%struct.trace_kprobe*) #2

declare dso_local i32 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @traceprobe_parse_probe_arg(i32*, i32, i8*, i32) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @traceprobe_set_print_fmt(i32*, i32) #2

declare dso_local i32 @register_trace_kprobe(%struct.trace_kprobe*) #2

declare dso_local i32 @trace_probe_log_clear(...) #2

declare dso_local i32 @free_trace_kprobe(%struct.trace_kprobe*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
