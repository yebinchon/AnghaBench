; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_parse_short.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_parse_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.msdos_dir_entry = type { i32, i32, i32 }
%struct.msdos_sb_info = type { %struct.TYPE_2__, %struct.nls_table* }
%struct.TYPE_2__ = type { i32, i32, i16 }
%struct.nls_table = type { i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@CASE_LOWER_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@CASE_LOWER_EXT = common dso_local global i32 0, align 4
@FAT_MAX_SHORT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.msdos_dir_entry*, i8*, i32)* @fat_parse_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_parse_short(%struct.super_block* %0, %struct.msdos_dir_entry* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.msdos_dir_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.msdos_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca %struct.nls_table*, align 8
  %14 = alloca [14 x i32], align 16
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.msdos_dir_entry* %1, %struct.msdos_dir_entry** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %28)
  store %struct.msdos_sb_info* %29, %struct.msdos_sb_info** %9, align 8
  %30 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %31 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %35 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %39 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i16, i16* %40, align 8
  store i16 %41, i16* %12, align 2
  %42 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %43 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %42, i32 0, i32 1
  %44 = load %struct.nls_table*, %struct.nls_table** %43, align 8
  store %struct.nls_table* %44, %struct.nls_table** %13, align 8
  %45 = load i32, i32* @MSDOS_NAME, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %16, align 8
  %48 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %17, align 8
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %18, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %6, align 8
  %57 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATTR_HIDDEN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i8*, i8** %18, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %18, align 8
  store i8 46, i8* %63, align 1
  store i32 1, i32* %24, align 4
  br label %65

65:                                               ; preds = %62, %55, %52, %4
  %66 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %6, align 8
  %67 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = trunc i64 %46 to i32
  %70 = call i32 @memcpy(i8* %48, i32 %68, i32 %69)
  %71 = getelementptr inbounds i8, i8* %48, i64 0
  %72 = load i8, i8* %71, align 16
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 5
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 -27, i8* %76, align 16
  br label %77

77:                                               ; preds = %75, %65
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %78

78:                                               ; preds = %181, %77
  %79 = load i32, i32* %21, align 4
  %80 = icmp slt i32 %79, 8
  br i1 %80, label %81, label %182

81:                                               ; preds = %78
  %82 = load i32, i32* %21, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %48, i64 %83
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %15, align 1
  %86 = load i8, i8* %15, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %182

89:                                               ; preds = %81
  %90 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %91 = load i32, i32* %21, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %48, i64 %92
  %94 = load i32, i32* %21, align 4
  %95 = sub nsw i32 8, %94
  %96 = load i32, i32* %22, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %22, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds [14 x i32], [14 x i32]* %14, i64 0, i64 %98
  %100 = load i16, i16* %12, align 2
  %101 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %6, align 8
  %102 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CASE_LOWER_BASE, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @fat_shortname2uni(%struct.nls_table* %90, i8* %93, i32 %95, i32* %99, i16 zeroext %100, i32 %105)
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %20, align 4
  %108 = icmp sle i32 %107, 1
  br i1 %108, label %109, label %139

109:                                              ; preds = %89
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i8, i8* %15, align 1
  %117 = zext i8 %116 to i32
  br label %122

118:                                              ; preds = %112
  %119 = load i8, i8* %15, align 1
  %120 = call zeroext i8 @fat_tolower(i8 zeroext %119)
  %121 = zext i8 %120 to i32
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i32 [ %117, %115 ], [ %121, %118 ]
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %18, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8 %124, i8* %128, align 1
  br label %129

129:                                              ; preds = %122, %109
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %21, align 4
  %132 = load i8, i8* %15, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 32
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, i32* %21, align 4
  store i32 %136, i32* %25, align 4
  %137 = load i32, i32* %22, align 4
  store i32 %137, i32* %26, align 4
  br label %138

138:                                              ; preds = %135, %129
  br label %181

