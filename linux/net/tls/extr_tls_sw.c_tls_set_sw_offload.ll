; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_set_sw_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_set_sw_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx*, i32, %struct.cipher_context, %struct.TYPE_8__, %struct.cipher_context, %struct.TYPE_6__, %struct.tls_prot_info }
%struct.tls_sw_context_tx = type { i32, i32, %struct.crypto_aead*, i32, i32, %struct.TYPE_7__, i32, %struct.crypto_aead* }
%struct.TYPE_7__ = type { %struct.sock*, i32 }
%struct.crypto_aead = type { i32 }
%struct.TYPE_8__ = type { %struct.tls_crypto_info }
%struct.tls_crypto_info = type { i32, i64 }
%struct.cipher_context = type { %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx* }
%struct.TYPE_6__ = type { %struct.tls_crypto_info }
%struct.tls_prot_info = type { i32, i64, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.tls12_crypto_info_aes_gcm_128 = type { i8*, i8*, i8*, i8* }
%struct.tls12_crypto_info_aes_gcm_256 = type { i8*, i8*, i8*, i8* }
%struct.tls12_crypto_info_aes_ccm_128 = type { i8*, i8*, i8*, i8* }
%struct.tls_sw_context_rx = type { i32, i32, %struct.crypto_aead*, i32, i32, %struct.TYPE_7__, i32, %struct.crypto_aead* }
%struct.strp_callbacks = type { i32, i32 }
%struct.crypto_tfm = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tx_work_handler = common dso_local global i32 0, align 4
@TLS_CIPHER_AES_GCM_128_IV_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_GCM_128_TAG_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_GCM_128_REC_SEQ_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_GCM_128_KEY_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_GCM_128_SALT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"gcm(aes)\00", align 1
@TLS_CIPHER_AES_GCM_256_IV_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_GCM_256_TAG_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_GCM_256_REC_SEQ_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_GCM_256_KEY_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_GCM_256_SALT_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_CCM_128_IV_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_CCM_128_TAG_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_CCM_128_REC_SEQ_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_CCM_128_KEY_SIZE = common dso_local global i64 0, align 8
@TLS_CIPHER_AES_CCM_128_SALT_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"ccm(aes)\00", align 1
@MAX_IV_SIZE = common dso_local global i64 0, align 8
@TLS_MAX_REC_SEQ_SIZE = common dso_local global i64 0, align 8
@TLS_1_3_VERSION = common dso_local global i64 0, align 8
@TLS_HEADER_SIZE = common dso_local global i64 0, align 8
@TLS_AAD_SPACE_SIZE = common dso_local global i64 0, align 8
@tls_sw_push_pending_record = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@tls_queue = common dso_local global i32 0, align 4
@tls_read_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_set_sw_offload(%struct.sock* %0, %struct.tls_context* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tls_context*, align 8
  %8 = alloca %struct.tls_prot_info*, align 8
  %9 = alloca %struct.tls_crypto_info*, align 8
  %10 = alloca %struct.tls12_crypto_info_aes_gcm_128*, align 8
  %11 = alloca %struct.tls12_crypto_info_aes_gcm_256*, align 8
  %12 = alloca %struct.tls12_crypto_info_aes_ccm_128*, align 8
  %13 = alloca %struct.tls_sw_context_tx*, align 8
  %14 = alloca %struct.tls_sw_context_rx*, align 8
  %15 = alloca %struct.cipher_context*, align 8
  %16 = alloca %struct.crypto_aead**, align 8
  %17 = alloca %struct.strp_callbacks, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.crypto_tfm*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.tls_context* %1, %struct.tls_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %31)
  store %struct.tls_context* %32, %struct.tls_context** %7, align 8
  %33 = load %struct.tls_context*, %struct.tls_context** %7, align 8
  %34 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %33, i32 0, i32 7
  store %struct.tls_prot_info* %34, %struct.tls_prot_info** %8, align 8
  store %struct.tls_sw_context_tx* null, %struct.tls_sw_context_tx** %13, align 8
  store %struct.tls_sw_context_rx* null, %struct.tls_sw_context_rx** %14, align 8
  store i32 0, i32* %30, align 4
  %35 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %36 = icmp ne %struct.tls_context* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %30, align 4
  br label %438

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %45 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %44, i32 0, i32 1
  %46 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %45, align 8
  %47 = icmp ne %struct.tls_sw_context_tx* %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kzalloc(i32 56, i32 %49)
  %51 = bitcast i8* %50 to %struct.tls_sw_context_tx*
  store %struct.tls_sw_context_tx* %51, %struct.tls_sw_context_tx** %13, align 8
  %52 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %53 = icmp ne %struct.tls_sw_context_tx* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %30, align 4
  br label %438

57:                                               ; preds = %48
  %58 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %59 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %60 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %59, i32 0, i32 1
  store %struct.tls_sw_context_tx* %58, %struct.tls_sw_context_tx** %60, align 8
  br label %65

61:                                               ; preds = %43
  %62 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %63 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %62, i32 0, i32 1
  %64 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %63, align 8
  store %struct.tls_sw_context_tx* %64, %struct.tls_sw_context_tx** %13, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %91

66:                                               ; preds = %40
  %67 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %68 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %67, i32 0, i32 0
  %69 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %68, align 8
  %70 = icmp ne %struct.tls_sw_context_tx* %69, null
  br i1 %70, label %85, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @kzalloc(i32 56, i32 %72)
  %74 = bitcast i8* %73 to %struct.tls_sw_context_rx*
  store %struct.tls_sw_context_rx* %74, %struct.tls_sw_context_rx** %14, align 8
  %75 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %14, align 8
  %76 = icmp ne %struct.tls_sw_context_rx* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %30, align 4
  br label %438

80:                                               ; preds = %71
  %81 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %14, align 8
  %82 = bitcast %struct.tls_sw_context_rx* %81 to %struct.tls_sw_context_tx*
  %83 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %84 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %83, i32 0, i32 0
  store %struct.tls_sw_context_tx* %82, %struct.tls_sw_context_tx** %84, align 8
  br label %90

85:                                               ; preds = %66
  %86 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %87 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %86, i32 0, i32 0
  %88 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %87, align 8
  %89 = bitcast %struct.tls_sw_context_tx* %88 to %struct.tls_sw_context_rx*
  store %struct.tls_sw_context_rx* %89, %struct.tls_sw_context_rx** %14, align 8
  br label %90

90:                                               ; preds = %85, %80
  br label %91

91:                                               ; preds = %90, %65
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %96 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %95, i32 0, i32 4
  %97 = call i32 @crypto_init_wait(i32* %96)
  %98 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %99 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store %struct.tls_crypto_info* %100, %struct.tls_crypto_info** %9, align 8
  %101 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %102 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %101, i32 0, i32 5
  store %struct.cipher_context* %102, %struct.cipher_context** %15, align 8
  %103 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %104 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %103, i32 0, i32 7
  store %struct.crypto_aead** %104, %struct.crypto_aead*** %16, align 8
  %105 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %106 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %105, i32 0, i32 6
  %107 = call i32 @INIT_LIST_HEAD(i32* %106)
  %108 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %109 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* @tx_work_handler, align 4
  %112 = call i32 @INIT_DELAYED_WORK(i32* %110, i32 %111)
  %113 = load %struct.sock*, %struct.sock** %4, align 8
  %114 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %13, align 8
  %115 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store %struct.sock* %113, %struct.sock** %116, align 8
  br label %131

117:                                              ; preds = %91
  %118 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %14, align 8
  %119 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %118, i32 0, i32 4
  %120 = call i32 @crypto_init_wait(i32* %119)
  %121 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %122 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store %struct.tls_crypto_info* %123, %struct.tls_crypto_info** %9, align 8
  %124 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %125 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %124, i32 0, i32 3
  store %struct.cipher_context* %125, %struct.cipher_context** %15, align 8
  %126 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %14, align 8
  %127 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %126, i32 0, i32 3
  %128 = call i32 @skb_queue_head_init(i32* %127)
  %129 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %14, align 8
  %130 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %129, i32 0, i32 2
  store %struct.crypto_aead** %130, %struct.crypto_aead*** %16, align 8
  br label %131

131:                                              ; preds = %117, %94
  %132 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %133 = getelementptr inbounds %struct.tls_crypto_info, %struct.tls_crypto_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  switch i32 %134, label %204 [
    i32 129, label %135
    i32 128, label %158
    i32 130, label %181
  ]

135:                                              ; preds = %131
  %136 = load i64, i64* @TLS_CIPHER_AES_GCM_128_IV_SIZE, align 8
  store i64 %136, i64* %18, align 8
  %137 = load i64, i64* @TLS_CIPHER_AES_GCM_128_TAG_SIZE, align 8
  store i64 %137, i64* %19, align 8
  %138 = load i64, i64* @TLS_CIPHER_AES_GCM_128_IV_SIZE, align 8
  store i64 %138, i64* %20, align 8
  %139 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %140 = bitcast %struct.tls_crypto_info* %139 to %struct.tls12_crypto_info_aes_gcm_128*
  %141 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %24, align 8
  %143 = load i64, i64* @TLS_CIPHER_AES_GCM_128_REC_SEQ_SIZE, align 8
  store i64 %143, i64* %21, align 8
  %144 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %145 = bitcast %struct.tls_crypto_info* %144 to %struct.tls12_crypto_info_aes_gcm_128*
  %146 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %25, align 8
  %148 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %149 = bitcast %struct.tls_crypto_info* %148 to %struct.tls12_crypto_info_aes_gcm_128*
  store %struct.tls12_crypto_info_aes_gcm_128* %149, %struct.tls12_crypto_info_aes_gcm_128** %10, align 8
  %150 = load i64, i64* @TLS_CIPHER_AES_GCM_128_KEY_SIZE, align 8
  store i64 %150, i64* %29, align 8
  %151 = load %struct.tls12_crypto_info_aes_gcm_128*, %struct.tls12_crypto_info_aes_gcm_128** %10, align 8
  %152 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %26, align 8
  %154 = load %struct.tls12_crypto_info_aes_gcm_128*, %struct.tls12_crypto_info_aes_gcm_128** %10, align 8
  %155 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %154, i32 0, i32 3
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %27, align 8
  %157 = load i64, i64* @TLS_CIPHER_AES_GCM_128_SALT_SIZE, align 8
  store i64 %157, i64* %22, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  br label %207

158:                                              ; preds = %131
  %159 = load i64, i64* @TLS_CIPHER_AES_GCM_256_IV_SIZE, align 8
  store i64 %159, i64* %18, align 8
  %160 = load i64, i64* @TLS_CIPHER_AES_GCM_256_TAG_SIZE, align 8
  store i64 %160, i64* %19, align 8
  %161 = load i64, i64* @TLS_CIPHER_AES_GCM_256_IV_SIZE, align 8
  store i64 %161, i64* %20, align 8
  %162 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %163 = bitcast %struct.tls_crypto_info* %162 to %struct.tls12_crypto_info_aes_gcm_256*
  %164 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_256, %struct.tls12_crypto_info_aes_gcm_256* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %24, align 8
  %166 = load i64, i64* @TLS_CIPHER_AES_GCM_256_REC_SEQ_SIZE, align 8
  store i64 %166, i64* %21, align 8
  %167 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %168 = bitcast %struct.tls_crypto_info* %167 to %struct.tls12_crypto_info_aes_gcm_256*
  %169 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_256, %struct.tls12_crypto_info_aes_gcm_256* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %25, align 8
  %171 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %172 = bitcast %struct.tls_crypto_info* %171 to %struct.tls12_crypto_info_aes_gcm_256*
  store %struct.tls12_crypto_info_aes_gcm_256* %172, %struct.tls12_crypto_info_aes_gcm_256** %11, align 8
  %173 = load i64, i64* @TLS_CIPHER_AES_GCM_256_KEY_SIZE, align 8
  store i64 %173, i64* %29, align 8
  %174 = load %struct.tls12_crypto_info_aes_gcm_256*, %struct.tls12_crypto_info_aes_gcm_256** %11, align 8
  %175 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_256, %struct.tls12_crypto_info_aes_gcm_256* %174, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** %26, align 8
  %177 = load %struct.tls12_crypto_info_aes_gcm_256*, %struct.tls12_crypto_info_aes_gcm_256** %11, align 8
  %178 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_256, %struct.tls12_crypto_info_aes_gcm_256* %177, i32 0, i32 3
  %179 = load i8*, i8** %178, align 8
  store i8* %179, i8** %27, align 8
  %180 = load i64, i64* @TLS_CIPHER_AES_GCM_256_SALT_SIZE, align 8
  store i64 %180, i64* %22, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  br label %207

181:                                              ; preds = %131
  %182 = load i64, i64* @TLS_CIPHER_AES_CCM_128_IV_SIZE, align 8
  store i64 %182, i64* %18, align 8
  %183 = load i64, i64* @TLS_CIPHER_AES_CCM_128_TAG_SIZE, align 8
  store i64 %183, i64* %19, align 8
  %184 = load i64, i64* @TLS_CIPHER_AES_CCM_128_IV_SIZE, align 8
  store i64 %184, i64* %20, align 8
  %185 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %186 = bitcast %struct.tls_crypto_info* %185 to %struct.tls12_crypto_info_aes_ccm_128*
  %187 = getelementptr inbounds %struct.tls12_crypto_info_aes_ccm_128, %struct.tls12_crypto_info_aes_ccm_128* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %24, align 8
  %189 = load i64, i64* @TLS_CIPHER_AES_CCM_128_REC_SEQ_SIZE, align 8
  store i64 %189, i64* %21, align 8
  %190 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %191 = bitcast %struct.tls_crypto_info* %190 to %struct.tls12_crypto_info_aes_ccm_128*
  %192 = getelementptr inbounds %struct.tls12_crypto_info_aes_ccm_128, %struct.tls12_crypto_info_aes_ccm_128* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** %25, align 8
  %194 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %195 = bitcast %struct.tls_crypto_info* %194 to %struct.tls12_crypto_info_aes_ccm_128*
  store %struct.tls12_crypto_info_aes_ccm_128* %195, %struct.tls12_crypto_info_aes_ccm_128** %12, align 8
  %196 = load i64, i64* @TLS_CIPHER_AES_CCM_128_KEY_SIZE, align 8
  store i64 %196, i64* %29, align 8
  %197 = load %struct.tls12_crypto_info_aes_ccm_128*, %struct.tls12_crypto_info_aes_ccm_128** %12, align 8
  %198 = getelementptr inbounds %struct.tls12_crypto_info_aes_ccm_128, %struct.tls12_crypto_info_aes_ccm_128* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  store i8* %199, i8** %26, align 8
  %200 = load %struct.tls12_crypto_info_aes_ccm_128*, %struct.tls12_crypto_info_aes_ccm_128** %12, align 8
  %201 = getelementptr inbounds %struct.tls12_crypto_info_aes_ccm_128, %struct.tls12_crypto_info_aes_ccm_128* %200, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  store i8* %202, i8** %27, align 8
  %203 = load i64, i64* @TLS_CIPHER_AES_CCM_128_SALT_SIZE, align 8
  store i64 %203, i64* %22, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  br label %207

204:                                              ; preds = %131
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %30, align 4
  br label %420

207:                                              ; preds = %181, %158, %135
  %208 = load i64, i64* %20, align 8
  %209 = load i64, i64* @MAX_IV_SIZE, align 8
  %210 = icmp sgt i64 %208, %209
  br i1 %210, label %219, label %211

211:                                              ; preds = %207
  %212 = load i64, i64* %18, align 8
  %213 = load i64, i64* @MAX_IV_SIZE, align 8
  %214 = icmp sgt i64 %212, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i64, i64* %21, align 8
  %217 = load i64, i64* @TLS_MAX_REC_SEQ_SIZE, align 8
  %218 = icmp sgt i64 %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %215, %211, %207
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %30, align 4
  br label %420

222:                                              ; preds = %215
  %223 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %224 = getelementptr inbounds %struct.tls_crypto_info, %struct.tls_crypto_info* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @TLS_1_3_VERSION, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %222
  store i64 0, i64* %18, align 8
  %229 = load i64, i64* @TLS_HEADER_SIZE, align 8
  %230 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %231 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %230, i32 0, i32 9
  store i64 %229, i64* %231, align 8
  %232 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %233 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %232, i32 0, i32 0
  store i32 1, i32* %233, align 8
  br label %240

234:                                              ; preds = %222
  %235 = load i64, i64* @TLS_AAD_SPACE_SIZE, align 8
  %236 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %237 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %236, i32 0, i32 9
  store i64 %235, i64* %237, align 8
  %238 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %239 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %238, i32 0, i32 0
  store i32 0, i32* %239, align 8
  br label %240

240:                                              ; preds = %234, %228
  %241 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %242 = getelementptr inbounds %struct.tls_crypto_info, %struct.tls_crypto_info* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %245 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %244, i32 0, i32 1
  store i64 %243, i64* %245, align 8
  %246 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %247 = getelementptr inbounds %struct.tls_crypto_info, %struct.tls_crypto_info* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %250 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  %251 = load i64, i64* @TLS_HEADER_SIZE, align 8
  %252 = load i64, i64* %18, align 8
  %253 = add nsw i64 %251, %252
  %254 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %255 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %254, i32 0, i32 7
  store i64 %253, i64* %255, align 8
  %256 = load i64, i64* %19, align 8
  %257 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %258 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %257, i32 0, i32 3
  store i64 %256, i64* %258, align 8
  %259 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %260 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %259, i32 0, i32 7
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %263 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %261, %264
  %266 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %267 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %265, %269
  %271 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %272 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %271, i32 0, i32 8
  store i64 %270, i64* %272, align 8
  %273 = load i64, i64* %20, align 8
  %274 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %275 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %274, i32 0, i32 6
  store i64 %273, i64* %275, align 8
  %276 = load i64, i64* %22, align 8
  %277 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %278 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %277, i32 0, i32 5
  store i64 %276, i64* %278, align 8
  %279 = load i64, i64* %20, align 8
  %280 = load i64, i64* %22, align 8
  %281 = add nsw i64 %279, %280
  %282 = load i32, i32* @GFP_KERNEL, align 4
  %283 = call %struct.tls_sw_context_tx* @kmalloc(i64 %281, i32 %282)
  %284 = load %struct.cipher_context*, %struct.cipher_context** %15, align 8
  %285 = getelementptr inbounds %struct.cipher_context, %struct.cipher_context* %284, i32 0, i32 0
  store %struct.tls_sw_context_tx* %283, %struct.tls_sw_context_tx** %285, align 8
  %286 = load %struct.cipher_context*, %struct.cipher_context** %15, align 8
  %287 = getelementptr inbounds %struct.cipher_context, %struct.cipher_context* %286, i32 0, i32 0
  %288 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %287, align 8
  %289 = icmp ne %struct.tls_sw_context_tx* %288, null
  br i1 %289, label %293, label %290

290:                                              ; preds = %240
  %291 = load i32, i32* @ENOMEM, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %30, align 4
  br label %420

293:                                              ; preds = %240
  %294 = load i64, i64* %21, align 8
  %295 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %296 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %295, i32 0, i32 4
  store i64 %294, i64* %296, align 8
  %297 = load %struct.cipher_context*, %struct.cipher_context** %15, align 8
  %298 = getelementptr inbounds %struct.cipher_context, %struct.cipher_context* %297, i32 0, i32 0
  %299 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %298, align 8
  %300 = load i8*, i8** %27, align 8
  %301 = load i64, i64* %22, align 8
  %302 = call i32 @memcpy(%struct.tls_sw_context_tx* %299, i8* %300, i64 %301)
  %303 = load %struct.cipher_context*, %struct.cipher_context** %15, align 8
  %304 = getelementptr inbounds %struct.cipher_context, %struct.cipher_context* %303, i32 0, i32 0
  %305 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %304, align 8
  %306 = load i64, i64* %22, align 8
  %307 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %305, i64 %306
  %308 = load i8*, i8** %24, align 8
  %309 = load i64, i64* %20, align 8
  %310 = call i32 @memcpy(%struct.tls_sw_context_tx* %307, i8* %308, i64 %309)
  %311 = load i8*, i8** %25, align 8
  %312 = load i64, i64* %21, align 8
  %313 = load i32, i32* @GFP_KERNEL, align 4
  %314 = call %struct.tls_sw_context_tx* @kmemdup(i8* %311, i64 %312, i32 %313)
  %315 = load %struct.cipher_context*, %struct.cipher_context** %15, align 8
  %316 = getelementptr inbounds %struct.cipher_context, %struct.cipher_context* %315, i32 0, i32 1
  store %struct.tls_sw_context_tx* %314, %struct.tls_sw_context_tx** %316, align 8
  %317 = load %struct.cipher_context*, %struct.cipher_context** %15, align 8
  %318 = getelementptr inbounds %struct.cipher_context, %struct.cipher_context* %317, i32 0, i32 1
  %319 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %318, align 8
  %320 = icmp ne %struct.tls_sw_context_tx* %319, null
  br i1 %320, label %324, label %321

321:                                              ; preds = %293
  %322 = load i32, i32* @ENOMEM, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %30, align 4
  br label %413

324:                                              ; preds = %293
  %325 = load %struct.crypto_aead**, %struct.crypto_aead*** %16, align 8
  %326 = load %struct.crypto_aead*, %struct.crypto_aead** %325, align 8
  %327 = icmp ne %struct.crypto_aead* %326, null
  br i1 %327, label %342, label %328

328:                                              ; preds = %324
  %329 = load i8*, i8** %28, align 8
  %330 = call %struct.crypto_aead* @crypto_alloc_aead(i8* %329, i32 0, i32 0)
  %331 = load %struct.crypto_aead**, %struct.crypto_aead*** %16, align 8
  store %struct.crypto_aead* %330, %struct.crypto_aead** %331, align 8
  %332 = load %struct.crypto_aead**, %struct.crypto_aead*** %16, align 8
  %333 = load %struct.crypto_aead*, %struct.crypto_aead** %332, align 8
  %334 = call i64 @IS_ERR(%struct.crypto_aead* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %328
  %337 = load %struct.crypto_aead**, %struct.crypto_aead*** %16, align 8
  %338 = load %struct.crypto_aead*, %struct.crypto_aead** %337, align 8
  %339 = call i32 @PTR_ERR(%struct.crypto_aead* %338)
  store i32 %339, i32* %30, align 4
  %340 = load %struct.crypto_aead**, %struct.crypto_aead*** %16, align 8
  store %struct.crypto_aead* null, %struct.crypto_aead** %340, align 8
  br label %406

341:                                              ; preds = %328
  br label %342

342:                                              ; preds = %341, %324
  %343 = load i32, i32* @tls_sw_push_pending_record, align 4
  %344 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %345 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %344, i32 0, i32 2
  store i32 %343, i32* %345, align 8
  %346 = load %struct.crypto_aead**, %struct.crypto_aead*** %16, align 8
  %347 = load %struct.crypto_aead*, %struct.crypto_aead** %346, align 8
  %348 = load i8*, i8** %26, align 8
  %349 = load i64, i64* %29, align 8
  %350 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %347, i8* %348, i64 %349)
  store i32 %350, i32* %30, align 4
  %351 = load i32, i32* %30, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %342
  br label %401

354:                                              ; preds = %342
  %355 = load %struct.crypto_aead**, %struct.crypto_aead*** %16, align 8
  %356 = load %struct.crypto_aead*, %struct.crypto_aead** %355, align 8
  %357 = load %struct.tls_prot_info*, %struct.tls_prot_info** %8, align 8
  %358 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %357, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @crypto_aead_setauthsize(%struct.crypto_aead* %356, i64 %359)
  store i32 %360, i32* %30, align 4
  %361 = load i32, i32* %30, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %354
  br label %401

364:                                              ; preds = %354
  %365 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %14, align 8
  %366 = icmp ne %struct.tls_sw_context_rx* %365, null
  br i1 %366, label %367, label %400

367:                                              ; preds = %364
  %368 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %14, align 8
  %369 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %368, i32 0, i32 2
  %370 = load %struct.crypto_aead*, %struct.crypto_aead** %369, align 8
  %371 = call %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead* %370)
  store %struct.crypto_tfm* %371, %struct.crypto_tfm** %23, align 8
  %372 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %373 = getelementptr inbounds %struct.tls_crypto_info, %struct.tls_crypto_info* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @TLS_1_3_VERSION, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %367
  %378 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %14, align 8
  %379 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %378, i32 0, i32 0
  store i32 0, i32* %379, align 8
  br label %390

