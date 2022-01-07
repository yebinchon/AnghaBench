; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_do_decryption.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_do_decryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.sock* }
%struct.scatterlist = type { i32 }
%struct.aead_request = type { i32 }
%struct.tls_context = type { %struct.tls_prot_info }
%struct.tls_prot_info = type { i64, i32 }
%struct.tls_sw_context_rx = type { i32, %struct.sk_buff, i32 }

@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@tls_decrypt_done = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.scatterlist*, %struct.scatterlist*, i8*, i64, %struct.aead_request*, i32)* @tls_do_decryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_do_decryption(%struct.sock* %0, %struct.sk_buff* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i8* %4, i64 %5, %struct.aead_request* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.aead_request*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.tls_context*, align 8
  %19 = alloca %struct.tls_prot_info*, align 8
  %20 = alloca %struct.tls_sw_context_rx*, align 8
  %21 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %10, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %12, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store %struct.aead_request* %6, %struct.aead_request** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load %struct.sock*, %struct.sock** %10, align 8
  %23 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %22)
  store %struct.tls_context* %23, %struct.tls_context** %18, align 8
  %24 = load %struct.tls_context*, %struct.tls_context** %18, align 8
  %25 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %24, i32 0, i32 0
  store %struct.tls_prot_info* %25, %struct.tls_prot_info** %19, align 8
  %26 = load %struct.tls_context*, %struct.tls_context** %18, align 8
  %27 = call %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context* %26)
  store %struct.tls_sw_context_rx* %27, %struct.tls_sw_context_rx** %20, align 8
  %28 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %29 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %20, align 8
  %30 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @aead_request_set_tfm(%struct.aead_request* %28, i32 %31)
  %33 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %34 = load %struct.tls_prot_info*, %struct.tls_prot_info** %19, align 8
  %35 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @aead_request_set_ad(%struct.aead_request* %33, i32 %36)
  %38 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %40 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load %struct.tls_prot_info*, %struct.tls_prot_info** %19, align 8
  %43 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  %46 = load i8*, i8** %14, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = call i32 @aead_request_set_crypt(%struct.aead_request* %38, %struct.scatterlist* %39, %struct.scatterlist* %40, i64 %45, i32* %47)
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %8
  %52 = load %struct.sock*, %struct.sock** %10, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  store %struct.sock* %52, %struct.sock** %54, align 8
  %55 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %56 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %57 = load i32, i32* @tls_decrypt_done, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = call i32 @aead_request_set_callback(%struct.aead_request* %55, i32 %56, i32 %57, %struct.sk_buff* %58)
  %60 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %20, align 8
  %61 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %60, i32 0, i32 0
  %62 = call i32 @atomic_inc(i32* %61)
  br label %70

63:                                               ; preds = %8
  %64 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %65 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %66 = load i32, i32* @crypto_req_done, align 4
  %67 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %20, align 8
  %68 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %67, i32 0, i32 1
  %69 = call i32 @aead_request_set_callback(%struct.aead_request* %64, i32 %65, i32 %66, %struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %63, %51
  %71 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %72 = call i32 @crypto_aead_decrypt(%struct.aead_request* %71)
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* @EINPROGRESS, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %21, align 4
  store i32 %81, i32* %9, align 4
  br label %96

82:                                               ; preds = %77
  %83 = load i32, i32* %21, align 4
  %84 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %20, align 8
  %85 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %84, i32 0, i32 1
  %86 = call i32 @crypto_wait_req(i32 %83, %struct.sk_buff* %85)
  store i32 %86, i32* %21, align 4
  br label %87

87:                                               ; preds = %82, %70
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %20, align 8
  %92 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %91, i32 0, i32 0
  %93 = call i32 @atomic_dec(i32* %92)
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %21, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %94, %80
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context*) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i64, i32*) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

declare dso_local i32 @crypto_wait_req(i32, %struct.sk_buff*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