139:                                              ; preds = %89
  %140 = load i32, i32* %22, align 4
  store i32 %140, i32* %26, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %21, align 4
  %146 = sub nsw i32 8, %145
  %147 = call i32 @min(i32 %144, i32 %146)
  %148 = load i32, i32* %21, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %21, align 4
  br label %175

150:                                              ; preds = %139
  store i32 0, i32* %19, align 4
  br label %151

151:                                              ; preds = %169, %150
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %20, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* %21, align 4
  %157 = icmp slt i32 %156, 8
  br label %158

158:                                              ; preds = %155, %151
  %159 = phi i1 [ false, %151 ], [ %157, %155 ]
  br i1 %159, label %160, label %174

160:                                              ; preds = %158
  %161 = load i32, i32* %21, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %48, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = load i8*, i8** %18, align 8
  %166 = load i32, i32* %21, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 %164, i8* %168, align 1
  br label %169

169:                                              ; preds = %160
  %170 = load i32, i32* %19, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %21, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %21, align 4
  br label %151

174:                                              ; preds = %158
  br label %175

175:                                              ; preds = %174, %143
  %176 = load i32, i32* %20, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* %21, align 4
  store i32 %179, i32* %25, align 4
  br label %180

180:                                              ; preds = %178, %175
  br label %181

181:                                              ; preds = %180, %138
  br label %78

182:                                              ; preds = %88, %78
  %183 = load i32, i32* %25, align 4
  store i32 %183, i32* %21, align 4
  %184 = load i32, i32* %26, align 4
  store i32 %184, i32* %22, align 4
  %185 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %186 = load i32, i32* %22, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %22, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds [14 x i32], [14 x i32]* %14, i64 0, i64 %188
  %190 = call i32 @fat_short2uni(%struct.nls_table* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32* %189)
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %182
  %194 = load i8*, i8** %18, align 8
  %195 = load i32, i32* %21, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  store i8 46, i8* %197, align 1
  br label %198

198:                                              ; preds = %193, %182
  %199 = load i32, i32* %21, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %21, align 4
  store i32 8, i32* %23, align 4
  br label %201

201:                                              ; preds = %316, %198
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* @MSDOS_NAME, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %317

205:                                              ; preds = %201
  %206 = load i32, i32* %23, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %48, i64 %207
  %209 = load i8, i8* %208, align 1
  store i8 %209, i8* %15, align 1
  %210 = load i8, i8* %15, align 1
  %211 = icmp ne i8 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %205
  br label %317

213:                                              ; preds = %205
  %214 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %215 = load i32, i32* %23, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %48, i64 %216
  %218 = load i32, i32* @MSDOS_NAME, align 4
  %219 = load i32, i32* %23, align 4
  %220 = sub nsw i32 %218, %219
  %221 = load i32, i32* %22, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %22, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds [14 x i32], [14 x i32]* %14, i64 0, i64 %223
  %225 = load i16, i16* %12, align 2
  %226 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %6, align 8
  %227 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @CASE_LOWER_EXT, align 4
  %230 = and i32 %228, %229
  %231 = call i32 @fat_shortname2uni(%struct.nls_table* %214, i8* %217, i32 %220, i32* %224, i16 zeroext %225, i32 %230)
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %20, align 4
  %233 = icmp sle i32 %232, 1
  br i1 %233, label %234, label %266

234:                                              ; preds = %213
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %23, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %256, label %239

239:                                              ; preds = %234
  %240 = load i32, i32* %11, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i8, i8* %15, align 1
  %244 = zext i8 %243 to i32
  br label %249

245:                                              ; preds = %239
  %246 = load i8, i8* %15, align 1
  %247 = call zeroext i8 @fat_tolower(i8 zeroext %246)
  %248 = zext i8 %247 to i32
  br label %249

249:                                              ; preds = %245, %242
  %250 = phi i32 [ %244, %242 ], [ %248, %245 ]
  %251 = trunc i32 %250 to i8
  %252 = load i8*, i8** %18, align 8
  %253 = load i32, i32* %21, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  store i8 %251, i8* %255, align 1
  br label %256

