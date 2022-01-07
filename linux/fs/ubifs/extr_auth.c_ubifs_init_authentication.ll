; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_init_authentication.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_init_authentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i8*, i32, %struct.key*, %struct.key*, %struct.key*, i8*, i8*, i32, i64 }
%struct.key = type { i32, i32* }
%struct.user_key_payload = type { i32, i32 }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"authentication hash name needed with authentication\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@hash_algo_name = common dso_local global i32 0, align 4
@HASH_ALGO__LAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unknown hash algo %s specified\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"hmac(%s)\00", align 1
@key_type_logon = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to request key: %ld\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"key type must be logon\00", align 1
@ENOKEY = common dso_local global i32 0, align 4
@EKEYREVOKED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Can not allocate %s: %d\00", align 1
@UBIFS_HASH_ARR_SZ = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [59 x i8] c"hash %s is bigger than maximum allowed hash size (%d > %d)\00", align 1
@UBIFS_HMAC_ARR_SZ = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [59 x i8] c"hmac %s is bigger than maximum allowed hmac size (%d > %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_init_authentication(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.user_key_payload*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %10 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %20 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %226

23:                                               ; preds = %1
  %24 = load i32, i32* @hash_algo_name, align 4
  %25 = load i32, i32* @HASH_ALGO__LAST, align 4
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @match_string(i32 %24, i32 %25, i8* %28)
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 8
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %23
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %226

