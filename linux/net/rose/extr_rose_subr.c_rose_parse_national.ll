; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_subr.c_rose_parse_national.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_subr.c_rose_parse_national.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_facilities_struct = type { i8, i32, i32, i32*, i32*, i32, i32 }

@FAC_NATIONAL_RAND = common dso_local global i8 0, align 1
@FAC_NATIONAL_DEST_DIGI = common dso_local global i8 0, align 1
@AX25_ADDR_LEN = common dso_local global i8 0, align 1
@FAC_NATIONAL_SRC_DIGI = common dso_local global i8 0, align 1
@FAC_NATIONAL_FAIL_CALL = common dso_local global i8 0, align 1
@FAC_NATIONAL_FAIL_ADD = common dso_local global i8 0, align 1
@ROSE_ADDR_LEN = common dso_local global i8 0, align 1
@FAC_NATIONAL_DIGIS = common dso_local global i8 0, align 1
@AX25_HBIT = common dso_local global i8 0, align 1
@ROSE_MAX_DIGIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rose_facilities_struct*, i32)* @rose_parse_national to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_parse_national(i8* %0, %struct.rose_facilities_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rose_facilities_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.rose_facilities_struct* %1, %struct.rose_facilities_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 0, i8* %11, align 1
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %319, %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 192
  switch i32 %17, label %310 [
    i32 0, label %18
    i32 64, label %31
    i32 128, label %68
    i32 192, label %81
  ]

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %324

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  store i8* %24, i8** %5, align 8
  %25 = load i8, i8* %11, align 1
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %26, 2
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %11, align 1
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 2
  store i32 %30, i32* %7, align 4
  br label %310

31:                                               ; preds = %13
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %324

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @FAC_NATIONAL_RAND, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 8
  %48 = and i32 %47, 65280
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, 0
  %54 = and i32 %53, 255
  %55 = add nsw i32 %48, %54
  %56 = trunc i32 %55 to i8
  %57 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %58 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %57, i32 0, i32 0
  store i8 %56, i8* %58, align 8
  br label %59

59:                                               ; preds = %42, %35
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  store i8* %61, i8** %5, align 8
  %62 = load i8, i8* %11, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %63, 3
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %11, align 1
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %66, 3
  store i32 %67, i32* %7, align 4
  br label %310

68:                                               ; preds = %13
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %324

72:                                               ; preds = %68
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  store i8* %74, i8** %5, align 8
  %75 = load i8, i8* %11, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %76, 4
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %11, align 1
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 4
  store i32 %80, i32* %7, align 4
  br label %310

81:                                               ; preds = %13
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  br label %324

85:                                               ; preds = %81
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %9, align 1
  %89 = load i32, i32* %7, align 4
  %90 = load i8, i8* %9, align 1
  %91 = zext i8 %90 to i32
  %92 = add nsw i32 2, %91
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  store i32 -1, i32* %4, align 4
  br label %324

95:                                               ; preds = %85
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @FAC_NATIONAL_DEST_DIGI, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %102
  %106 = load i8, i8* %9, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @AX25_ADDR_LEN, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 -1, i32* %4, align 4
  br label %324

112:                                              ; preds = %105
  %113 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %114 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* @AX25_ADDR_LEN, align 1
  %120 = call i32 @memcpy(i32* %116, i8* %118, i8 zeroext %119)
  %121 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %122 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %112, %102
  br label %291

124:                                              ; preds = %95
  %125 = load i8*, i8** %5, align 8
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8, i8* @FAC_NATIONAL_SRC_DIGI, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %124
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %152, label %134

134:                                              ; preds = %131
  %135 = load i8, i8* %9, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* @AX25_ADDR_LEN, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 -1, i32* %4, align 4
  br label %324

141:                                              ; preds = %134
  %142 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %143 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 2
  %148 = load i8, i8* @AX25_ADDR_LEN, align 1
  %149 = call i32 @memcpy(i32* %145, i8* %147, i8 zeroext %148)
  %150 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %151 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %150, i32 0, i32 2
  store i32 1, i32* %151, align 8
  br label %152

152:                                              ; preds = %141, %131
  br label %290

153:                                              ; preds = %124
  %154 = load i8*, i8** %5, align 8
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = load i8, i8* @FAC_NATIONAL_FAIL_CALL, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %156, %158
  br i1 %159, label %160, label %174

160:                                              ; preds = %153
  %161 = load i8, i8* %9, align 1
  %162 = zext i8 %161 to i32
  %163 = load i8, i8* @AX25_ADDR_LEN, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  store i32 -1, i32* %4, align 4
  br label %324

167:                                              ; preds = %160
  %168 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %169 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %168, i32 0, i32 6
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  %172 = load i8, i8* @AX25_ADDR_LEN, align 1
  %173 = call i32 @memcpy(i32* %169, i8* %171, i8 zeroext %172)
  br label %289

174:                                              ; preds = %153
  %175 = load i8*, i8** %5, align 8
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8, i8* @FAC_NATIONAL_FAIL_ADD, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %196

181:                                              ; preds = %174
  %182 = load i8, i8* %9, align 1
  %183 = zext i8 %182 to i32
  %184 = load i8, i8* @ROSE_ADDR_LEN, align 1
  %185 = zext i8 %184 to i32
  %186 = add nsw i32 1, %185
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  store i32 -1, i32* %4, align 4
  br label %324

189:                                              ; preds = %181
  %190 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %191 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %190, i32 0, i32 5
  %192 = load i8*, i8** %5, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 3
  %194 = load i8, i8* @ROSE_ADDR_LEN, align 1
  %195 = call i32 @memcpy(i32* %191, i8* %193, i8 zeroext %194)
  br label %288

196:                                              ; preds = %174
  %197 = load i8*, i8** %5, align 8
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = load i8, i8* @FAC_NATIONAL_DIGIS, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %287

203:                                              ; preds = %196
  %204 = load i8, i8* %9, align 1
  %205 = zext i8 %204 to i32
  %206 = load i8, i8* @AX25_ADDR_LEN, align 1
  %207 = zext i8 %206 to i32
  %208 = srem i32 %205, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  store i32 -1, i32* %4, align 4
  br label %324

211:                                              ; preds = %203
  store i32 1, i32* %12, align 4
  %212 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %213 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %212, i32 0, i32 1
  store i32 0, i32* %213, align 4
  %214 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %215 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %214, i32 0, i32 2
  store i32 0, i32* %215, align 8
  %216 = load i8*, i8** %5, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  store i8* %217, i8** %8, align 8
  store i8 0, i8* %10, align 1
  br label %218

218:                                              ; preds = %274, %211
  %219 = load i8, i8* %10, align 1
  %220 = zext i8 %219 to i32
  %221 = load i8, i8* %9, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp slt i32 %220, %222
  br i1 %223, label %224, label %286

224:                                              ; preds = %218
  %225 = load i8*, i8** %8, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 6
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = load i8, i8* @AX25_HBIT, align 1
  %230 = zext i8 %229 to i32
  %231 = and i32 %228, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %253

233:                                              ; preds = %224
  %234 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %235 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @ROSE_MAX_DIGIS, align 4
  %238 = icmp sge i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %233
  store i32 -1, i32* %4, align 4
  br label %324

240:                                              ; preds = %233
  %241 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %242 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %241, i32 0, i32 4
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %245 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i32, i32* %243, i64 %248
  %250 = load i8*, i8** %8, align 8
  %251 = load i8, i8* @AX25_ADDR_LEN, align 1
  %252 = call i32 @memcpy(i32* %249, i8* %250, i8 zeroext %251)
  br label %273

253:                                              ; preds = %224
  %254 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %255 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @ROSE_MAX_DIGIS, align 4
  %258 = icmp sge i32 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  store i32 -1, i32* %4, align 4
  br label %324

260:                                              ; preds = %253
  %261 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %262 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %6, align 8
  %265 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 4
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %263, i64 %268
  %270 = load i8*, i8** %8, align 8
  %271 = load i8, i8* @AX25_ADDR_LEN, align 1
  %272 = call i32 @memcpy(i32* %269, i8* %270, i8 zeroext %271)
  br label %273

273:                                              ; preds = %260, %240
  br label %274

274:                                              ; preds = %273
  %275 = load i8, i8* @AX25_ADDR_LEN, align 1
  %276 = zext i8 %275 to i32
  %277 = load i8*, i8** %8, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  store i8* %279, i8** %8, align 8
  %280 = load i8, i8* @AX25_ADDR_LEN, align 1
  %281 = zext i8 %280 to i32
  %282 = load i8, i8* %10, align 1
  %283 = zext i8 %282 to i32
  %284 = add nsw i32 %283, %281
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %10, align 1
  br label %218

286:                                              ; preds = %218
  br label %287

287:                                              ; preds = %286, %196
  br label %288

288:                                              ; preds = %287, %189
  br label %289

289:                                              ; preds = %288, %167
  br label %290

290:                                              ; preds = %289, %152
  br label %291

291:                                              ; preds = %290, %123
  %292 = load i8, i8* %9, align 1
  %293 = zext i8 %292 to i32
  %294 = add nsw i32 %293, 2
  %295 = load i8*, i8** %5, align 8
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  store i8* %297, i8** %5, align 8
  %298 = load i8, i8* %9, align 1
  %299 = zext i8 %298 to i32
  %300 = add nsw i32 %299, 2
  %301 = load i8, i8* %11, align 1
  %302 = zext i8 %301 to i32
  %303 = add nsw i32 %302, %300
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %11, align 1
  %305 = load i8, i8* %9, align 1
  %306 = zext i8 %305 to i32
  %307 = add nsw i32 %306, 2
  %308 = load i32, i32* %7, align 4
  %309 = sub nsw i32 %308, %307
  store i32 %309, i32* %7, align 4
  br label %310

310:                                              ; preds = %13, %291, %72, %59, %22
  br label %311

311:                                              ; preds = %310
  %312 = load i8*, i8** %5, align 8
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %311
  %317 = load i32, i32* %7, align 4
  %318 = icmp sgt i32 %317, 0
  br label %319

319:                                              ; preds = %316, %311
  %320 = phi i1 [ false, %311 ], [ %318, %316 ]
  br i1 %320, label %13, label %321

321:                                              ; preds = %319
  %322 = load i8, i8* %11, align 1
  %323 = zext i8 %322 to i32
  store i32 %323, i32* %4, align 4
  br label %324

324:                                              ; preds = %321, %259, %239, %210, %188, %166, %140, %111, %94, %84, %71, %34, %21
  %325 = load i32, i32* %4, align 4
  ret i32 %325
}

declare dso_local i32 @memcpy(i32*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