380:                                              ; preds = %367
  %381 = load %struct.crypto_tfm*, %struct.crypto_tfm** %23, align 8
  %382 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %381, i32 0, i32 0
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %387 = and i32 %385, %386
  %388 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %14, align 8
  %389 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %388, i32 0, i32 0
  store i32 %387, i32* %389, align 8
  br label %390

390:                                              ; preds = %380, %377
  %391 = call i32 @memset(%struct.strp_callbacks* %17, i32 0, i32 8)
  %392 = load i32, i32* @tls_queue, align 4
  %393 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %17, i32 0, i32 1
  store i32 %392, i32* %393, align 4
  %394 = load i32, i32* @tls_read_size, align 4
  %395 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %17, i32 0, i32 0
  store i32 %394, i32* %395, align 4
  %396 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %14, align 8
  %397 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %396, i32 0, i32 1
  %398 = load %struct.sock*, %struct.sock** %4, align 8
  %399 = call i32 @strp_init(i32* %397, %struct.sock* %398, %struct.strp_callbacks* %17)
  br label %400

400:                                              ; preds = %390, %364
  br label %438

401:                                              ; preds = %363, %353
  %402 = load %struct.crypto_aead**, %struct.crypto_aead*** %16, align 8
  %403 = load %struct.crypto_aead*, %struct.crypto_aead** %402, align 8
  %404 = call i32 @crypto_free_aead(%struct.crypto_aead* %403)
  %405 = load %struct.crypto_aead**, %struct.crypto_aead*** %16, align 8
  store %struct.crypto_aead* null, %struct.crypto_aead** %405, align 8
  br label %406

