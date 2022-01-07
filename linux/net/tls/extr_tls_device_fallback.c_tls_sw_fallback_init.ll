; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_tls_sw_fallback_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_tls_sw_fallback_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_offload_context_tx = type { i32* }
%struct.tls_crypto_info = type { i32 }
%struct.tls12_crypto_info_aes_gcm_128 = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"gcm(aes)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"crypto_alloc_aead failed rc=%d\0A\00", align 1
@TLS_CIPHER_AES_GCM_128_KEY_SIZE = common dso_local global i32 0, align 4
@TLS_CIPHER_AES_GCM_128_TAG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_sw_fallback_init(%struct.sock* %0, %struct.tls_offload_context_tx* %1, %struct.tls_crypto_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.tls_offload_context_tx*, align 8
  %7 = alloca %struct.tls_crypto_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.tls_offload_context_tx* %1, %struct.tls_offload_context_tx** %6, align 8
  store %struct.tls_crypto_info* %2, %struct.tls_crypto_info** %7, align 8
  %10 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %11 = call i32* @crypto_alloc_aead(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %10)
  %12 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %6, align 8
  %13 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %6, align 8
  %15 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @IS_ERR(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %6, align 8
  %21 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @PTR_ERR(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %6, align 8
  %27 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %57

28:                                               ; preds = %3
  %29 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %7, align 8
  %30 = bitcast %struct.tls_crypto_info* %29 to %struct.tls12_crypto_info_aes_gcm_128*
  %31 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  %33 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %6, align 8
  %34 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @TLS_CIPHER_AES_GCM_128_KEY_SIZE, align 4
  %38 = call i32 @crypto_aead_setkey(i32* %35, i32* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %52

42:                                               ; preds = %28
  %43 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %6, align 8
  %44 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @TLS_CIPHER_AES_GCM_128_TAG_SIZE, align 4
  %47 = call i32 @crypto_aead_setauthsize(i32* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %52

51:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %59

52:                                               ; preds = %50, %41
  %53 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %6, align 8
  %54 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @crypto_free_aead(i32* %55)
  br label %57

57:                                               ; preds = %52, %19
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @crypto_alloc_aead(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32) #1

declare dso_local i32 @crypto_aead_setkey(i32*, i32*, i32) #1

declare dso_local i32 @crypto_aead_setauthsize(i32*, i32) #1

declare dso_local i32 @crypto_free_aead(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
