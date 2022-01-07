; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_parse_probe_arg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_parse_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_type = type { i32 }
%struct.fetch_insn = type { i32, i32, i64, i8*, i64 }

@FETCH_OP_DEREF = common dso_local global i8* null, align 8
@FETCH_OP_REG = common dso_local global i32 0, align 4
@BAD_REG_NAME = common dso_local global i32 0, align 4
@BAD_MEM_ADDR = common dso_local global i32 0, align 4
@FETCH_OP_IMM = common dso_local global i8* null, align 8
@TPARG_FL_KERNEL = common dso_local global i32 0, align 4
@FILE_ON_KPROBE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BAD_FILE_OFFS = common dso_local global i32 0, align 4
@FETCH_OP_FOFFS = common dso_local global i32 0, align 4
@SYM_ON_UPROBE = common dso_local global i32 0, align 4
@FETCH_NOP_SYMBOL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TOO_MANY_OPS = common dso_local global i32 0, align 4
@FETCH_OP_UDEREF = common dso_local global i32 0, align 4
@DEREF_NEED_BRACE = common dso_local global i32 0, align 4
@BAD_DEREF_OFFS = common dso_local global i32 0, align 4
@DEREF_OPEN_BRACE = common dso_local global i32 0, align 4
@FETCH_OP_COMM = common dso_local global i32 0, align 4
@FETCH_OP_DATA = common dso_local global i32 0, align 4
@COMM_CANT_DEREF = common dso_local global i32 0, align 4
@BAD_IMM = common dso_local global i32 0, align 4
@FETCH_OP_NOP = common dso_local global i64 0, align 8
@BAD_FETCH_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fetch_type*, %struct.fetch_insn**, %struct.fetch_insn*, i32, i32)* @parse_probe_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_probe_arg(i8* %0, %struct.fetch_type* %1, %struct.fetch_insn** %2, %struct.fetch_insn* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fetch_type*, align 8
  %10 = alloca %struct.fetch_insn**, align 8
  %11 = alloca %struct.fetch_insn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fetch_insn*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.fetch_type*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.fetch_type* %1, %struct.fetch_type** %9, align 8
  store %struct.fetch_insn** %2, %struct.fetch_insn*** %10, align 8
  store %struct.fetch_insn* %3, %struct.fetch_insn** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.fetch_insn**, %struct.fetch_insn*** %10, align 8
  %22 = load %struct.fetch_insn*, %struct.fetch_insn** %21, align 8
  store %struct.fetch_insn* %22, %struct.fetch_insn** %14, align 8
  %23 = load i8*, i8** @FETCH_OP_DEREF, align 8
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %354 [
    i32 36, label %29
    i32 37, label %37
    i32 64, label %55
    i32 43, label %181
    i32 45, label %181
    i32 92, label %312
  ]

29:                                               ; preds = %6
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load %struct.fetch_type*, %struct.fetch_type** %9, align 8
  %33 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @parse_probe_vars(i8* %31, %struct.fetch_type* %32, %struct.fetch_insn* %33, i32 %34, i32 %35)
  store i32 %36, i32* %19, align 4
  br label %354

37:                                               ; preds = %6
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i32 @regs_query_register_offset(i8* %39)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* @FETCH_OP_REG, align 4
  %45 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %46 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %19, align 4
  %48 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %49 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %19, align 4
  br label %54

50:                                               ; preds = %37
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @BAD_REG_NAME, align 4
  %53 = call i32 @trace_probe_log_err(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %43
  br label %354

55:                                               ; preds = %6
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @isdigit(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %55
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i32 @kstrtoul(i8* %63, i32 0, i64* %15)
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @BAD_MEM_ADDR, align 4
  %70 = call i32 @trace_probe_log_err(i32 %68, i32 %69)
  br label %354

71:                                               ; preds = %61
  %72 = load i8*, i8** @FETCH_OP_IMM, align 8
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %75 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %78 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %160

79:                                               ; preds = %55
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 43
  br i1 %84, label %85, label %113

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @TPARG_FL_KERNEL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @FILE_ON_KPROBE, align 4
  %93 = call i32 @trace_probe_log_err(i32 %91, i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %372

96:                                               ; preds = %85
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = call i32 @kstrtol(i8* %98, i32 0, i64* %17)
  store i32 %99, i32* %19, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @BAD_FILE_OFFS, align 4
  %105 = call i32 @trace_probe_log_err(i32 %103, i32 %104)
  br label %354

106:                                              ; preds = %96
  %107 = load i32, i32* @FETCH_OP_FOFFS, align 4
  %108 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %109 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %112 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  br label %159

113:                                              ; preds = %79
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @TPARG_FL_KERNEL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @SYM_ON_UPROBE, align 4
  %121 = call i32 @trace_probe_log_err(i32 %119, i32 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %372

124:                                              ; preds = %113
  %125 = load i32, i32* @FETCH_NOP_SYMBOL, align 4
  %126 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %127 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @kstrdup(i8* %129, i32 %130)
  %132 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %133 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %135 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %124
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %7, align 4
  br label %372

141:                                              ; preds = %124
  %142 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %143 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %142, i32 1
  store %struct.fetch_insn* %143, %struct.fetch_insn** %14, align 8
  %144 = load %struct.fetch_insn*, %struct.fetch_insn** %11, align 8
  %145 = icmp eq %struct.fetch_insn* %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @TOO_MANY_OPS, align 4
  %149 = call i32 @trace_probe_log_err(i32 %147, i32 %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %7, align 4
  br label %372

152:                                              ; preds = %141
  %153 = load i8*, i8** @FETCH_OP_IMM, align 8
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %156 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %158 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %157, i32 0, i32 2
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %152, %106
  br label %160

160:                                              ; preds = %159, %71
  %161 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %162 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %161, i32 1
  store %struct.fetch_insn* %162, %struct.fetch_insn** %14, align 8
  %163 = load %struct.fetch_insn*, %struct.fetch_insn** %11, align 8
  %164 = icmp eq %struct.fetch_insn* %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @TOO_MANY_OPS, align 4
  %168 = call i32 @trace_probe_log_err(i32 %166, i32 %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %7, align 4
  br label %372

171:                                              ; preds = %160
  %172 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %173 = load %struct.fetch_insn**, %struct.fetch_insn*** %10, align 8
  store %struct.fetch_insn* %172, %struct.fetch_insn** %173, align 8
  %174 = load i8*, i8** @FETCH_OP_DEREF, align 8
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %177 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i64, i64* %17, align 8
  %179 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %180 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %179, i32 0, i32 4
  store i64 %178, i64* %180, align 8
  br label %354

181:                                              ; preds = %6, %6
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 117
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = load i32, i32* @FETCH_OP_UDEREF, align 4
  store i32 %188, i32* %16, align 4
  %189 = load i8*, i8** %8, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  store i8 %191, i8* %193, align 1
  %194 = load i8*, i8** %8, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %8, align 8
  br label %196

196:                                              ; preds = %187, %181
  %197 = load i8*, i8** %8, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 43
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i8*, i8** %8, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %8, align 8
  br label %205

205:                                              ; preds = %202, %196
  %206 = load i8*, i8** %8, align 8
  %207 = call i8* @strchr(i8* %206, i8 signext 40)
  store i8* %207, i8** %18, align 8
  %208 = load i8*, i8** %18, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %216, label %210

210:                                              ; preds = %205
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @DEREF_NEED_BRACE, align 4
  %213 = call i32 @trace_probe_log_err(i32 %211, i32 %212)
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %7, align 4
  br label %372

216:                                              ; preds = %205
  %217 = load i8*, i8** %18, align 8
  store i8 0, i8* %217, align 1
  %218 = load i8*, i8** %8, align 8
  %219 = call i32 @kstrtol(i8* %218, i32 0, i64* %17)
  store i32 %219, i32* %19, align 4
  %220 = load i32, i32* %19, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* @BAD_DEREF_OFFS, align 4
  %225 = call i32 @trace_probe_log_err(i32 %223, i32 %224)
  br label %354

226:                                              ; preds = %216
  %227 = load i8*, i8** %18, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  %229 = load i8*, i8** %8, align 8
  %230 = ptrtoint i8* %228 to i64
  %231 = ptrtoint i8* %229 to i64
  %232 = sub i64 %230, %231
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp ne i32 %236, 45
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i32 1, i32 0
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %232, %240
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %243, %241
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %13, align 4
  %246 = load i8*, i8** %18, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  store i8* %247, i8** %8, align 8
  %248 = load i8*, i8** %8, align 8
  %249 = call i8* @strrchr(i8* %248, i8 signext 41)
  store i8* %249, i8** %18, align 8
  %250 = load i8*, i8** %18, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %261, label %252

252:                                              ; preds = %226
  %253 = load i32, i32* %13, align 4
  %254 = load i8*, i8** %8, align 8
  %255 = call i32 @strlen(i8* %254)
  %256 = add nsw i32 %253, %255
  %257 = load i32, i32* @DEREF_OPEN_BRACE, align 4
  %258 = call i32 @trace_probe_log_err(i32 %256, i32 %257)
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %7, align 4
  br label %372

261:                                              ; preds = %226
  %262 = call %struct.fetch_type* @find_fetch_type(i32* null)
  store %struct.fetch_type* %262, %struct.fetch_type** %20, align 8
  %263 = load i8*, i8** %18, align 8
  store i8 0, i8* %263, align 1
  %264 = load i8*, i8** %8, align 8
  %265 = load %struct.fetch_type*, %struct.fetch_type** %20, align 8
  %266 = load %struct.fetch_insn*, %struct.fetch_insn** %11, align 8
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @parse_probe_arg(i8* %264, %struct.fetch_type* %265, %struct.fetch_insn** %14, %struct.fetch_insn* %266, i32 %267, i32 %268)
  store i32 %269, i32* %19, align 4
  %270 = load i32, i32* %19, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %261
  br label %354

273:                                              ; preds = %261
  %274 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %275 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @FETCH_OP_COMM, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %285, label %279

279:                                              ; preds = %273
  %280 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %281 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @FETCH_OP_DATA, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %291

285:                                              ; preds = %279, %273
  %286 = load i32, i32* %13, align 4
  %287 = load i32, i32* @COMM_CANT_DEREF, align 4
  %288 = call i32 @trace_probe_log_err(i32 %286, i32 %287)
  %289 = load i32, i32* @EINVAL, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %7, align 4
  br label %372

291:                                              ; preds = %279
  %292 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %293 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %292, i32 1
  store %struct.fetch_insn* %293, %struct.fetch_insn** %14, align 8
  %294 = load %struct.fetch_insn*, %struct.fetch_insn** %11, align 8
  %295 = icmp eq %struct.fetch_insn* %293, %294
  br i1 %295, label %296, label %302

296:                                              ; preds = %291
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* @TOO_MANY_OPS, align 4
  %299 = call i32 @trace_probe_log_err(i32 %297, i32 %298)
  %300 = load i32, i32* @EINVAL, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %7, align 4
  br label %372

302:                                              ; preds = %291
  %303 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %304 = load %struct.fetch_insn**, %struct.fetch_insn*** %10, align 8
  store %struct.fetch_insn* %303, %struct.fetch_insn** %304, align 8
  %305 = load i32, i32* %16, align 4
  %306 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %307 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 8
  %308 = load i64, i64* %17, align 8
  %309 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %310 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %309, i32 0, i32 4
  store i64 %308, i64* %310, align 8
  br label %311

311:                                              ; preds = %302
  br label %354

312:                                              ; preds = %6
  %313 = load i8*, i8** %8, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 1
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 34
  br i1 %317, label %318, label %334

318:                                              ; preds = %312
  %319 = load i8*, i8** %8, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 2
  %321 = load i32, i32* %13, align 4
  %322 = add nsw i32 %321, 2
  %323 = call i32 @__parse_imm_string(i8* %320, i8** %18, i32 %322)
  store i32 %323, i32* %19, align 4
  %324 = load i32, i32* %19, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  br label %354

327:                                              ; preds = %318
  %328 = load i32, i32* @FETCH_OP_DATA, align 4
  %329 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %330 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  %331 = load i8*, i8** %18, align 8
  %332 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %333 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %332, i32 0, i32 3
  store i8* %331, i8** %333, align 8
  br label %353

334:                                              ; preds = %312
  %335 = load i8*, i8** %8, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 1
  %337 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %338 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %337, i32 0, i32 2
  %339 = call i32 @str_to_immediate(i8* %336, i64* %338)
  store i32 %339, i32* %19, align 4
  %340 = load i32, i32* %19, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %334
  %343 = load i32, i32* %13, align 4
  %344 = add nsw i32 %343, 1
  %345 = load i32, i32* @BAD_IMM, align 4
  %346 = call i32 @trace_probe_log_err(i32 %344, i32 %345)
  br label %352

347:                                              ; preds = %334
  %348 = load i8*, i8** @FETCH_OP_IMM, align 8
  %349 = ptrtoint i8* %348 to i32
  %350 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %351 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %350, i32 0, i32 0
  store i32 %349, i32* %351, align 8
  br label %352

352:                                              ; preds = %347, %342
  br label %353

353:                                              ; preds = %352, %327
  br label %354

354:                                              ; preds = %6, %353, %326, %311, %272, %222, %171, %102, %67, %54, %29
  %355 = load i32, i32* %19, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %370, label %357

357:                                              ; preds = %354
  %358 = load %struct.fetch_insn*, %struct.fetch_insn** %14, align 8
  %359 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = sext i32 %360 to i64
  %362 = load i64, i64* @FETCH_OP_NOP, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %370

364:                                              ; preds = %357
  %365 = load i32, i32* %13, align 4
  %366 = load i32, i32* @BAD_FETCH_ARG, align 4
  %367 = call i32 @trace_probe_log_err(i32 %365, i32 %366)
  %368 = load i32, i32* @EINVAL, align 4
  %369 = sub nsw i32 0, %368
  store i32 %369, i32* %19, align 4
  br label %370

370:                                              ; preds = %364, %357, %354
  %371 = load i32, i32* %19, align 4
  store i32 %371, i32* %7, align 4
  br label %372

372:                                              ; preds = %370, %296, %285, %252, %210, %165, %146, %138, %118, %90
  %373 = load i32, i32* %7, align 4
  ret i32 %373
}

declare dso_local i32 @parse_probe_vars(i8*, %struct.fetch_type*, %struct.fetch_insn*, i32, i32) #1

declare dso_local i32 @regs_query_register_offset(i8*) #1

declare dso_local i32 @trace_probe_log_err(i32, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.fetch_type* @find_fetch_type(i32*) #1

declare dso_local i32 @__parse_imm_string(i8*, i8**, i32) #1

declare dso_local i32 @str_to_immediate(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
