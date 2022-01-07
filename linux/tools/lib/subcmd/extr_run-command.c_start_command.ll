; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_run-command.c_start_command.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_run-command.c_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i64, i32*, i64, i32 (...)*, i64*, i64, i64, i64, i64, i64 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_PIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"exec %s: cd to %s failed (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_EXEC = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_command(%struct.child_process* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.child_process*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.child_process* %0, %struct.child_process** %3, align 8
  %14 = load i32, i32* @STRERR_BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.child_process*, %struct.child_process** %3, align 8
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.child_process*, %struct.child_process** %3, align 8
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 0
  br label %27

27:                                               ; preds = %22, %1
  %28 = phi i1 [ false, %1 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %27
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %34 = call i64 @pipe(i32* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.child_process*, %struct.child_process** %3, align 8
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.child_process*, %struct.child_process** %3, align 8
  %43 = getelementptr inbounds %struct.child_process, %struct.child_process* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @close(i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @ERR_RUN_COMMAND_PIPE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %460

49:                                               ; preds = %32
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.child_process*, %struct.child_process** %3, align 8
  %53 = getelementptr inbounds %struct.child_process, %struct.child_process* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %49, %27
  %55 = load %struct.child_process*, %struct.child_process** %3, align 8
  %56 = getelementptr inbounds %struct.child_process, %struct.child_process* %55, i32 0, i32 10
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load %struct.child_process*, %struct.child_process** %3, align 8
  %61 = getelementptr inbounds %struct.child_process, %struct.child_process* %60, i32 0, i32 9
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.child_process*, %struct.child_process** %3, align 8
  %66 = getelementptr inbounds %struct.child_process, %struct.child_process* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 0
  br label %69

69:                                               ; preds = %64, %59, %54
  %70 = phi i1 [ false, %59 ], [ false, %54 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %69
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %76 = call i64 @pipe(i32* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %83 = call i32 @close_pair(i32* %82)
  br label %95

84:                                               ; preds = %78
  %85 = load %struct.child_process*, %struct.child_process** %3, align 8
  %86 = getelementptr inbounds %struct.child_process, %struct.child_process* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.child_process*, %struct.child_process** %3, align 8
  %91 = getelementptr inbounds %struct.child_process, %struct.child_process* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @close(i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %81
  %96 = load i32, i32* @ERR_RUN_COMMAND_PIPE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %460

98:                                               ; preds = %74
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.child_process*, %struct.child_process** %3, align 8
  %102 = getelementptr inbounds %struct.child_process, %struct.child_process* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %69
  %104 = load %struct.child_process*, %struct.child_process** %3, align 8
  %105 = getelementptr inbounds %struct.child_process, %struct.child_process* %104, i32 0, i32 11
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load %struct.child_process*, %struct.child_process** %3, align 8
  %110 = getelementptr inbounds %struct.child_process, %struct.child_process* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %111, 0
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i1 [ false, %103 ], [ %112, %108 ]
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %164

118:                                              ; preds = %113
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %120 = call i64 @pipe(i32* %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %159

122:                                              ; preds = %118
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %127 = call i32 @close_pair(i32* %126)
  br label %139

128:                                              ; preds = %122
  %129 = load %struct.child_process*, %struct.child_process** %3, align 8
  %130 = getelementptr inbounds %struct.child_process, %struct.child_process* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.child_process*, %struct.child_process** %3, align 8
  %135 = getelementptr inbounds %struct.child_process, %struct.child_process* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @close(i32 %136)
  br label %138

138:                                              ; preds = %133, %128
  br label %139

139:                                              ; preds = %138, %125
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %144 = call i32 @close_pair(i32* %143)
  br label %156

145:                                              ; preds = %139
  %146 = load %struct.child_process*, %struct.child_process** %3, align 8
  %147 = getelementptr inbounds %struct.child_process, %struct.child_process* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.child_process*, %struct.child_process** %3, align 8
  %152 = getelementptr inbounds %struct.child_process, %struct.child_process* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @close(i32 %153)
  br label %155

155:                                              ; preds = %150, %145
  br label %156

156:                                              ; preds = %155, %142
  %157 = load i32, i32* @ERR_RUN_COMMAND_PIPE, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %460

159:                                              ; preds = %118
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.child_process*, %struct.child_process** %3, align 8
  %163 = getelementptr inbounds %struct.child_process, %struct.child_process* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %159, %113
  %165 = call i32 @fflush(i32* null)
  %166 = call i64 (...) @fork()
  %167 = load %struct.child_process*, %struct.child_process** %3, align 8
  %168 = getelementptr inbounds %struct.child_process, %struct.child_process* %167, i32 0, i32 3
  store i64 %166, i64* %168, align 8
  %169 = load %struct.child_process*, %struct.child_process** %3, align 8
  %170 = getelementptr inbounds %struct.child_process, %struct.child_process* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %358, label %173

173:                                              ; preds = %164
  %174 = load %struct.child_process*, %struct.child_process** %3, align 8
  %175 = getelementptr inbounds %struct.child_process, %struct.child_process* %174, i32 0, i32 12
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = call i32 @dup_devnull(i32 0)
  br label %205

180:                                              ; preds = %173
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @dup2(i32 %185, i32 0)
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %188 = call i32 @close_pair(i32* %187)
  br label %204

189:                                              ; preds = %180
  %190 = load %struct.child_process*, %struct.child_process** %3, align 8
  %191 = getelementptr inbounds %struct.child_process, %struct.child_process* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %189
  %195 = load %struct.child_process*, %struct.child_process** %3, align 8
  %196 = getelementptr inbounds %struct.child_process, %struct.child_process* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @dup2(i32 %197, i32 0)
  %199 = load %struct.child_process*, %struct.child_process** %3, align 8
  %200 = getelementptr inbounds %struct.child_process, %struct.child_process* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @close(i32 %201)
  br label %203

203:                                              ; preds = %194, %189
  br label %204

204:                                              ; preds = %203, %183
  br label %205

205:                                              ; preds = %204, %178
  %206 = load %struct.child_process*, %struct.child_process** %3, align 8
  %207 = getelementptr inbounds %struct.child_process, %struct.child_process* %206, i32 0, i32 11
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = call i32 @dup_devnull(i32 2)
  br label %222

212:                                              ; preds = %205
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @dup2(i32 %217, i32 2)
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %220 = call i32 @close_pair(i32* %219)
  br label %221

221:                                              ; preds = %215, %212
  br label %222

222:                                              ; preds = %221, %210
  %223 = load %struct.child_process*, %struct.child_process** %3, align 8
  %224 = getelementptr inbounds %struct.child_process, %struct.child_process* %223, i32 0, i32 10
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = call i32 @dup_devnull(i32 1)
  br label %262

229:                                              ; preds = %222
  %230 = load %struct.child_process*, %struct.child_process** %3, align 8
  %231 = getelementptr inbounds %struct.child_process, %struct.child_process* %230, i32 0, i32 9
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = call i32 @dup2(i32 2, i32 1)
  br label %261

236:                                              ; preds = %229
  %237 = load i32, i32* %5, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @dup2(i32 %241, i32 1)
  %243 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %244 = call i32 @close_pair(i32* %243)
  br label %260

245:                                              ; preds = %236
  %246 = load %struct.child_process*, %struct.child_process** %3, align 8
  %247 = getelementptr inbounds %struct.child_process, %struct.child_process* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp sgt i32 %248, 1
  br i1 %249, label %250, label %259

250:                                              ; preds = %245
  %251 = load %struct.child_process*, %struct.child_process** %3, align 8
  %252 = getelementptr inbounds %struct.child_process, %struct.child_process* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @dup2(i32 %253, i32 1)
  %255 = load %struct.child_process*, %struct.child_process** %3, align 8
  %256 = getelementptr inbounds %struct.child_process, %struct.child_process* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @close(i32 %257)
  br label %259

259:                                              ; preds = %250, %245
  br label %260

260:                                              ; preds = %259, %239
  br label %261

261:                                              ; preds = %260, %234
  br label %262

262:                                              ; preds = %261, %227
  %263 = load %struct.child_process*, %struct.child_process** %3, align 8
  %264 = getelementptr inbounds %struct.child_process, %struct.child_process* %263, i32 0, i32 8
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %286

267:                                              ; preds = %262
  %268 = load %struct.child_process*, %struct.child_process** %3, align 8
  %269 = getelementptr inbounds %struct.child_process, %struct.child_process* %268, i32 0, i32 8
  %270 = load i64, i64* %269, align 8
  %271 = call i64 @chdir(i64 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %286

273:                                              ; preds = %267
  %274 = load %struct.child_process*, %struct.child_process** %3, align 8
  %275 = getelementptr inbounds %struct.child_process, %struct.child_process* %274, i32 0, i32 4
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.child_process*, %struct.child_process** %3, align 8
  %280 = getelementptr inbounds %struct.child_process, %struct.child_process* %279, i32 0, i32 8
  %281 = load i64, i64* %280, align 8
  %282 = load i32, i32* @errno, align 4
  %283 = trunc i64 %15 to i32
  %284 = call i32 @str_error_r(i32 %282, i8* %17, i32 %283)
  %285 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %278, i64 %281, i32 %284)
  br label %286

286:                                              ; preds = %273, %267, %262
  %287 = load %struct.child_process*, %struct.child_process** %3, align 8
  %288 = getelementptr inbounds %struct.child_process, %struct.child_process* %287, i32 0, i32 7
  %289 = load i64*, i64** %288, align 8
  %290 = icmp ne i64* %289, null
  br i1 %290, label %291, label %325

291:                                              ; preds = %286
  br label %292

292:                                              ; preds = %319, %291
  %293 = load %struct.child_process*, %struct.child_process** %3, align 8
  %294 = getelementptr inbounds %struct.child_process, %struct.child_process* %293, i32 0, i32 7
  %295 = load i64*, i64** %294, align 8
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %324

298:                                              ; preds = %292
  %299 = load %struct.child_process*, %struct.child_process** %3, align 8
  %300 = getelementptr inbounds %struct.child_process, %struct.child_process* %299, i32 0, i32 7
  %301 = load i64*, i64** %300, align 8
  %302 = load i64, i64* %301, align 8
  %303 = call i64 @strchr(i64 %302, i8 signext 61)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %298
  %306 = load %struct.child_process*, %struct.child_process** %3, align 8
  %307 = getelementptr inbounds %struct.child_process, %struct.child_process* %306, i32 0, i32 7
  %308 = load i64*, i64** %307, align 8
  %309 = load i64, i64* %308, align 8
  %310 = inttoptr i64 %309 to i8*
  %311 = call i32 @putenv(i8* %310)
  br label %318

312:                                              ; preds = %298
  %313 = load %struct.child_process*, %struct.child_process** %3, align 8
  %314 = getelementptr inbounds %struct.child_process, %struct.child_process* %313, i32 0, i32 7
  %315 = load i64*, i64** %314, align 8
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @unsetenv(i64 %316)
  br label %318

318:                                              ; preds = %312, %305
  br label %319

319:                                              ; preds = %318
  %320 = load %struct.child_process*, %struct.child_process** %3, align 8
  %321 = getelementptr inbounds %struct.child_process, %struct.child_process* %320, i32 0, i32 7
  %322 = load i64*, i64** %321, align 8
  %323 = getelementptr inbounds i64, i64* %322, i32 1
  store i64* %323, i64** %321, align 8
  br label %292

324:                                              ; preds = %292
  br label %325

325:                                              ; preds = %324, %286
  %326 = load %struct.child_process*, %struct.child_process** %3, align 8
  %327 = getelementptr inbounds %struct.child_process, %struct.child_process* %326, i32 0, i32 6
  %328 = load i32 (...)*, i32 (...)** %327, align 8
  %329 = icmp ne i32 (...)* %328, null
  br i1 %329, label %330, label %335

330:                                              ; preds = %325
  %331 = load %struct.child_process*, %struct.child_process** %3, align 8
  %332 = getelementptr inbounds %struct.child_process, %struct.child_process* %331, i32 0, i32 6
  %333 = load i32 (...)*, i32 (...)** %332, align 8
  %334 = call i32 (...) %333()
  br label %335

335:                                              ; preds = %330, %325
  %336 = load %struct.child_process*, %struct.child_process** %3, align 8
  %337 = getelementptr inbounds %struct.child_process, %struct.child_process* %336, i32 0, i32 5
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %335
  %341 = load %struct.child_process*, %struct.child_process** %3, align 8
  %342 = getelementptr inbounds %struct.child_process, %struct.child_process* %341, i32 0, i32 4
  %343 = load i32*, i32** %342, align 8
  %344 = call i32 @execv_cmd(i32* %343)
  br label %356

345:                                              ; preds = %335
  %346 = load %struct.child_process*, %struct.child_process** %3, align 8
  %347 = getelementptr inbounds %struct.child_process, %struct.child_process* %346, i32 0, i32 4
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.child_process*, %struct.child_process** %3, align 8
  %352 = getelementptr inbounds %struct.child_process, %struct.child_process* %351, i32 0, i32 4
  %353 = load i32*, i32** %352, align 8
  %354 = bitcast i32* %353 to i8**
  %355 = call i32 @execvp(i32 %350, i8** %354)
  br label %356

356:                                              ; preds = %345, %340
  %357 = call i32 @exit(i32 127) #4
  unreachable

358:                                              ; preds = %164
  %359 = load %struct.child_process*, %struct.child_process** %3, align 8
  %360 = getelementptr inbounds %struct.child_process, %struct.child_process* %359, i32 0, i32 3
  %361 = load i64, i64* %360, align 8
  %362 = icmp slt i64 %361, 0
  br i1 %362, label %363, label %416

363:                                              ; preds = %358
  %364 = load i32, i32* @errno, align 4
  store i32 %364, i32* %13, align 4
  %365 = load i32, i32* %4, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %363
  %368 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %369 = call i32 @close_pair(i32* %368)
  br label %381

370:                                              ; preds = %363
  %371 = load %struct.child_process*, %struct.child_process** %3, align 8
  %372 = getelementptr inbounds %struct.child_process, %struct.child_process* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %380

375:                                              ; preds = %370
  %376 = load %struct.child_process*, %struct.child_process** %3, align 8
  %377 = getelementptr inbounds %struct.child_process, %struct.child_process* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @close(i32 %378)
  br label %380

380:                                              ; preds = %375, %370
  br label %381

381:                                              ; preds = %380, %367
  %382 = load i32, i32* %5, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  %385 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %386 = call i32 @close_pair(i32* %385)
  br label %398

387:                                              ; preds = %381
  %388 = load %struct.child_process*, %struct.child_process** %3, align 8
  %389 = getelementptr inbounds %struct.child_process, %struct.child_process* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %387
  %393 = load %struct.child_process*, %struct.child_process** %3, align 8
  %394 = getelementptr inbounds %struct.child_process, %struct.child_process* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @close(i32 %395)
  br label %397

397:                                              ; preds = %392, %387
  br label %398

398:                                              ; preds = %397, %384
  %399 = load i32, i32* %6, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %403 = call i32 @close_pair(i32* %402)
  br label %404

404:                                              ; preds = %401, %398
  %405 = load i32, i32* %13, align 4
  %406 = load i32, i32* @ENOENT, align 4
  %407 = icmp eq i32 %405, %406
  br i1 %407, label %408, label %411

408:                                              ; preds = %404
  %409 = load i32, i32* @ERR_RUN_COMMAND_EXEC, align 4
  %410 = sub nsw i32 0, %409
  br label %414

411:                                              ; preds = %404
  %412 = load i32, i32* @ERR_RUN_COMMAND_FORK, align 4
  %413 = sub nsw i32 0, %412
  br label %414

414:                                              ; preds = %411, %408
  %415 = phi i32 [ %410, %408 ], [ %413, %411 ]
  store i32 %415, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %460

416:                                              ; preds = %358
  %417 = load i32, i32* %4, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %423

419:                                              ; preds = %416
  %420 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @close(i32 %421)
  br label %434

423:                                              ; preds = %416
  %424 = load %struct.child_process*, %struct.child_process** %3, align 8
  %425 = getelementptr inbounds %struct.child_process, %struct.child_process* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %433

428:                                              ; preds = %423
  %429 = load %struct.child_process*, %struct.child_process** %3, align 8
  %430 = getelementptr inbounds %struct.child_process, %struct.child_process* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i32 @close(i32 %431)
  br label %433

433:                                              ; preds = %428, %423
  br label %434

434:                                              ; preds = %433, %419
  %435 = load i32, i32* %5, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %441

437:                                              ; preds = %434
  %438 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @close(i32 %439)
  br label %452

441:                                              ; preds = %434
  %442 = load %struct.child_process*, %struct.child_process** %3, align 8
  %443 = getelementptr inbounds %struct.child_process, %struct.child_process* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %451

446:                                              ; preds = %441
  %447 = load %struct.child_process*, %struct.child_process** %3, align 8
  %448 = getelementptr inbounds %struct.child_process, %struct.child_process* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = call i32 @close(i32 %449)
  br label %451

451:                                              ; preds = %446, %441
  br label %452

452:                                              ; preds = %451, %437
  %453 = load i32, i32* %6, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %452
  %456 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @close(i32 %457)
  br label %459

459:                                              ; preds = %455, %452
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %460

460:                                              ; preds = %459, %414, %156, %95, %46
  %461 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %461)
  %462 = load i32, i32* %2, align 4
  ret i32 %462
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @close_pair(i32*) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @dup_devnull(i32) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i64 @chdir(i64) #2

declare dso_local i32 @die(i8*, i32, i64, i32) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

declare dso_local i64 @strchr(i64, i8 signext) #2

declare dso_local i32 @putenv(i8*) #2

declare dso_local i32 @unsetenv(i64) #2

declare dso_local i32 @execv_cmd(i32*) #2

declare dso_local i32 @execvp(i32, i8**) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
