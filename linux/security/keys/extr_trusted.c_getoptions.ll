; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_getoptions.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_getoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trusted_key_payload = type { i32 }
%struct.trusted_key_options = type { i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@chip = common dso_local global i32 0, align 4
@HASH_ALGO_SHA256 = common dso_local global i32 0, align 4
@HASH_ALGO_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@key_tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_PCRINFO_SIZE = common dso_local global i32 0, align 4
@SEAL_keytype = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@HASH_ALGO__LAST = common dso_local global i32 0, align 4
@hash_algo_name = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"trusted_key: TPM 1.x only supports SHA-1.\0A\00", align 1
@hash_digest_size = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.trusted_key_payload*, %struct.trusted_key_options*)* @getoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getoptions(i8* %0, %struct.trusted_key_payload* %1, %struct.trusted_key_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.trusted_key_payload*, align 8
  %7 = alloca %struct.trusted_key_options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.trusted_key_payload* %1, %struct.trusted_key_payload** %6, align 8
  store %struct.trusted_key_options* %2, %struct.trusted_key_options** %7, align 8
  %20 = load i32, i32* @MAX_OPT_ARGS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca %struct.TYPE_3__, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %10, align 8
  store i64 0, i64* %15, align 8
  %25 = load i32, i32* @chip, align 4
  %26 = call i32 @tpm_is_tpm2(i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %18, align 4
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

31:                                               ; preds = %3
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @HASH_ALGO_SHA256, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @HASH_ALGO_SHA1, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %41 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %313, %60, %38
  %43 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %43, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %314

45:                                               ; preds = %42
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 9
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50, %45
  br label %42

61:                                               ; preds = %55
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* @key_tokens, align 4
  %64 = call i32 @match_token(i8* %62, i32 %63, %struct.TYPE_3__* %23)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @test_and_set_bit(i32 %65, i64* %15)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

71:                                               ; preds = %61
  %72 = load i32, i32* %11, align 4
  switch i32 %72, label %310 [
    i32 131, label %73
    i32 133, label %106
    i32 134, label %123
    i32 136, label %149
    i32 132, label %175
    i32 130, label %188
    i32 135, label %202
    i32 129, label %251
    i32 128, label %290
  ]

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 16
  %77 = call i32 @strlen(i32* %76)
  %78 = sdiv i32 %77, 2
  %79 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %80 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %82 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MAX_PCRINFO_SIZE, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

89:                                               ; preds = %73
  %90 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %91 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 16
  %96 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %97 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @hex2bin(i32 %92, i32* %95, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

105:                                              ; preds = %89
  br label %313

106:                                              ; preds = %71
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 16
  %110 = call i32 @kstrtoul(i32* %109, i32 16, i64* %13)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

116:                                              ; preds = %106
  %117 = load i32, i32* @SEAL_keytype, align 4
  %118 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %119 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %118, i32 0, i32 9
  store i32 %117, i32* %119, align 4
  %120 = load i64, i64* %13, align 8
  %121 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %122 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  br label %313

123:                                              ; preds = %71
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 16
  %127 = call i32 @strlen(i32* %126)
  %128 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %129 = mul nsw i32 2, %128
  %130 = icmp ne i32 %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

134:                                              ; preds = %123
  %135 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %136 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 16
  %141 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %142 = call i32 @hex2bin(i32 %137, i32* %140, i32 %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %134
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

148:                                              ; preds = %134
  br label %313

149:                                              ; preds = %71
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 16
  %153 = call i32 @strlen(i32* %152)
  %154 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %155 = mul nsw i32 2, %154
  %156 = icmp ne i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

160:                                              ; preds = %149
  %161 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %162 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 16
  %167 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %168 = call i32 @hex2bin(i32 %163, i32* %166, i32 %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %160
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

174:                                              ; preds = %160
  br label %313

175:                                              ; preds = %71
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 16
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 48
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %183 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %182, i32 0, i32 0
  store i32 0, i32* %183, align 4
  br label %187

184:                                              ; preds = %175
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

187:                                              ; preds = %181
  br label %313

188:                                              ; preds = %71
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 16
  %192 = call i32 @kstrtoul(i32* %191, i32 10, i64* %14)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

198:                                              ; preds = %188
  %199 = load i64, i64* %14, align 8
  %200 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %201 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %200, i32 0, i32 3
  store i64 %199, i64* %201, align 8
  br label %313

202:                                              ; preds = %71
  %203 = call i32 @test_bit(i32 129, i64* %15)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

208:                                              ; preds = %202
  store i32 0, i32* %17, align 4
  br label %209

209:                                              ; preds = %229, %208
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* @HASH_ALGO__LAST, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %232

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 16
  %217 = load i32*, i32** @hash_algo_name, align 8
  %218 = load i32, i32* %17, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @strcmp(i32* %216, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %213
  %225 = load i32, i32* %17, align 4
  %226 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %227 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  br label %232

228:                                              ; preds = %213
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %17, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %17, align 4
  br label %209

232:                                              ; preds = %224, %209
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* @HASH_ALGO__LAST, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

239:                                              ; preds = %232
  %240 = load i32, i32* %18, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %250, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* @HASH_ALGO_SHA1, align 4
  %245 = icmp ne i32 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

250:                                              ; preds = %242, %239
  br label %313

251:                                              ; preds = %71
  %252 = load i32*, i32** @hash_digest_size, align 8
  %253 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %254 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %16, align 4
  %259 = load i32, i32* %18, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %251
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 16
  %265 = call i32 @strlen(i32* %264)
  %266 = load i32, i32* %16, align 4
  %267 = mul i32 2, %266
  %268 = icmp ne i32 %265, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %261, %251
  %270 = load i32, i32* @EINVAL, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

272:                                              ; preds = %261
  %273 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %274 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 16
  %279 = load i32, i32* %16, align 4
  %280 = call i32 @hex2bin(i32 %275, i32* %278, i32 %279)
  store i32 %280, i32* %12, align 4
  %281 = load i32, i32* %12, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %272
  %284 = load i32, i32* @EINVAL, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

286:                                              ; preds = %272
  %287 = load i32, i32* %16, align 4
  %288 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %289 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %288, i32 0, i32 4
  store i32 %287, i32* %289, align 8
  br label %313

290:                                              ; preds = %71
  %291 = load i32, i32* %18, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* @EINVAL, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 16
  %300 = call i32 @kstrtoul(i32* %299, i32 16, i64* %13)
  store i32 %300, i32* %12, align 4
  %301 = load i32, i32* %12, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %296
  %304 = load i32, i32* @EINVAL, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

306:                                              ; preds = %296
  %307 = load i64, i64* %13, align 8
  %308 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %309 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %308, i32 0, i32 5
  store i64 %307, i64* %309, align 8
  br label %313

310:                                              ; preds = %71
  %311 = load i32, i32* @EINVAL, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

313:                                              ; preds = %306, %286, %250, %198, %187, %174, %148, %116, %105
  br label %42

314:                                              ; preds = %42
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %315

315:                                              ; preds = %314, %310, %303, %293, %283, %269, %246, %236, %205, %195, %184, %171, %157, %145, %131, %113, %102, %86, %68, %29
  %316 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %316)
  %317 = load i32, i32* %4, align 4
  ret i32 %317
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tpm_is_tpm2(i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_3__*) #2

declare dso_local i64 @test_and_set_bit(i32, i64*) #2

declare dso_local i32 @strlen(i32*) #2

declare dso_local i32 @hex2bin(i32, i32*, i32) #2

declare dso_local i32 @kstrtoul(i32*, i32, i64*) #2

declare dso_local i32 @test_bit(i32, i64*) #2

declare dso_local i32 @strcmp(i32*, i32) #2

declare dso_local i32 @pr_info(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