256:                                              ; preds = %249, %234
  %257 = load i32, i32* %21, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %21, align 4
  %259 = load i8, i8* %15, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp ne i32 %260, 32
  br i1 %261, label %262, label %265

262:                                              ; preds = %256
  %263 = load i32, i32* %21, align 4
  store i32 %263, i32* %25, align 4
  %264 = load i32, i32* %22, align 4
  store i32 %264, i32* %26, align 4
  br label %265

265:                                              ; preds = %262, %256
  br label %316

266:                                              ; preds = %213
  %267 = load i32, i32* %22, align 4
  store i32 %267, i32* %26, align 4
  %268 = load i32, i32* %10, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %266
  %271 = load i32, i32* %20, align 4
  %272 = load i32, i32* @MSDOS_NAME, align 4
  %273 = load i32, i32* %23, align 4
  %274 = sub nsw i32 %272, %273
  %275 = call i32 @min(i32 %271, i32 %274)
  store i32 %275, i32* %27, align 4
  %276 = load i32, i32* %27, align 4
  %277 = load i32, i32* %23, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %23, align 4
  %279 = load i32, i32* %27, align 4
  %280 = load i32, i32* %21, align 4
  %281 = add nsw i32 %280, %279
  store i32 %281, i32* %21, align 4
  br label %310

282:                                              ; preds = %266
  store i32 0, i32* %19, align 4
  br label %283

283:                                              ; preds = %302, %282
  %284 = load i32, i32* %19, align 4
  %285 = load i32, i32* %20, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = load i32, i32* %23, align 4
  %289 = load i32, i32* @MSDOS_NAME, align 4
  %290 = icmp slt i32 %288, %289
  br label %291

291:                                              ; preds = %287, %283
  %292 = phi i1 [ false, %283 ], [ %290, %287 ]
  br i1 %292, label %293, label %309

293:                                              ; preds = %291
  %294 = load i32, i32* %23, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %48, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = load i8*, i8** %18, align 8
  %299 = load i32, i32* %21, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  store i8 %297, i8* %301, align 1
  br label %302

302:                                              ; preds = %293
  %303 = load i32, i32* %19, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %19, align 4
  %305 = load i32, i32* %21, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %21, align 4
  %307 = load i32, i32* %23, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %23, align 4
  br label %283

309:                                              ; preds = %291
  br label %310

310:                                              ; preds = %309, %270
  %311 = load i32, i32* %20, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = load i32, i32* %21, align 4
  store i32 %314, i32* %25, align 4
  br label %315

315:                                              ; preds = %313, %310
  br label %316

316:                                              ; preds = %315, %265
  br label %201

317:                                              ; preds = %212, %201
  %318 = load i32, i32* %25, align 4
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %339

320:                                              ; preds = %317
  %321 = load i32, i32* %24, align 4
  %322 = load i32, i32* %25, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %25, align 4
  %324 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %325 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %320
  %330 = load i32, i32* %26, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [14 x i32], [14 x i32]* %14, i64 0, i64 %331
  store i32 0, i32* %332, align 4
  %333 = load %struct.super_block*, %struct.super_block** %5, align 8
  %334 = getelementptr inbounds [14 x i32], [14 x i32]* %14, i64 0, i64 0
  %335 = load i8*, i8** %7, align 8
  %336 = load i32, i32* @FAT_MAX_SHORT_SIZE, align 4
  %337 = call i32 @fat_uni_to_x8(%struct.super_block* %333, i32* %334, i8* %335, i32 %336)
  store i32 %337, i32* %25, align 4
  br label %338

338:                                              ; preds = %329, %320
  br label %339

339:                                              ; preds = %338, %317
  %340 = load i32, i32* %25, align 4
  %341 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %341)
  ret i32 %340
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @fat_shortname2uni(%struct.nls_table*, i8*, i32, i32*, i16 zeroext, i32) #1

declare dso_local zeroext i8 @fat_tolower(i8 zeroext) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fat_short2uni(%struct.nls_table*, i8*, i32, i32*) #1

declare dso_local i32 @fat_uni_to_x8(%struct.super_block*, i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