45:                                               ; preds = %23
  %46 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @snprintf(i8* %13, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.key* @request_key(i32* @key_type_logon, i32 %53, i32* null)
  store %struct.key* %54, %struct.key** %4, align 8
  %55 = load %struct.key*, %struct.key** %4, align 8
  %56 = call i64 @IS_ERR(%struct.key* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %45
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %60 = load %struct.key*, %struct.key** %4, align 8
  %61 = call i32 @PTR_ERR(%struct.key* %60)
  %62 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.key*, %struct.key** %4, align 8
  %64 = call i32 @PTR_ERR(%struct.key* %63)
  store i32 %64, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %226

65:                                               ; preds = %45
  %66 = load %struct.key*, %struct.key** %4, align 8
  %67 = getelementptr inbounds %struct.key, %struct.key* %66, i32 0, i32 0
  %68 = call i32 @down_read(i32* %67)
  %69 = load %struct.key*, %struct.key** %4, align 8
  %70 = getelementptr inbounds %struct.key, %struct.key* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, @key_type_logon
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %75 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @ENOKEY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %219

78:                                               ; preds = %65
  %79 = load %struct.key*, %struct.key** %4, align 8
  %80 = call %struct.user_key_payload* @user_key_payload_locked(%struct.key* %79)
  store %struct.user_key_payload* %80, %struct.user_key_payload** %5, align 8
  %81 = load %struct.user_key_payload*, %struct.user_key_payload** %5, align 8
  %82 = icmp ne %struct.user_key_payload* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @EKEYREVOKED, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %219

86:                                               ; preds = %78
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i8* @crypto_alloc_shash(i8* %89, i32 0, i32 0)
  %91 = bitcast i8* %90 to %struct.key*
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %93 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %92, i32 0, i32 2
  store %struct.key* %91, %struct.key** %93, align 8
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %95 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %94, i32 0, i32 2
  %96 = load %struct.key*, %struct.key** %95, align 8
  %97 = call i64 @IS_ERR(%struct.key* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %86
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %101 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %100, i32 0, i32 2
  %102 = load %struct.key*, %struct.key** %101, align 8
  %103 = call i32 @PTR_ERR(%struct.key* %102)
  store i32 %103, i32* %6, align 4
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %106 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %107, i32 %108)
  br label %219

110:                                              ; preds = %86
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %112 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %111, i32 0, i32 2
  %113 = load %struct.key*, %struct.key** %112, align 8
  %114 = call i8* @crypto_shash_digestsize(%struct.key* %113)
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %116 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %118 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %117, i32 0, i32 6
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** @UBIFS_HASH_ARR_SZ, align 8
  %121 = icmp ugt i8* %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %110
  %123 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 6
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** @UBIFS_HASH_ARR_SZ, align 8
  %131 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %123, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i8* %126, i8* %129, i8* %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %210

134:                                              ; preds = %110
  %135 = call i8* @crypto_alloc_shash(i8* %13, i32 0, i32 0)
  %136 = bitcast i8* %135 to %struct.key*
  %137 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %138 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %137, i32 0, i32 3
  store %struct.key* %136, %struct.key** %138, align 8
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %139, i32 0, i32 3
  %141 = load %struct.key*, %struct.key** %140, align 8
  %142 = call i64 @IS_ERR(%struct.key* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %134
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %146 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %145, i32 0, i32 3
  %147 = load %struct.key*, %struct.key** %146, align 8
  %148 = call i32 @PTR_ERR(%struct.key* %147)
  store i32 %148, i32* %6, align 4
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %13, i32 %150)
  br label %210

152:                                              ; preds = %134
  %153 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %154 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %153, i32 0, i32 3
  %155 = load %struct.key*, %struct.key** %154, align 8
  %156 = call i8* @crypto_shash_digestsize(%struct.key* %155)
  %157 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %158 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %157, i32 0, i32 5
  store i8* %156, i8** %158, align 8
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %160 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %159, i32 0, i32 5
  %161 = load i8*, i8** %160, align 8
  %162 = load i8*, i8** @UBIFS_HMAC_ARR_SZ, align 8
  %163 = icmp ugt i8* %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %152
  %165 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %166 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %167 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %166, i32 0, i32 5
  %168 = load i8*, i8** %167, align 8
  %169 = load i8*, i8** @UBIFS_HMAC_ARR_SZ, align 8
  %170 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %165, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i8* %13, i8* %168, i8* %169)
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %6, align 4
  br label %210

173:                                              ; preds = %152
  %174 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %175 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %174, i32 0, i32 3
  %176 = load %struct.key*, %struct.key** %175, align 8
  %177 = load %struct.user_key_payload*, %struct.user_key_payload** %5, align 8
  %178 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.user_key_payload*, %struct.user_key_payload** %5, align 8
  %181 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @crypto_shash_setkey(%struct.key* %176, i32 %179, i32 %182)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %173
  br label %201

187:                                              ; preds = %173
  %188 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %189 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %188, i32 0, i32 1
  store i32 1, i32* %189, align 8
  %190 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %191 = call %struct.key* @ubifs_hash_get_desc(%struct.ubifs_info* %190)
  %192 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %193 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %192, i32 0, i32 4
  store %struct.key* %191, %struct.key** %193, align 8
  %194 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %195 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %194, i32 0, i32 4
  %196 = load %struct.key*, %struct.key** %195, align 8
  %197 = call i64 @IS_ERR(%struct.key* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %187
  br label %201

200:                                              ; preds = %187
  store i32 0, i32* %6, align 4
  br label %201

201:                                              ; preds = %200, %199, %186
  %202 = load i32, i32* %6, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %206 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %205, i32 0, i32 3
  %207 = load %struct.key*, %struct.key** %206, align 8
  %208 = call i32 @crypto_free_shash(%struct.key* %207)
  br label %209

209:                                              ; preds = %204, %201
  br label %210

210:                                              ; preds = %209, %164, %144, %122
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %215 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %214, i32 0, i32 2
  %216 = load %struct.key*, %struct.key** %215, align 8
  %217 = call i32 @crypto_free_shash(%struct.key* %216)
  br label %218

218:                                              ; preds = %213, %210
  br label %219

219:                                              ; preds = %218, %99, %83, %73
  %220 = load %struct.key*, %struct.key** %4, align 8
  %221 = getelementptr inbounds %struct.key, %struct.key* %220, i32 0, i32 0
  %222 = call i32 @up_read(i32* %221)
  %223 = load %struct.key*, %struct.key** %4, align 8
  %224 = call i32 @key_put(%struct.key* %223)
  %225 = load i32, i32* %6, align 4
  store i32 %225, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %226

226:                                              ; preds = %219, %58, %37, %18
  %227 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, ...) #2

declare dso_local i64 @match_string(i32, i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local %struct.key* @request_key(i32*, i32, i32*) #2

declare dso_local i64 @IS_ERR(%struct.key*) #2

declare dso_local i32 @PTR_ERR(%struct.key*) #2

declare dso_local i32 @down_read(i32*) #2

declare dso_local %struct.user_key_payload* @user_key_payload_locked(%struct.key*) #2

declare dso_local i8* @crypto_alloc_shash(i8*, i32, i32) #2

declare dso_local i8* @crypto_shash_digestsize(%struct.key*) #2

declare dso_local i32 @crypto_shash_setkey(%struct.key*, i32, i32) #2

declare dso_local %struct.key* @ubifs_hash_get_desc(%struct.ubifs_info*) #2

declare dso_local i32 @crypto_free_shash(%struct.key*) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @key_put(%struct.key*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