406:                                              ; preds = %401, %336
  %407 = load %struct.cipher_context*, %struct.cipher_context** %15, align 8
  %408 = getelementptr inbounds %struct.cipher_context, %struct.cipher_context* %407, i32 0, i32 1
  %409 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %408, align 8
  %410 = call i32 @kfree(%struct.tls_sw_context_tx* %409)
  %411 = load %struct.cipher_context*, %struct.cipher_context** %15, align 8
  %412 = getelementptr inbounds %struct.cipher_context, %struct.cipher_context* %411, i32 0, i32 1
  store %struct.tls_sw_context_tx* null, %struct.tls_sw_context_tx** %412, align 8
  br label %413

413:                                              ; preds = %406, %321
  %414 = load %struct.cipher_context*, %struct.cipher_context** %15, align 8
  %415 = getelementptr inbounds %struct.cipher_context, %struct.cipher_context* %414, i32 0, i32 0
  %416 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %415, align 8
  %417 = call i32 @kfree(%struct.tls_sw_context_tx* %416)
  %418 = load %struct.cipher_context*, %struct.cipher_context** %15, align 8
  %419 = getelementptr inbounds %struct.cipher_context, %struct.cipher_context* %418, i32 0, i32 0
  store %struct.tls_sw_context_tx* null, %struct.tls_sw_context_tx** %419, align 8
  br label %420

