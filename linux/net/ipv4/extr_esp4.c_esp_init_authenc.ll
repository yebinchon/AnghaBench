; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_init_authenc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_init_authenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.crypto_aead*, i64, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i8*, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.crypto_authenc_key_param = type { i32 }
%struct.rtattr = type { i32, i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s%sauthencesn(%s,%s)%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"digest_null\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s%sauthenc(%s,%s)%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CRYPTO_AUTHENC_KEYA_PARAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"ESP: %s digestsize %u != %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @esp_init_authenc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_init_authenc(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.crypto_authenc_key_param*, align 8
  %5 = alloca %struct.rtattr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfrm_algo_desc*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %13 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %20 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %298

24:                                               ; preds = %1
  %25 = load i32, i32* @ENAMETOOLONG, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @XFRM_STATE_ESN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %80

34:                                               ; preds = %24
  %35 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = inttoptr i64 %38 to i8*
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i8* [ %41, %40 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %42 ]
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %52 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = icmp ne %struct.TYPE_9__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %43
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  br label %62

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %55
  %63 = phi i8* [ %60, %55 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %61 ]
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %65 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %70 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %75 = call i32 @snprintf(i8* %16, i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %50, i8* %63, i8* %68, i8* %74)
  %76 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %298

79:                                               ; preds = %62
  br label %126

80:                                               ; preds = %24
  %81 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %82 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %83 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = inttoptr i64 %84 to i8*
  br label %89

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i8* [ %87, %86 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %88 ]
  %91 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %92 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %97 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %98 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = icmp ne %struct.TYPE_9__* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %89
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %103 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  br label %108

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107, %101
  %109 = phi i8* [ %106, %101 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %107 ]
  %110 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %111 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %116 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %121 = call i32 @snprintf(i8* %16, i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %90, i8* %96, i8* %109, i8* %114, i8* %120)
  %122 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  br label %298

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %79
  %127 = call %struct.crypto_aead* @crypto_alloc_aead(i8* %16, i32 0, i32 0)
  store %struct.crypto_aead* %127, %struct.crypto_aead** %3, align 8
  %128 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %129 = call i32 @PTR_ERR(%struct.crypto_aead* %128)
  store i32 %129, i32* %11, align 4
  %130 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %131 = call i64 @IS_ERR(%struct.crypto_aead* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %298

134:                                              ; preds = %126
  %135 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %136 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %137 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %136, i32 0, i32 2
  store %struct.crypto_aead* %135, %struct.crypto_aead** %137, align 8
  %138 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %139 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = icmp ne %struct.TYPE_9__* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %134
  %143 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %144 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %143, i32 0, i32 1
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 7
  %149 = sdiv i32 %148, 8
  br label %151

150:                                              ; preds = %134
  br label %151

151:                                              ; preds = %150, %142
  %152 = phi i32 [ %149, %142 ], [ 0, %150 ]
  %153 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %154 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %153, i32 0, i32 0
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 7
  %159 = sdiv i32 %158, 8
  %160 = add nsw i32 %152, %159
  %161 = call i32 @RTA_SPACE(i32 4)
  %162 = add nsw i32 %160, %161
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = call i8* @kmalloc(i32 %165, i32 %166)
  store i8* %167, i8** %6, align 8
  %168 = load i8*, i8** %6, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %151
  br label %298

171:                                              ; preds = %151
  %172 = load i8*, i8** %6, align 8
  store i8* %172, i8** %7, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = bitcast i8* %173 to %struct.rtattr*
  store %struct.rtattr* %174, %struct.rtattr** %5, align 8
  %175 = load i32, i32* @CRYPTO_AUTHENC_KEYA_PARAM, align 4
  %176 = load %struct.rtattr*, %struct.rtattr** %5, align 8
  %177 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = call i32 @RTA_LENGTH(i32 4)
  %179 = load %struct.rtattr*, %struct.rtattr** %5, align 8
  %180 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load %struct.rtattr*, %struct.rtattr** %5, align 8
  %182 = call %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr* %181)
  store %struct.crypto_authenc_key_param* %182, %struct.crypto_authenc_key_param** %4, align 8
  %183 = call i32 @RTA_SPACE(i32 4)
  %184 = load i8*, i8** %7, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8* %186, i8** %7, align 8
  %187 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %188 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = icmp ne %struct.TYPE_9__* %189, null
  br i1 %190, label %191, label %266

191:                                              ; preds = %171
  %192 = load i8*, i8** %7, align 8
  %193 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %194 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %193, i32 0, i32 1
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %199 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %198, i32 0, i32 1
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, 7
  %204 = sdiv i32 %203, 8
  %205 = call i32 @memcpy(i8* %192, i32 %197, i32 %204)
  %206 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %207 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %206, i32 0, i32 1
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 7
  %212 = sdiv i32 %211, 8
  %213 = load i8*, i8** %7, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %7, align 8
  %216 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %217 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %216, i32 0, i32 1
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i8* %220, i32 0)
  store %struct.xfrm_algo_desc* %221, %struct.xfrm_algo_desc** %12, align 8
  %222 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %12, align 8
  %223 = icmp ne %struct.xfrm_algo_desc* %222, null
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = call i32 @BUG_ON(i32 %225)
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %11, align 4
  %229 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %12, align 8
  %230 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %233, 8
  %235 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %236 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %235)
  %237 = icmp ne i32 %234, %236
  br i1 %237, label %238, label %253

