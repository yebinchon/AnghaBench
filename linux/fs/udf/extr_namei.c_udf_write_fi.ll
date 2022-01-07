; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_write_fi.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_write_fi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fileIdentDesc = type { i32, %struct.TYPE_4__, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.udf_fileident_bh = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64 }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_write_fi(%struct.inode* %0, %struct.fileIdentDesc* %1, %struct.fileIdentDesc* %2, %struct.udf_fileident_bh* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.fileIdentDesc*, align 8
  %9 = alloca %struct.fileIdentDesc*, align 8
  %10 = alloca %struct.udf_fileident_bh*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.fileIdentDesc* %1, %struct.fileIdentDesc** %8, align 8
  store %struct.fileIdentDesc* %2, %struct.fileIdentDesc** %9, align 8
  store %struct.udf_fileident_bh* %3, %struct.udf_fileident_bh** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %21 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %24 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %13, align 4
  %30 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %31 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le16_to_cpu(i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %35 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %17, align 4
  %37 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %38 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %41 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = load i32, i32* %16, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* %17, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, 64
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call %struct.TYPE_6__* @UDF_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %6
  store i32 1, i32* %19, align 4
  br label %58

58:                                               ; preds = %57, %6
  %59 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %60 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, 64
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %15, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %123

67:                                               ; preds = %58
  %68 = load i32, i32* %19, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70, %67
  %76 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %77 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @memcpy(i32* %79, i32* %80, i32 %81)
  br label %122

83:                                               ; preds = %70
  %84 = load i32, i32* %15, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %88 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %87, i32 0, i32 3
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @memcpy(i32* %94, i32* %95, i32 %96)
  br label %121

98:                                               ; preds = %83
  %99 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %100 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 0, %104
  %106 = call i32 @memcpy(i32* %102, i32* %103, i32 %105)
  %107 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %108 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %107, i32 0, i32 3
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 0, %114
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @memcpy(i32* %111, i32* %116, i32 %119)
  br label %121

121:                                              ; preds = %98, %86
  br label %122

122:                                              ; preds = %121, %75
  br label %123

123:                                              ; preds = %122, %58
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %15, align 4
  %127 = load i32*, i32** %12, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %191

129:                                              ; preds = %123
  %130 = load i32, i32* %19, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %133, %134
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %132, %129
  %138 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %139 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i32*
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32*, i32** %12, align 8
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @memcpy(i32* %144, i32* %145, i32 %146)
  br label %190

148:                                              ; preds = %132
  %149 = load i32, i32* %15, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %153 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %152, i32 0, i32 3
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @memcpy(i32* %159, i32* %160, i32 %161)
  br label %189

163:                                              ; preds = %148
  %164 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %165 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i32*
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sub nsw i32 0, %172
  %174 = call i32 @memcpy(i32* %170, i32* %171, i32 %173)
  %175 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %176 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %175, i32 0, i32 3
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32*, i32** %12, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = sub i64 0, %182
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %185, %186
  %188 = call i32 @memcpy(i32* %179, i32* %184, i32 %187)
  br label %189

189:                                              ; preds = %163, %151
  br label %190

190:                                              ; preds = %189, %137
  br label %191

191:                                              ; preds = %190, %123
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %19, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %191
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %18, align 4
  %200 = add nsw i32 %198, %199
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %197, %191
  %203 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %204 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i32*
  %207 = load i32, i32* %16, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %18, align 4
  %214 = call i32 @memset(i32* %212, i32 0, i32 %213)
  br label %253

215:                                              ; preds = %197
  %216 = load i32, i32* %15, align 4
  %217 = icmp sge i32 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %220 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %219, i32 0, i32 3
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %15, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %18, align 4
  %228 = call i32 @memset(i32* %226, i32 0, i32 %227)
  br label %252

229:                                              ; preds = %215
  %230 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %231 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to i32*
  %234 = load i32, i32* %16, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %17, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %15, align 4
  %241 = sub nsw i32 0, %240
  %242 = call i32 @memset(i32* %239, i32 0, i32 %241)
  %243 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %244 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %243, i32 0, i32 3
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* %15, align 4
  %250 = add nsw i32 %248, %249
  %251 = call i32 @memset(i32* %247, i32 0, i32 %250)
  br label %252

252:                                              ; preds = %229, %218
  br label %253

253:                                              ; preds = %252, %202
  %254 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %255 = bitcast %struct.fileIdentDesc* %254 to i32*
  %256 = getelementptr inbounds i32, i32* %255, i64 4
  %257 = call i32 @crc_itu_t(i32 0, i32* %256, i32 60)
  store i32 %257, i32* %14, align 4
  %258 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %259 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %258, i32 0, i32 2
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %262 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %261, i32 0, i32 3
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %262, align 8
  %264 = icmp eq %struct.TYPE_5__* %260, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %253
  %266 = load i32, i32* %14, align 4
  %267 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %268 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = inttoptr i64 %269 to i32*
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = add i64 %272, 4
  %274 = sub i64 %273, 64
  %275 = trunc i64 %274 to i32
  %276 = call i32 @crc_itu_t(i32 %266, i32* %270, i32 %275)
  store i32 %276, i32* %14, align 4
  br label %328

277:                                              ; preds = %253
  %278 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %279 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 0, %280
  %282 = sext i32 %281 to i64
  %283 = icmp uge i64 64, %282
  br i1 %283, label %284, label %303

284:                                              ; preds = %277
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %287 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %286, i32 0, i32 3
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 64
  %292 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %293 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %291, i64 %295
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = add i64 %298, 4
  %300 = sub i64 %299, 64
  %301 = trunc i64 %300 to i32
  %302 = call i32 @crc_itu_t(i32 %285, i32* %296, i32 %301)
  store i32 %302, i32* %14, align 4
  br label %327

303:                                              ; preds = %277
  %304 = load i32, i32* %14, align 4
  %305 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %306 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %305, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = inttoptr i64 %307 to i32*
  %309 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %310 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = sub nsw i32 0, %311
  %313 = sext i32 %312 to i64
  %314 = sub i64 %313, 64
  %315 = trunc i64 %314 to i32
  %316 = call i32 @crc_itu_t(i32 %304, i32* %308, i32 %315)
  store i32 %316, i32* %14, align 4
  %317 = load i32, i32* %14, align 4
  %318 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %319 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %318, i32 0, i32 3
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %324 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @crc_itu_t(i32 %317, i32* %322, i32 %325)
  store i32 %326, i32* %14, align 4
  br label %327

327:                                              ; preds = %303, %284
  br label %328

328:                                              ; preds = %327, %265
  %329 = load i32, i32* %14, align 4
  %330 = call i8* @cpu_to_le16(i32 %329)
  %331 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %332 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 2
  store i8* %330, i8** %333, align 8
  %334 = load i32, i32* %13, align 4
  %335 = call i8* @cpu_to_le16(i32 %334)
  %336 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %337 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 1
  store i8* %335, i8** %338, align 8
  %339 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %340 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %339, i32 0, i32 1
  %341 = call i32 @udf_tag_checksum(%struct.TYPE_4__* %340)
  %342 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %343 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 0
  store i32 %341, i32* %344, align 8
  %345 = load i32, i32* %19, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %354, label %347

347:                                              ; preds = %328
  %348 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %349 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = sub nsw i32 0, %350
  %352 = sext i32 %351 to i64
  %353 = icmp ule i64 64, %352
  br i1 %353, label %354, label %360

354:                                              ; preds = %347, %328
  %355 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %356 = bitcast %struct.fileIdentDesc* %355 to i32*
  %357 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %358 = bitcast %struct.fileIdentDesc* %357 to i32*
  %359 = call i32 @memcpy(i32* %356, i32* %358, i32 64)
  br label %390

360:                                              ; preds = %347
  %361 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %362 = bitcast %struct.fileIdentDesc* %361 to i32*
  %363 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %364 = bitcast %struct.fileIdentDesc* %363 to i32*
  %365 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %366 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = sub nsw i32 0, %367
  %369 = call i32 @memcpy(i32* %362, i32* %364, i32 %368)
  %370 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %371 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %370, i32 0, i32 3
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %376 = bitcast %struct.fileIdentDesc* %375 to i32*
  %377 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %378 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = sext i32 %379 to i64
  %381 = sub i64 0, %380
  %382 = getelementptr inbounds i32, i32* %376, i64 %381
  %383 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %384 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  %387 = add i64 64, %386
  %388 = trunc i64 %387 to i32
  %389 = call i32 @memcpy(i32* %374, i32* %382, i32 %388)
  br label %390

390:                                              ; preds = %360, %354
  %391 = load i32, i32* %19, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = load %struct.inode*, %struct.inode** %7, align 8
  %395 = call i32 @mark_inode_dirty(%struct.inode* %394)
  br label %416

396:                                              ; preds = %390
  %397 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %398 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %397, i32 0, i32 2
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %398, align 8
  %400 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %401 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %400, i32 0, i32 3
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %401, align 8
  %403 = icmp ne %struct.TYPE_5__* %399, %402
  br i1 %403, label %404, label %410

404:                                              ; preds = %396
  %405 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %406 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %405, i32 0, i32 3
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** %406, align 8
  %408 = load %struct.inode*, %struct.inode** %7, align 8
  %409 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_5__* %407, %struct.inode* %408)
  br label %410

410:                                              ; preds = %404, %396
  %411 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %10, align 8
  %412 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %411, i32 0, i32 2
  %413 = load %struct.TYPE_5__*, %struct.TYPE_5__** %412, align 8
  %414 = load %struct.inode*, %struct.inode** %7, align 8
  %415 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_5__* %413, %struct.inode* %414)
  br label %416

416:                                              ; preds = %410, %393
  ret i32 0
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @UDF_I(%struct.inode*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @crc_itu_t(i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @udf_tag_checksum(%struct.TYPE_4__*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.TYPE_5__*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
