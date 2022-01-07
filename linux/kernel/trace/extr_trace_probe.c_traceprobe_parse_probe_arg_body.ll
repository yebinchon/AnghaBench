; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_parse_probe_arg_body.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_parse_probe_arg_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_arg = type { i64, i32, i32, i8*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.fetch_insn = type { i64, i32, i32, %struct.fetch_insn* }

@MAX_ARGSTR_LEN = common dso_local global i32 0, align 4
@ARG_TOO_LONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NO_ARG_BODY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ARRAY_NO_CLOSE = common dso_local global i32 0, align 4
@BAD_ARRAY_SUFFIX = common dso_local global i32 0, align 4
@BAD_ARRAY_NUM = common dso_local global i32 0, align 4
@MAX_ARRAY_LEN = common dso_local global i64 0, align 8
@ARRAY_TOO_BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"$comm\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@BAD_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@FETCH_INSN_MAX = common dso_local global i32 0, align 4
@FETCH_OP_END = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"ustring\00", align 1
@FETCH_OP_DEREF = common dso_local global i64 0, align 8
@FETCH_OP_UDEREF = common dso_local global i64 0, align 8
@FETCH_OP_IMM = common dso_local global i64 0, align 8
@FETCH_OP_COMM = common dso_local global i64 0, align 8
@FETCH_OP_DATA = common dso_local global i64 0, align 8
@BAD_STRING = common dso_local global i32 0, align 4
@FETCH_OP_NOP = common dso_local global i64 0, align 8
@TOO_MANY_OPS = common dso_local global i32 0, align 4
@FETCH_OP_ST_USTRING = common dso_local global i64 0, align 8
@FETCH_OP_ST_STRING = common dso_local global i64 0, align 8
@FETCH_OP_ST_MEM = common dso_local global i64 0, align 8
@FETCH_OP_ST_UMEM = common dso_local global i64 0, align 8
@FETCH_OP_ST_RAW = common dso_local global i64 0, align 8
@BAD_BITFIELD = common dso_local global i32 0, align 4
@FETCH_OP_LP_ARRAY = common dso_local global i64 0, align 8
@FETCH_NOP_SYMBOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.probe_arg*, i32, i32)* @traceprobe_parse_probe_arg_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traceprobe_parse_probe_arg_body(i8* %0, i32* %1, %struct.probe_arg* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.probe_arg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fetch_insn*, align 8
  %13 = alloca %struct.fetch_insn*, align 8
  %14 = alloca %struct.fetch_insn*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.probe_arg* %2, %struct.probe_arg** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fetch_insn* null, %struct.fetch_insn** %14, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %19, align 4
  %23 = load i32, i32* @MAX_ARGSTR_LEN, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @ARG_TOO_LONG, align 4
  %28 = call i32 @trace_probe_log_err(i32 %26, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %681

31:                                               ; preds = %5
  %32 = load i32, i32* %19, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @NO_ARG_BODY, align 4
  %37 = call i32 @trace_probe_log_err(i32 %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %681

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @kstrdup(i8* %42, i32 %43)
  %45 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %46 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %48 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %681

54:                                               ; preds = %41
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 58)
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %162

59:                                               ; preds = %54
  %60 = load i8*, i8** %15, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %15, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 91)
  store i8* %63, i8** %16, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %161

66:                                               ; preds = %59
  %67 = load i8*, i8** %16, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %16, align 8
  store i8 0, i8* %67, align 1
  %69 = load i8*, i8** %16, align 8
  %70 = call i8* @strchr(i8* %69, i8 signext 93)
  store i8* %70, i8** %17, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %92, label %73

73:                                               ; preds = %66
  %74 = load i8*, i8** %16, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8*, i8** %7, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @ARRAY_NO_CLOSE, align 4
  %89 = call i32 @trace_probe_log_err(i32 %87, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %681

92:                                               ; preds = %66
  %93 = load i8*, i8** %17, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load i32, i32* %11, align 4
  %100 = load i8*, i8** %17, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8*, i8** %7, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* @BAD_ARRAY_SUFFIX, align 4
  %110 = call i32 @trace_probe_log_err(i32 %108, i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %681

113:                                              ; preds = %92
  br label %114

114:                                              ; preds = %113
  %115 = load i8*, i8** %17, align 8
  store i8 0, i8* %115, align 1
  %116 = load i8*, i8** %16, align 8
  %117 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %118 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %117, i32 0, i32 0
  %119 = call i64 @kstrtouint(i8* %116, i32 0, i64* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %114
  %122 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %123 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %121, %114
  %127 = load i32, i32* %11, align 4
  %128 = load i8*, i8** %16, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = load i8*, i8** %7, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* @BAD_ARRAY_NUM, align 4
  %137 = call i32 @trace_probe_log_err(i32 %135, i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %681

140:                                              ; preds = %121
  %141 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %142 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MAX_ARRAY_LEN, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load i32, i32* %11, align 4
  %148 = load i8*, i8** %16, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = load i8*, i8** %7, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* @ARRAY_TOO_BIG, align 4
  %157 = call i32 @trace_probe_log_err(i32 %155, i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %681

160:                                              ; preds = %140
  br label %161

161:                                              ; preds = %160, %59
  br label %162

162:                                              ; preds = %161, %54
  %163 = load i8*, i8** %7, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i8*, i8** %7, align 8
  %168 = call i64 @strncmp(i8* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %166, %162
  %171 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %172 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %170
  %176 = load i8*, i8** %15, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load i8*, i8** %15, align 8
  %180 = call i64 @strcmp(i8* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %178, %170
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %6, align 4
  br label %681

185:                                              ; preds = %178, %175
  %186 = call i8* @find_fetch_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %187 = bitcast i8* %186 to %struct.TYPE_3__*
  %188 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %189 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %188, i32 0, i32 4
  store %struct.TYPE_3__* %187, %struct.TYPE_3__** %189, align 8
  br label %196

190:                                              ; preds = %166
  %191 = load i8*, i8** %15, align 8
  %192 = call i8* @find_fetch_type(i8* %191)
  %193 = bitcast i8* %192 to %struct.TYPE_3__*
  %194 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %195 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %194, i32 0, i32 4
  store %struct.TYPE_3__* %193, %struct.TYPE_3__** %195, align 8
  br label %196

196:                                              ; preds = %190, %185
  %197 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %198 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %197, i32 0, i32 4
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %198, align 8
  %200 = icmp ne %struct.TYPE_3__* %199, null
  br i1 %200, label %221, label %201

201:                                              ; preds = %196
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = load i8*, i8** %15, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i8*, i8** %15, align 8
  %208 = load i8*, i8** %7, align 8
  %209 = ptrtoint i8* %207 to i64
  %210 = ptrtoint i8* %208 to i64
  %211 = sub i64 %209, %210
  br label %213

212:                                              ; preds = %201
  br label %213

213:                                              ; preds = %212, %206
  %214 = phi i64 [ %211, %206 ], [ 0, %212 ]
  %215 = add nsw i64 %203, %214
  %216 = trunc i64 %215 to i32
  %217 = load i32, i32* @BAD_TYPE, align 4
  %218 = call i32 @trace_probe_log_err(i32 %216, i32 %217)
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %6, align 4
  br label %681

221:                                              ; preds = %196
  %222 = load i32*, i32** %8, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %225 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 8
  %226 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %227 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %226, i32 0, i32 4
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %233 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %221
  br label %238

237:                                              ; preds = %221
  br label %238

238:                                              ; preds = %237, %236
  %239 = phi i64 [ %234, %236 ], [ 1, %237 ]
  %240 = mul nsw i64 %231, %239
  %241 = load i32*, i32** %8, align 8
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %243, %240
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %241, align 4
  %246 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %247 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %284

250:                                              ; preds = %238
  %251 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %252 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %251, i32 0, i32 4
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @strlen(i8* %255)
  %257 = add nsw i32 %256, 6
  store i32 %257, i32* %19, align 4
  %258 = load i32, i32* %19, align 4
  %259 = load i32, i32* @GFP_KERNEL, align 4
  %260 = call i32 @kmalloc(i32 %258, i32 %259)
  %261 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %262 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %261, i32 0, i32 5
  store i32 %260, i32* %262, align 8
  %263 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %264 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %250
  %268 = load i32, i32* @ENOMEM, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %6, align 4
  br label %681

270:                                              ; preds = %250
  %271 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %272 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %19, align 4
  %275 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %276 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %275, i32 0, i32 4
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 1
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %281 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @snprintf(i32 %273, i32 %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %279, i64 %282)
  br label %284

284:                                              ; preds = %270, %238
  %285 = load i32, i32* @FETCH_INSN_MAX, align 4
  %286 = load i32, i32* @GFP_KERNEL, align 4
  %287 = call i8* @kcalloc(i32 %285, i32 24, i32 %286)
  %288 = bitcast i8* %287 to %struct.fetch_insn*
  store %struct.fetch_insn* %288, %struct.fetch_insn** %14, align 8
  store %struct.fetch_insn* %288, %struct.fetch_insn** %12, align 8
  %289 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %290 = icmp ne %struct.fetch_insn* %289, null
  br i1 %290, label %294, label %291

291:                                              ; preds = %284
  %292 = load i32, i32* @ENOMEM, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %6, align 4
  br label %681

294:                                              ; preds = %284
  %295 = load i8*, i8** @FETCH_OP_END, align 8
  %296 = ptrtoint i8* %295 to i64
  %297 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %298 = load i32, i32* @FETCH_INSN_MAX, align 4
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %297, i64 %300
  %302 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %301, i32 0, i32 0
  store i64 %296, i64* %302, align 8
  %303 = load i8*, i8** %7, align 8
  %304 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %305 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %304, i32 0, i32 4
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %305, align 8
  %307 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %308 = load i32, i32* @FETCH_INSN_MAX, align 4
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %307, i64 %310
  %312 = load i32, i32* %10, align 4
  %313 = load i32, i32* %11, align 4
  %314 = call i32 @parse_probe_arg(i8* %303, %struct.TYPE_3__* %306, %struct.fetch_insn** %12, %struct.fetch_insn* %311, i32 %312, i32 %313)
  store i32 %314, i32* %18, align 4
  %315 = load i32, i32* %18, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %294
  br label %643

318:                                              ; preds = %294
  %319 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %320 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %319, i32 0, i32 4
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 2
  %323 = load i8*, i8** %322, align 8
  %324 = call i64 @strcmp(i8* %323, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %334

326:                                              ; preds = %318
  %327 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %328 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %327, i32 0, i32 4
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 2
  %331 = load i8*, i8** %330, align 8
  %332 = call i64 @strcmp(i8* %331, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %448, label %334

334:                                              ; preds = %326, %318
  %335 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %336 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @FETCH_OP_DEREF, align 8
  %339 = icmp ne i64 %337, %338
  br i1 %339, label %340, label %384

340:                                              ; preds = %334
  %341 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %342 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @FETCH_OP_UDEREF, align 8
  %345 = icmp ne i64 %343, %344
  br i1 %345, label %346, label %384

346:                                              ; preds = %340
  %347 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %348 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @FETCH_OP_IMM, align 8
  %351 = icmp ne i64 %349, %350
  br i1 %351, label %352, label %384

352:                                              ; preds = %346
  %353 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %354 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @FETCH_OP_COMM, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %384

358:                                              ; preds = %352
  %359 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %360 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @FETCH_OP_DATA, align 8
  %363 = icmp ne i64 %361, %362
  br i1 %363, label %364, label %384

364:                                              ; preds = %358
  %365 = load i32, i32* %11, align 4
  %366 = sext i32 %365 to i64
  %367 = load i8*, i8** %15, align 8
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %375

369:                                              ; preds = %364
  %370 = load i8*, i8** %15, align 8
  %371 = load i8*, i8** %7, align 8
  %372 = ptrtoint i8* %370 to i64
  %373 = ptrtoint i8* %371 to i64
  %374 = sub i64 %372, %373
  br label %376

375:                                              ; preds = %364
  br label %376

376:                                              ; preds = %375, %369
  %377 = phi i64 [ %374, %369 ], [ 0, %375 ]
  %378 = add nsw i64 %366, %377
  %379 = trunc i64 %378 to i32
  %380 = load i32, i32* @BAD_STRING, align 4
  %381 = call i32 @trace_probe_log_err(i32 %379, i32 %380)
  %382 = load i32, i32* @EINVAL, align 4
  %383 = sub nsw i32 0, %382
  store i32 %383, i32* %18, align 4
  br label %643

384:                                              ; preds = %358, %352, %346, %340, %334
  %385 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %386 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @FETCH_OP_IMM, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %401, label %390

390:                                              ; preds = %384
  %391 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %392 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @FETCH_OP_COMM, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %401, label %396

396:                                              ; preds = %390
  %397 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %398 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %416

401:                                              ; preds = %396, %390, %384
  %402 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %403 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %402, i32 1
  store %struct.fetch_insn* %403, %struct.fetch_insn** %12, align 8
  %404 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %405 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @FETCH_OP_NOP, align 8
  %408 = icmp ne i64 %406, %407
  br i1 %408, label %409, label %415

409:                                              ; preds = %401
  %410 = load i32, i32* %11, align 4
  %411 = load i32, i32* @TOO_MANY_OPS, align 4
  %412 = call i32 @trace_probe_log_err(i32 %410, i32 %411)
  %413 = load i32, i32* @EINVAL, align 4
  %414 = sub nsw i32 0, %413
  store i32 %414, i32* %18, align 4
  br label %643

415:                                              ; preds = %401
  br label %416

416:                                              ; preds = %415, %396
  %417 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %418 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %417, i32 0, i32 4
  %419 = load %struct.TYPE_3__*, %struct.TYPE_3__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 2
  %421 = load i8*, i8** %420, align 8
  %422 = call i64 @strcmp(i8* %421, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %430

424:                                              ; preds = %416
  %425 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %426 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @FETCH_OP_UDEREF, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %434

430:                                              ; preds = %424, %416
  %431 = load i64, i64* @FETCH_OP_ST_USTRING, align 8
  %432 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %433 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %432, i32 0, i32 0
  store i64 %431, i64* %433, align 8
  br label %438

434:                                              ; preds = %424
  %435 = load i64, i64* @FETCH_OP_ST_STRING, align 8
  %436 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %437 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %436, i32 0, i32 0
  store i64 %435, i64* %437, align 8
  br label %438

438:                                              ; preds = %434, %430
  %439 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %440 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %439, i32 0, i32 4
  %441 = load %struct.TYPE_3__*, %struct.TYPE_3__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %445 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %444, i32 0, i32 1
  store i32 %443, i32* %445, align 8
  %446 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %447 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %446, i32 0, i32 2
  store i32 1, i32* %447, align 4
  br label %509

448:                                              ; preds = %326
  %449 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %450 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @FETCH_OP_DEREF, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %465

454:                                              ; preds = %448
  %455 = load i64, i64* @FETCH_OP_ST_MEM, align 8
  %456 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %457 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %456, i32 0, i32 0
  store i64 %455, i64* %457, align 8
  %458 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %459 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %458, i32 0, i32 4
  %460 = load %struct.TYPE_3__*, %struct.TYPE_3__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %464 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %463, i32 0, i32 1
  store i32 %462, i32* %464, align 8
  br label %508

465:                                              ; preds = %448
  %466 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %467 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @FETCH_OP_UDEREF, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %471, label %482

471:                                              ; preds = %465
  %472 = load i64, i64* @FETCH_OP_ST_UMEM, align 8
  %473 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %474 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %473, i32 0, i32 0
  store i64 %472, i64* %474, align 8
  %475 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %476 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %475, i32 0, i32 4
  %477 = load %struct.TYPE_3__*, %struct.TYPE_3__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %481 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %480, i32 0, i32 1
  store i32 %479, i32* %481, align 8
  br label %507

482:                                              ; preds = %465
  %483 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %484 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %483, i32 1
  store %struct.fetch_insn* %484, %struct.fetch_insn** %12, align 8
  %485 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %486 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %485, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = load i64, i64* @FETCH_OP_NOP, align 8
  %489 = icmp ne i64 %487, %488
  br i1 %489, label %490, label %496

490:                                              ; preds = %482
  %491 = load i32, i32* %11, align 4
  %492 = load i32, i32* @TOO_MANY_OPS, align 4
  %493 = call i32 @trace_probe_log_err(i32 %491, i32 %492)
  %494 = load i32, i32* @EINVAL, align 4
  %495 = sub nsw i32 0, %494
  store i32 %495, i32* %18, align 4
  br label %643

496:                                              ; preds = %482
  %497 = load i64, i64* @FETCH_OP_ST_RAW, align 8
  %498 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %499 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %498, i32 0, i32 0
  store i64 %497, i64* %499, align 8
  %500 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %501 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %500, i32 0, i32 4
  %502 = load %struct.TYPE_3__*, %struct.TYPE_3__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %506 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %505, i32 0, i32 1
  store i32 %504, i32* %506, align 8
  br label %507

507:                                              ; preds = %496, %471
  br label %508

508:                                              ; preds = %507, %454
  br label %509

509:                                              ; preds = %508, %438
  %510 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  store %struct.fetch_insn* %510, %struct.fetch_insn** %13, align 8
  %511 = load i8*, i8** %15, align 8
  %512 = icmp ne i8* %511, null
  br i1 %512, label %513, label %534

513:                                              ; preds = %509
  %514 = load i8*, i8** %15, align 8
  %515 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %516 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %515, i32 0, i32 4
  %517 = load %struct.TYPE_3__*, %struct.TYPE_3__** %516, align 8
  %518 = call i32 @__parse_bitfield_probe_arg(i8* %514, %struct.TYPE_3__* %517, %struct.fetch_insn** %12)
  store i32 %518, i32* %18, align 4
  %519 = load i32, i32* %18, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %533

521:                                              ; preds = %513
  %522 = load i32, i32* %11, align 4
  %523 = load i8*, i8** %15, align 8
  %524 = sext i32 %522 to i64
  %525 = getelementptr inbounds i8, i8* %523, i64 %524
  %526 = load i8*, i8** %7, align 8
  %527 = ptrtoint i8* %525 to i64
  %528 = ptrtoint i8* %526 to i64
  %529 = sub i64 %527, %528
  %530 = trunc i64 %529 to i32
  %531 = load i32, i32* @BAD_BITFIELD, align 4
  %532 = call i32 @trace_probe_log_err(i32 %530, i32 %531)
  br label %643

533:                                              ; preds = %513
  br label %534

534:                                              ; preds = %533, %509
  %535 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %536 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %535, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %601

539:                                              ; preds = %534
  %540 = load %struct.fetch_insn*, %struct.fetch_insn** %13, align 8
  %541 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %540, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = load i64, i64* @FETCH_OP_ST_MEM, align 8
  %544 = icmp ne i64 %542, %543
  br i1 %544, label %545, label %577

545:                                              ; preds = %539
  %546 = load %struct.fetch_insn*, %struct.fetch_insn** %13, align 8
  %547 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = load i64, i64* @FETCH_OP_ST_STRING, align 8
  %550 = icmp ne i64 %548, %549
  br i1 %550, label %551, label %577

551:                                              ; preds = %545
  %552 = load %struct.fetch_insn*, %struct.fetch_insn** %13, align 8
  %553 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %552, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = load i64, i64* @FETCH_OP_ST_USTRING, align 8
  %556 = icmp ne i64 %554, %555
  br i1 %556, label %557, label %577

557:                                              ; preds = %551
  %558 = load i32, i32* %11, align 4
  %559 = sext i32 %558 to i64
  %560 = load i8*, i8** %15, align 8
  %561 = icmp ne i8* %560, null
  br i1 %561, label %562, label %568

562:                                              ; preds = %557
  %563 = load i8*, i8** %15, align 8
  %564 = load i8*, i8** %7, align 8
  %565 = ptrtoint i8* %563 to i64
  %566 = ptrtoint i8* %564 to i64
  %567 = sub i64 %565, %566
  br label %569

568:                                              ; preds = %557
  br label %569

569:                                              ; preds = %568, %562
  %570 = phi i64 [ %567, %562 ], [ 0, %568 ]
  %571 = add nsw i64 %559, %570
  %572 = trunc i64 %571 to i32
  %573 = load i32, i32* @BAD_STRING, align 4
  %574 = call i32 @trace_probe_log_err(i32 %572, i32 %573)
  %575 = load i32, i32* @EINVAL, align 4
  %576 = sub nsw i32 0, %575
  store i32 %576, i32* %18, align 4
  br label %643

577:                                              ; preds = %551, %545, %539
  %578 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %579 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %578, i32 1
  store %struct.fetch_insn* %579, %struct.fetch_insn** %12, align 8
  %580 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %581 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %580, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = load i64, i64* @FETCH_OP_NOP, align 8
  %584 = icmp ne i64 %582, %583
  br i1 %584, label %585, label %591

585:                                              ; preds = %577
  %586 = load i32, i32* %11, align 4
  %587 = load i32, i32* @TOO_MANY_OPS, align 4
  %588 = call i32 @trace_probe_log_err(i32 %586, i32 %587)
  %589 = load i32, i32* @EINVAL, align 4
  %590 = sub nsw i32 0, %589
  store i32 %590, i32* %18, align 4
  br label %643

591:                                              ; preds = %577
  %592 = load i64, i64* @FETCH_OP_LP_ARRAY, align 8
  %593 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %594 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %593, i32 0, i32 0
  store i64 %592, i64* %594, align 8
  %595 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %596 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %595, i32 0, i32 0
  %597 = load i64, i64* %596, align 8
  %598 = trunc i64 %597 to i32
  %599 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %600 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %599, i32 0, i32 2
  store i32 %598, i32* %600, align 4
  br label %601

601:                                              ; preds = %591, %534
  %602 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %603 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %602, i32 1
  store %struct.fetch_insn* %603, %struct.fetch_insn** %12, align 8
  %604 = load i8*, i8** @FETCH_OP_END, align 8
  %605 = ptrtoint i8* %604 to i64
  %606 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %607 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %606, i32 0, i32 0
  store i64 %605, i64* %607, align 8
  %608 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %609 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %610 = ptrtoint %struct.fetch_insn* %608 to i64
  %611 = ptrtoint %struct.fetch_insn* %609 to i64
  %612 = sub i64 %610, %611
  %613 = sdiv exact i64 %612, 24
  %614 = add nsw i64 %613, 1
  %615 = trunc i64 %614 to i32
  %616 = load i32, i32* @GFP_KERNEL, align 4
  %617 = call i8* @kcalloc(i32 %615, i32 24, i32 %616)
  %618 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %619 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %618, i32 0, i32 3
  store i8* %617, i8** %619, align 8
  %620 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %621 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %620, i32 0, i32 3
  %622 = load i8*, i8** %621, align 8
  %623 = icmp ne i8* %622, null
  br i1 %623, label %627, label %624

624:                                              ; preds = %601
  %625 = load i32, i32* @ENOMEM, align 4
  %626 = sub nsw i32 0, %625
  store i32 %626, i32* %18, align 4
  br label %642

627:                                              ; preds = %601
  %628 = load %struct.probe_arg*, %struct.probe_arg** %9, align 8
  %629 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %628, i32 0, i32 3
  %630 = load i8*, i8** %629, align 8
  %631 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %632 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %633 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %634 = ptrtoint %struct.fetch_insn* %632 to i64
  %635 = ptrtoint %struct.fetch_insn* %633 to i64
  %636 = sub i64 %634, %635
  %637 = sdiv exact i64 %636, 24
  %638 = add nsw i64 %637, 1
  %639 = mul i64 24, %638
  %640 = trunc i64 %639 to i32
  %641 = call i32 @memcpy(i8* %630, %struct.fetch_insn* %631, i32 %640)
  br label %642

642:                                              ; preds = %627, %624
  br label %643

643:                                              ; preds = %642, %585, %569, %521, %490, %409, %376, %317
  %644 = load i32, i32* %18, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %677

646:                                              ; preds = %643
  %647 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  store %struct.fetch_insn* %647, %struct.fetch_insn** %12, align 8
  br label %648

648:                                              ; preds = %673, %646
  %649 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %650 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %651 = load i32, i32* @FETCH_INSN_MAX, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %650, i64 %652
  %654 = icmp ult %struct.fetch_insn* %649, %653
  br i1 %654, label %655, label %676

655:                                              ; preds = %648
  %656 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %657 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %656, i32 0, i32 0
  %658 = load i64, i64* %657, align 8
  %659 = load i64, i64* @FETCH_NOP_SYMBOL, align 8
  %660 = icmp eq i64 %658, %659
  br i1 %660, label %667, label %661

661:                                              ; preds = %655
  %662 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %663 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %662, i32 0, i32 0
  %664 = load i64, i64* %663, align 8
  %665 = load i64, i64* @FETCH_OP_DATA, align 8
  %666 = icmp eq i64 %664, %665
  br i1 %666, label %667, label %672

667:                                              ; preds = %661, %655
  %668 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %669 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %668, i32 0, i32 3
  %670 = load %struct.fetch_insn*, %struct.fetch_insn** %669, align 8
  %671 = call i32 @kfree(%struct.fetch_insn* %670)
  br label %672

672:                                              ; preds = %667, %661
  br label %673

673:                                              ; preds = %672
  %674 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  %675 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %674, i32 1
  store %struct.fetch_insn* %675, %struct.fetch_insn** %12, align 8
  br label %648

676:                                              ; preds = %648
  br label %677

677:                                              ; preds = %676, %643
  %678 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %679 = call i32 @kfree(%struct.fetch_insn* %678)
  %680 = load i32, i32* %18, align 4
  store i32 %680, i32* %6, align 4
  br label %681

681:                                              ; preds = %677, %291, %267, %213, %182, %146, %126, %98, %73, %51, %34, %25
  %682 = load i32, i32* %6, align 4
  ret i32 %682
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @trace_probe_log_err(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @kstrtouint(i8*, i32, i64*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @find_fetch_type(i8*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i64) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @parse_probe_arg(i8*, %struct.TYPE_3__*, %struct.fetch_insn**, %struct.fetch_insn*, i32, i32) #1

declare dso_local i32 @__parse_bitfield_probe_arg(i8*, %struct.TYPE_3__*, %struct.fetch_insn**) #1

declare dso_local i32 @memcpy(i8*, %struct.fetch_insn*, i32) #1

declare dso_local i32 @kfree(%struct.fetch_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