420:                                              ; preds = %413, %290, %219, %204
  %421 = load i32, i32* %6, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %430

423:                                              ; preds = %420
  %424 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %425 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %424, i32 0, i32 1
  %426 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %425, align 8
  %427 = call i32 @kfree(%struct.tls_sw_context_tx* %426)
  %428 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %429 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %428, i32 0, i32 1
  store %struct.tls_sw_context_tx* null, %struct.tls_sw_context_tx** %429, align 8
  br label %437

430:                                              ; preds = %420
  %431 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %432 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %431, i32 0, i32 0
  %433 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %432, align 8
  %434 = call i32 @kfree(%struct.tls_sw_context_tx* %433)
  %435 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %436 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %435, i32 0, i32 0
  store %struct.tls_sw_context_tx* null, %struct.tls_sw_context_tx** %436, align 8
  br label %437

437:                                              ; preds = %430, %423
  br label %438

438:                                              ; preds = %437, %400, %77, %54, %37
  %439 = load i32, i32* %30, align 4
  ret i32 %439
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @crypto_init_wait(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.tls_sw_context_tx* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(%struct.tls_sw_context_tx*, i8*, i64) #1

declare dso_local %struct.tls_sw_context_tx* @kmemdup(i8*, i64, i32) #1

declare dso_local %struct.crypto_aead* @crypto_alloc_aead(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i8*, i64) #1

declare dso_local i32 @crypto_aead_setauthsize(%struct.crypto_aead*, i64) #1

declare dso_local %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead*) #1

declare dso_local i32 @memset(%struct.strp_callbacks*, i32, i32) #1

declare dso_local i32 @strp_init(i32*, %struct.sock*, %struct.strp_callbacks*) #1

declare dso_local i32 @crypto_free_aead(%struct.crypto_aead*) #1

declare dso_local i32 @kfree(%struct.tls_sw_context_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
