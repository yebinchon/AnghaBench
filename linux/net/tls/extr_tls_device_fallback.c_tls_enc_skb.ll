; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_tls_enc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_tls_enc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.sk_buff = type { i32, %struct.sk_buff* }
%struct.tls_offload_context_tx = type { i32 }
%struct.aead_request = type opaque

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TLS_CIPHER_AES_GCM_128_SALT_SIZE = common dso_local global i32 0, align 4
@TLS_CIPHER_AES_GCM_128_IV_SIZE = common dso_local global i32 0, align 4
@TLS_AAD_SPACE_SIZE = common dso_local global i32 0, align 4
@TLS_CIPHER_AES_GCM_128_TAG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.tls_context*, %struct.scatterlist*, %struct.scatterlist*, %struct.sk_buff*, i32, i32)* @tls_enc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tls_enc_skb(%struct.tls_context* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, %struct.sk_buff* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tls_context*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tls_offload_context_tx*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.aead_request*, align 8
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca i32, align 4
  store %struct.tls_context* %0, %struct.tls_context** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %25 = call i32 @skb_transport_offset(%struct.sk_buff* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = call i32 @tcp_hdrlen(%struct.sk_buff* %26)
  %28 = add nsw i32 %25, %27
  store i32 %28, i32* %14, align 4
  %29 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %30 = call %struct.tls_offload_context_tx* @tls_offload_ctx_tx(%struct.tls_context* %29)
  store %struct.tls_offload_context_tx* %30, %struct.tls_offload_context_tx** %15, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %16, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %22, align 8
  %36 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %15, align 8
  %37 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call i8* @tls_alloc_aead_request(i32 %38, i32 %39)
  %41 = bitcast i8* %40 to %struct.aead_request*
  store %struct.aead_request* %41, %struct.aead_request** %21, align 8
  %42 = load %struct.aead_request*, %struct.aead_request** %21, align 8
  %43 = icmp ne %struct.aead_request* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %6
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %143

45:                                               ; preds = %6
  %46 = load i32, i32* @TLS_CIPHER_AES_GCM_128_SALT_SIZE, align 4
  %47 = load i32, i32* @TLS_CIPHER_AES_GCM_128_IV_SIZE, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* @TLS_AAD_SPACE_SIZE, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* @TLS_CIPHER_AES_GCM_128_TAG_SIZE, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %23, align 4
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call i8* @kmalloc(i32 %55, i32 %56)
  store i8* %57, i8** %17, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %45
  br label %135

61:                                               ; preds = %45
  %62 = load i8*, i8** %17, align 8
  store i8* %62, i8** %18, align 8
  %63 = load i8*, i8** %18, align 8
  %64 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %65 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TLS_CIPHER_AES_GCM_128_SALT_SIZE, align 4
  %70 = call i32 @memcpy(i8* %63, i32 %68, i32 %69)
  %71 = load i8*, i8** %17, align 8
  %72 = load i32, i32* @TLS_CIPHER_AES_GCM_128_SALT_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %71, i64 %73
  %75 = load i32, i32* @TLS_CIPHER_AES_GCM_128_IV_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %74, i64 %76
  store i8* %77, i8** %19, align 8
  %78 = load i8*, i8** %19, align 8
  %79 = load i32, i32* @TLS_AAD_SPACE_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %78, i64 %80
  store i8* %81, i8** %20, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %83 = call i64 @skb_headroom(%struct.sk_buff* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %83, %87
  %89 = load i32, i32* @GFP_ATOMIC, align 4
  %90 = call %struct.sk_buff* @alloc_skb(i64 %88, i32 %89)
  store %struct.sk_buff* %90, %struct.sk_buff** %22, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %61
  br label %132

94:                                               ; preds = %61
  %95 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %97 = call i64 @skb_headroom(%struct.sk_buff* %96)
  %98 = call i32 @skb_reserve(%struct.sk_buff* %95, i64 %97)
  %99 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %100 = load i8*, i8** %17, align 8
  %101 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i8*, i8** %20, align 8
  %107 = call i32 @fill_sg_out(%struct.scatterlist* %99, i8* %100, %struct.tls_context* %101, %struct.sk_buff* %102, i32 %103, i32 %104, i32 %105, i8* %106)
  %108 = load %struct.aead_request*, %struct.aead_request** %21, align 8
  %109 = bitcast %struct.aead_request* %108 to i8*
  %110 = load %struct.tls_offload_context_tx*, %struct.tls_offload_context_tx** %15, align 8
  %111 = getelementptr inbounds %struct.tls_offload_context_tx, %struct.tls_offload_context_tx* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %114 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %115 = load i8*, i8** %19, align 8
  %116 = load i8*, i8** %18, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i64 @tls_enc_records(i8* %109, i32 %112, %struct.scatterlist* %113, %struct.scatterlist* %114, i8* %115, i8* %116, i32 %117, i32 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %94
  br label %140

124:                                              ; preds = %94
  %125 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @complete_skb(%struct.sk_buff* %125, %struct.sk_buff* %126, i32 %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  store %struct.sk_buff* %129, %struct.sk_buff** %131, align 8
  br label %132

132:                                              ; preds = %140, %124, %93
  %133 = load i8*, i8** %17, align 8
  %134 = call i32 @kfree(i8* %133)
  br label %135

135:                                              ; preds = %132, %60
  %136 = load %struct.aead_request*, %struct.aead_request** %21, align 8
  %137 = bitcast %struct.aead_request* %136 to i8*
  %138 = call i32 @kfree(i8* %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %139, %struct.sk_buff** %7, align 8
  br label %143

140:                                              ; preds = %123
  %141 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %142 = call i32 @kfree_skb(%struct.sk_buff* %141)
  store %struct.sk_buff* null, %struct.sk_buff** %22, align 8
  br label %132

143:                                              ; preds = %135, %44
  %144 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %144
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.tls_offload_context_tx* @tls_offload_ctx_tx(%struct.tls_context*) #1

declare dso_local i8* @tls_alloc_aead_request(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @fill_sg_out(%struct.scatterlist*, i8*, %struct.tls_context*, %struct.sk_buff*, i32, i32, i32, i8*) #1

declare dso_local i64 @tls_enc_records(i8*, i32, %struct.scatterlist*, %struct.scatterlist*, i8*, i8*, i32, i32) #1

declare dso_local i32 @complete_skb(%struct.sk_buff*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