238:                                              ; preds = %191
  %239 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %240 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %239, i32 0, i32 1
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %245 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %244)
  %246 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %12, align 8
  %247 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = sdiv i32 %250, 8
  %252 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %243, i32 %245, i32 %251)
  br label %295

253:                                              ; preds = %191
  %254 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %255 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %256 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %255, i32 0, i32 1
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = sdiv i32 %259, 8
  %261 = call i32 @crypto_aead_setauthsize(%struct.crypto_aead* %254, i32 %260)
  store i32 %261, i32* %11, align 4
  %262 = load i32, i32* %11, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %253
  br label %295

265:                                              ; preds = %253
  br label %266

266:                                              ; preds = %265, %171
  %267 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %268 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %267, i32 0, i32 0
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 7
  %273 = sdiv i32 %272, 8
  %274 = call i32 @cpu_to_be32(i32 %273)
  %275 = load %struct.crypto_authenc_key_param*, %struct.crypto_authenc_key_param** %4, align 8
  %276 = getelementptr inbounds %struct.crypto_authenc_key_param, %struct.crypto_authenc_key_param* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 4
  %277 = load i8*, i8** %7, align 8
  %278 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %279 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %278, i32 0, i32 0
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %284 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %283, i32 0, i32 0
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, 7
  %289 = sdiv i32 %288, 8
  %290 = call i32 @memcpy(i8* %277, i32 %282, i32 %289)
  %291 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %292 = load i8*, i8** %6, align 8
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %291, i8* %292, i32 %293)
  store i32 %294, i32* %11, align 4
  br label %295

295:                                              ; preds = %266, %264, %238
  %296 = load i8*, i8** %6, align 8
  %297 = call i32 @kfree(i8* %296)
  br label %298

298:                                              ; preds = %295, %170, %133, %124, %78, %23
  %299 = load i32, i32* %11, align 4
  %300 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %300)
  ret i32 %299
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local %struct.crypto_aead* @crypto_alloc_aead(i8*, i32, i32) #2

declare dso_local i32 @PTR_ERR(%struct.crypto_aead*) #2

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #2

declare dso_local i32 @RTA_SPACE(i32) #2

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local i32 @RTA_LENGTH(i32) #2

declare dso_local %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr*) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i8*, i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #2

declare dso_local i32 @pr_info(i8*, i8*, i32, i32) #2

declare dso_local i32 @crypto_aead_setauthsize(%struct.crypto_aead*, i32) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i8*, i32) #2

declare dso_local i32 @kfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
