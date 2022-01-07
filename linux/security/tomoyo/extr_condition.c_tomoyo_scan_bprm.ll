; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_scan_bprm.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_scan_bprm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_execve = type { i8*, %struct.tomoyo_page_dump, %struct.linux_binprm* }
%struct.tomoyo_page_dump = type { i8* }
%struct.linux_binprm = type { i64, i32, i32 }
%struct.tomoyo_argv = type { i64 }
%struct.tomoyo_envp = type { i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@TOMOYO_EXEC_TMPSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_execve*, i32, %struct.tomoyo_argv*, i32, %struct.tomoyo_envp*)* @tomoyo_scan_bprm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_scan_bprm(%struct.tomoyo_execve* %0, i32 %1, %struct.tomoyo_argv* %2, i32 %3, %struct.tomoyo_envp* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tomoyo_execve*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tomoyo_argv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tomoyo_envp*, align 8
  %12 = alloca %struct.linux_binprm*, align 8
  %13 = alloca %struct.tomoyo_page_dump*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [32 x i64], align 16
  %22 = alloca i64*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8, align 1
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.tomoyo_execve* %0, %struct.tomoyo_execve** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.tomoyo_argv* %2, %struct.tomoyo_argv** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.tomoyo_envp* %4, %struct.tomoyo_envp** %11, align 8
  %27 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %7, align 8
  %28 = getelementptr inbounds %struct.tomoyo_execve, %struct.tomoyo_execve* %27, i32 0, i32 2
  %29 = load %struct.linux_binprm*, %struct.linux_binprm** %28, align 8
  store %struct.linux_binprm* %29, %struct.linux_binprm** %12, align 8
  %30 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %7, align 8
  %31 = getelementptr inbounds %struct.tomoyo_execve, %struct.tomoyo_execve* %30, i32 0, i32 1
  store %struct.tomoyo_page_dump* %31, %struct.tomoyo_page_dump** %13, align 8
  %32 = load %struct.tomoyo_execve*, %struct.tomoyo_execve** %7, align 8
  %33 = getelementptr inbounds %struct.tomoyo_execve, %struct.tomoyo_execve* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %35 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %36 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = urem i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %17, align 4
  %42 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %43 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %18, align 4
  %45 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %46 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = icmp ule i64 %51, 256
  br i1 %52, label %53, label %57

53:                                               ; preds = %5
  %54 = getelementptr inbounds [32 x i64], [32 x i64]* %21, i64 0, i64 0
  store i64* %54, i64** %22, align 8
  %55 = getelementptr inbounds [32 x i64], [32 x i64]* %21, i64 0, i64 0
  %56 = call i32 @memset(i64* %55, i32 0, i32 256)
  br label %67

57:                                               ; preds = %5
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* @GFP_NOFS, align 4
  %62 = call i64* @kzalloc(i32 %60, i32 %61)
  store i64* %62, i64** %22, align 8
  %63 = load i64*, i64** %22, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %326

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %53
  br label %68

68:                                               ; preds = %243, %67
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i1 [ true, %68 ], [ %73, %71 ]
  br i1 %75, label %76, label %244

76:                                               ; preds = %74
  %77 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load %struct.tomoyo_page_dump*, %struct.tomoyo_page_dump** %13, align 8
  %80 = call i32 @tomoyo_dump_page(%struct.linux_binprm* %77, i64 %78, %struct.tomoyo_page_dump* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  store i32 0, i32* %20, align 4
  br label %245

83:                                               ; preds = %76
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 %84, %86
  %88 = load i64, i64* %16, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %16, align 8
  br label %90

90:                                               ; preds = %238, %190, %83
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @PAGE_SIZE, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %239

95:                                               ; preds = %90
  %96 = load %struct.tomoyo_page_dump*, %struct.tomoyo_page_dump** %13, align 8
  %97 = getelementptr inbounds %struct.tomoyo_page_dump, %struct.tomoyo_page_dump* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %23, align 8
  %99 = load i8*, i8** %23, align 8
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i8, i8* %103, align 1
  store i8 %104, i8* %24, align 1
  %105 = load i8, i8* %24, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %182

108:                                              ; preds = %95
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @TOMOYO_EXEC_TMPSIZE, align 4
  %111 = sub nsw i32 %110, 10
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %182

113:                                              ; preds = %108
  %114 = load i8, i8* %24, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 92
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  store i8 92, i8* %122, align 1
  %123 = load i8*, i8** %14, align 8
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 92, i8* %127, align 1
  br label %181

128:                                              ; preds = %113
  %129 = load i8, i8* %24, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp sgt i32 %130, 32
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load i8, i8* %24, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp slt i32 %134, 127
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load i8, i8* %24, align 1
  %138 = load i8*, i8** %14, align 8
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 %137, i8* %142, align 1
  br label %180

143:                                              ; preds = %132, %128
  %144 = load i8*, i8** %14, align 8
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  store i8 92, i8* %148, align 1
  %149 = load i8, i8* %24, align 1
  %150 = zext i8 %149 to i32
  %151 = ashr i32 %150, 6
  %152 = add nsw i32 %151, 48
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %14, align 8
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %15, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  store i8 %153, i8* %158, align 1
  %159 = load i8, i8* %24, align 1
  %160 = zext i8 %159 to i32
  %161 = ashr i32 %160, 3
  %162 = and i32 %161, 7
  %163 = add nsw i32 %162, 48
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %14, align 8
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 %164, i8* %169, align 1
  %170 = load i8, i8* %24, align 1
  %171 = zext i8 %170 to i32
  %172 = and i32 %171, 7
  %173 = add nsw i32 %172, 48
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %14, align 8
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 %174, i8* %179, align 1
  br label %180

180:                                              ; preds = %143, %136
  br label %181

181:                                              ; preds = %180, %117
  br label %187

182:                                              ; preds = %108, %95
  %183 = load i8*, i8** %14, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8 0, i8* %186, align 1
  br label %187

187:                                              ; preds = %182, %181
  %188 = load i8, i8* %24, align 1
  %189 = icmp ne i8 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  br label %90

191:                                              ; preds = %187
  %192 = load i32, i32* %18, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %191
  %195 = load %struct.linux_binprm*, %struct.linux_binprm** %12, align 8
  %196 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %18, align 4
  %199 = sub nsw i32 %197, %198
  %200 = load i8*, i8** %14, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.tomoyo_argv*, %struct.tomoyo_argv** %9, align 8
  %203 = load i64*, i64** %22, align 8
  %204 = call i32 @tomoyo_argv(i32 %199, i8* %200, i32 %201, %struct.tomoyo_argv* %202, i64* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %194
  store i32 0, i32* %20, align 4
  br label %239

207:                                              ; preds = %194
  %208 = load i32, i32* %18, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %18, align 4
  br label %238

210:                                              ; preds = %191
  %211 = load i32, i32* %19, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %236

213:                                              ; preds = %210
  %214 = load i8*, i8** %14, align 8
  %215 = call i8* @strchr(i8* %214, i8 signext 61)
  store i8* %215, i8** %25, align 8
  %216 = load i8*, i8** %25, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %233

218:                                              ; preds = %213
  %219 = load i8*, i8** %25, align 8
  store i8 0, i8* %219, align 1
  %220 = load i8*, i8** %14, align 8
  %221 = load i8*, i8** %25, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %11, align 8
  %225 = load i64*, i64** %22, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = call i32 @tomoyo_envp(i8* %220, i8* %222, i32 %223, %struct.tomoyo_envp* %224, i64* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %218
  store i32 0, i32* %20, align 4
  br label %239

232:                                              ; preds = %218
  br label %233

233:                                              ; preds = %232, %213
  %234 = load i32, i32* %19, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %19, align 4
  br label %237

236:                                              ; preds = %210
  br label %239

237:                                              ; preds = %233
  br label %238

238:                                              ; preds = %237, %207
  store i32 0, i32* %15, align 4
  br label %90

239:                                              ; preds = %236, %231, %206, %90
  store i32 0, i32* %17, align 4
  %240 = load i32, i32* %20, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %239
  br label %244

243:                                              ; preds = %239
  br label %68

244:                                              ; preds = %242, %74
  br label %245

245:                                              ; preds = %244, %82
  %246 = load i32, i32* %20, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %317

248:                                              ; preds = %245
  store i32 0, i32* %26, align 4
  br label %249

249:                                              ; preds = %271, %248
  %250 = load i32, i32* %26, align 4
  %251 = load i32, i32* %8, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %274

253:                                              ; preds = %249
  %254 = load i64*, i64** %22, align 8
  %255 = load i32, i32* %26, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %254, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  br label %271

261:                                              ; preds = %253
  %262 = load %struct.tomoyo_argv*, %struct.tomoyo_argv** %9, align 8
  %263 = load i32, i32* %26, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.tomoyo_argv, %struct.tomoyo_argv* %262, i64 %264
  %266 = getelementptr inbounds %struct.tomoyo_argv, %struct.tomoyo_argv* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %261
  br label %271

270:                                              ; preds = %261
  store i32 0, i32* %20, align 4
  br label %274

271:                                              ; preds = %269, %260
  %272 = load i32, i32* %26, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %26, align 4
  br label %249

274:                                              ; preds = %270, %249
  store i32 0, i32* %26, align 4
  br label %275

275:                                              ; preds = %311, %274
  %276 = load i32, i32* %26, align 4
  %277 = load i32, i32* %10, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %316

279:                                              ; preds = %275
  %280 = load i64*, i64** %22, align 8
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* %26, align 4
  %283 = add nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %280, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %279
  br label %311

289:                                              ; preds = %279
  %290 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %11, align 8
  %291 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %289
  %295 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %11, align 8
  %296 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %294, %289
  %300 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %11, align 8
  %301 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %299
  %305 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %11, align 8
  %306 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304, %294
  br label %311

310:                                              ; preds = %304, %299
  store i32 0, i32* %20, align 4
  br label %316

311:                                              ; preds = %309, %288
  %312 = load %struct.tomoyo_envp*, %struct.tomoyo_envp** %11, align 8
  %313 = getelementptr inbounds %struct.tomoyo_envp, %struct.tomoyo_envp* %312, i32 1
  store %struct.tomoyo_envp* %313, %struct.tomoyo_envp** %11, align 8
  %314 = load i32, i32* %26, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %26, align 4
  br label %275

316:                                              ; preds = %310, %275
  br label %317

317:                                              ; preds = %316, %245
  %318 = load i64*, i64** %22, align 8
  %319 = getelementptr inbounds [32 x i64], [32 x i64]* %21, i64 0, i64 0
  %320 = icmp ne i64* %318, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %317
  %322 = load i64*, i64** %22, align 8
  %323 = call i32 @kfree(i64* %322)
  br label %324

324:                                              ; preds = %321, %317
  %325 = load i32, i32* %20, align 4
  store i32 %325, i32* %6, align 4
  br label %326

326:                                              ; preds = %324, %65
  %327 = load i32, i32* %6, align 4
  ret i32 %327
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @tomoyo_dump_page(%struct.linux_binprm*, i64, %struct.tomoyo_page_dump*) #1

declare dso_local i32 @tomoyo_argv(i32, i8*, i32, %struct.tomoyo_argv*, i64*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @tomoyo_envp(i8*, i8*, i32, %struct.tomoyo_envp*, i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
