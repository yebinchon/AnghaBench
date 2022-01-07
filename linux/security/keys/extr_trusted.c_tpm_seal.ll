; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_tpm_seal.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_tpm_seal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_buf = type { i64 }
%struct.osapsess = type { i32, i64, i64 }
%struct.tpm_digests = type { i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@chip = common dso_local global i32 0, align 4
@TPM_NONCE_SIZE = common dso_local global i32 0, align 4
@TPM_ORD_SEAL = common dso_local global i32 0, align 4
@TPM_TAG_RQU_AUTH1_COMMAND = common dso_local global i32 0, align 4
@TPM_SEAL_SIZE = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@TPM_DATA_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_buf*, i32, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i32)* @tpm_seal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_seal(%struct.tpm_buf* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5, i8* %6, i32* %7, i8* %8, i8* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.tpm_buf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.osapsess, align 8
  %25 = alloca %struct.tpm_digests*, align 8
  %26 = alloca i8, align 1
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.tpm_buf* %0, %struct.tpm_buf** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i32* %7, i32** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32 %10, i32* %23, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.tpm_digests* @kmalloc(i32 40, i32 %35)
  store %struct.tpm_digests* %36, %struct.tpm_digests** %25, align 8
  %37 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %38 = icmp ne %struct.tpm_digests* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %11
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %12, align 4
  br label %301

42:                                               ; preds = %11
  %43 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @osap(%struct.tpm_buf* %43, %struct.osapsess* %24, i8* %44, i32 %45, i32 %46)
  store i32 %47, i32* %33, align 4
  %48 = load i32, i32* %33, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %297

51:                                               ; preds = %42
  %52 = call i32 @dump_sess(%struct.osapsess* %24)
  %53 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %54 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds %struct.osapsess, %struct.osapsess* %24, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %59 = call i32 @memcpy(i8* %55, i64 %57, i32 %58)
  %60 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %61 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = getelementptr inbounds %struct.osapsess, %struct.osapsess* %24, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %69 = call i32 @memcpy(i8* %65, i64 %67, i32 %68)
  %70 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %71 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %74 = mul nsw i32 %73, 2
  %75 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %76 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @TSS_sha1(i8* %72, i32 %74, i8* %77)
  store i32 %78, i32* %33, align 4
  %79 = load i32, i32* %33, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %51
  br label %297

82:                                               ; preds = %51
  %83 = load i32, i32* @chip, align 4
  %84 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %85 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %88 = call i32 @tpm_get_random(i32 %83, i8* %86, i32 %87)
  store i32 %88, i32* %33, align 4
  %89 = load i32, i32* %33, align 4
  %90 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %297

93:                                               ; preds = %82
  %94 = load i32, i32* @TPM_ORD_SEAL, align 4
  %95 = call i32 @htonl(i32 %94)
  store i32 %95, i32* %27, align 4
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @htonl(i32 %96)
  store i32 %97, i32* %29, align 4
  %98 = load i32, i32* %23, align 4
  %99 = call i32 @htonl(i32 %98)
  store i32 %99, i32* %28, align 4
  store i8 0, i8* %26, align 1
  store i32 0, i32* %34, align 4
  br label %100

100:                                              ; preds = %127, %93
  %101 = load i32, i32* %34, align 4
  %102 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %106 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %34, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8*, i8** %21, align 8
  %114 = load i32, i32* %34, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = xor i32 %112, %118
  %120 = trunc i32 %119 to i8
  %121 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %122 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %34, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 %120, i8* %126, align 1
  br label %127

127:                                              ; preds = %104
  %128 = load i32, i32* %34, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %34, align 4
  br label %100

130:                                              ; preds = %100
  %131 = load i32, i32* %23, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %135 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %134, i32 0, i32 4
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds %struct.osapsess, %struct.osapsess* %24, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %140 = getelementptr inbounds %struct.osapsess, %struct.osapsess* %24, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %143 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = load i8, i8* %26, align 1
  %146 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %147 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %148 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %18, align 4
  %151 = load i8*, i8** %17, align 8
  %152 = call i32 (i8*, i64, i32, i64, i8*, i8, i32, i32*, i32, i8*, i32, i32*, i32, ...) @TSS_authhmac(i8* %136, i64 %138, i32 %139, i64 %141, i8* %144, i8 zeroext %145, i32 4, i32* %27, i32 %146, i8* %149, i32 4, i32* %28, i32 4, i32* %29, i32 %150, i8* %151, i32 0, i32 0)
  store i32 %152, i32* %33, align 4
  br label %175

153:                                              ; preds = %130
  %154 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %155 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %154, i32 0, i32 4
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds %struct.osapsess, %struct.osapsess* %24, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %160 = getelementptr inbounds %struct.osapsess, %struct.osapsess* %24, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %163 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = load i8, i8* %26, align 1
  %166 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %167 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %168 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* %23, align 4
  %171 = load i8*, i8** %22, align 8
  %172 = load i32, i32* %18, align 4
  %173 = load i8*, i8** %17, align 8
  %174 = call i32 (i8*, i64, i32, i64, i8*, i8, i32, i32*, i32, i8*, i32, i32*, i32, ...) @TSS_authhmac(i8* %156, i64 %158, i32 %159, i64 %161, i8* %164, i8 zeroext %165, i32 4, i32* %27, i32 %166, i8* %169, i32 4, i32* %28, i32 %170, i8* %171, i64 4, i32* %29, i32 %172, i8* %173, i32 0, i32 0)
  store i32 %174, i32* %33, align 4
  br label %175

175:                                              ; preds = %153, %133
  %176 = load i32, i32* %33, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %297

179:                                              ; preds = %175
  %180 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %181 = call i32 @INIT_BUF(%struct.tpm_buf* %180)
  %182 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %183 = load i32, i32* @TPM_TAG_RQU_AUTH1_COMMAND, align 4
  %184 = call i32 @store16(%struct.tpm_buf* %182, i32 %183)
  %185 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %186 = load i32, i32* @TPM_SEAL_SIZE, align 4
  %187 = load i32, i32* %23, align 4
  %188 = add nsw i32 %186, %187
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i32 @store32(%struct.tpm_buf* %185, i32 %190)
  %192 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %193 = load i32, i32* @TPM_ORD_SEAL, align 4
  %194 = call i32 @store32(%struct.tpm_buf* %192, i32 %193)
  %195 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @store32(%struct.tpm_buf* %195, i32 %196)
  %198 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %199 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %200 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %199, i32 0, i32 3
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %203 = call i32 @storebytes(%struct.tpm_buf* %198, i8* %201, i32 %202)
  %204 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %205 = load i32, i32* %23, align 4
  %206 = call i32 @store32(%struct.tpm_buf* %204, i32 %205)
  %207 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %208 = load i8*, i8** %22, align 8
  %209 = load i32, i32* %23, align 4
  %210 = call i32 @storebytes(%struct.tpm_buf* %207, i8* %208, i32 %209)
  %211 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %212 = load i32, i32* %18, align 4
  %213 = call i32 @store32(%struct.tpm_buf* %211, i32 %212)
  %214 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %215 = load i8*, i8** %17, align 8
  %216 = load i32, i32* %18, align 4
  %217 = call i32 @storebytes(%struct.tpm_buf* %214, i8* %215, i32 %216)
  %218 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %219 = getelementptr inbounds %struct.osapsess, %struct.osapsess* %24, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @store32(%struct.tpm_buf* %218, i32 %220)
  %222 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %223 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %224 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %223, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %227 = call i32 @storebytes(%struct.tpm_buf* %222, i8* %225, i32 %226)
  %228 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %229 = load i8, i8* %26, align 1
  %230 = call i32 @store8(%struct.tpm_buf* %228, i8 zeroext %229)
  %231 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %232 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %233 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %232, i32 0, i32 4
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %236 = call i32 @storebytes(%struct.tpm_buf* %231, i8* %234, i32 %235)
  %237 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %238 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* @MAX_BUF_SIZE, align 4
  %241 = call i32 @trusted_tpm_send(i64 %239, i32 %240)
  store i32 %241, i32* %33, align 4
  %242 = load i32, i32* %33, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %179
  br label %297

245:                                              ; preds = %179
  %246 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %247 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %250 = add i64 %249, 4
  %251 = call i32 @LOAD32(i64 %248, i64 %250)
  store i32 %251, i32* %30, align 4
  %252 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %253 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %256 = add i64 %255, 4
  %257 = add i64 %256, 4
  %258 = load i32, i32* %30, align 4
  %259 = sext i32 %258 to i64
  %260 = add i64 %257, %259
  %261 = call i32 @LOAD32(i64 %254, i64 %260)
  store i32 %261, i32* %31, align 4
  %262 = load i32, i32* %30, align 4
  %263 = sext i32 %262 to i64
  %264 = add i64 8, %263
  %265 = add i64 %264, 4
  %266 = load i32, i32* %31, align 4
  %267 = sext i32 %266 to i64
  %268 = add i64 %265, %267
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %32, align 4
  %270 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %271 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* %27, align 4
  %274 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %275 = getelementptr inbounds %struct.tpm_digests, %struct.tpm_digests* %274, i32 0, i32 2
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds %struct.osapsess, %struct.osapsess* %24, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %280 = load i32, i32* %32, align 4
  %281 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %282 = call i32 @TSS_checkhmac1(i64 %272, i32 %273, i8* %276, i64 %278, i32 %279, i32 %280, i64 %281, i32 0, i32 0)
  store i32 %282, i32* %33, align 4
  %283 = load i32, i32* %33, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %296, label %285

285:                                              ; preds = %245
  %286 = load i8*, i8** %19, align 8
  %287 = load %struct.tpm_buf*, %struct.tpm_buf** %13, align 8
  %288 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %291 = add nsw i64 %289, %290
  %292 = load i32, i32* %32, align 4
  %293 = call i32 @memcpy(i8* %286, i64 %291, i32 %292)
  %294 = load i32, i32* %32, align 4
  %295 = load i32*, i32** %20, align 8
  store i32 %294, i32* %295, align 4
  br label %296

296:                                              ; preds = %285, %245
  br label %297

297:                                              ; preds = %296, %244, %178, %92, %81, %50
  %298 = load %struct.tpm_digests*, %struct.tpm_digests** %25, align 8
  %299 = call i32 @kzfree(%struct.tpm_digests* %298)
  %300 = load i32, i32* %33, align 4
  store i32 %300, i32* %12, align 4
  br label %301

301:                                              ; preds = %297, %39
  %302 = load i32, i32* %12, align 4
  ret i32 %302
}

declare dso_local %struct.tpm_digests* @kmalloc(i32, i32) #1

declare dso_local i32 @osap(%struct.tpm_buf*, %struct.osapsess*, i8*, i32, i32) #1

declare dso_local i32 @dump_sess(%struct.osapsess*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @TSS_sha1(i8*, i32, i8*) #1

declare dso_local i32 @tpm_get_random(i32, i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @TSS_authhmac(i8*, i64, i32, i64, i8*, i8 zeroext, i32, i32*, i32, i8*, i32, i32*, i32, ...) #1

declare dso_local i32 @INIT_BUF(%struct.tpm_buf*) #1

declare dso_local i32 @store16(%struct.tpm_buf*, i32) #1

declare dso_local i32 @store32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @storebytes(%struct.tpm_buf*, i8*, i32) #1

declare dso_local i32 @store8(%struct.tpm_buf*, i8 zeroext) #1

declare dso_local i32 @trusted_tpm_send(i64, i32) #1

declare dso_local i32 @LOAD32(i64, i64) #1

declare dso_local i32 @TSS_checkhmac1(i64, i32, i8*, i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @kzfree(%struct.tpm_digests*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
