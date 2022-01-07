; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_do_encryption.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_do_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { %struct.TYPE_4__, %struct.tls_prot_info }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tls_prot_info = type { i64, i64, i32, i32, i64, i64 }
%struct.tls_sw_context_tx = type { %struct.tls_rec*, i32, i32, i32 }
%struct.tls_rec = type { i32, i32, i32*, i32, i32, %struct.sk_msg }
%struct.sk_msg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.aead_request = type { i32 }
%struct.scatterlist = type { i32, i32 }
%struct.list_head = type { i32 }

@TLS_CIPHER_AES_CCM_128 = common dso_local global i64 0, align 8
@TLS_AES_CCM_IV_B0_BYTE = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@tls_encrypt_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.tls_context*, %struct.tls_sw_context_tx*, %struct.aead_request*, i64, i32)* @tls_do_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_do_encryption(%struct.sock* %0, %struct.tls_context* %1, %struct.tls_sw_context_tx* %2, %struct.aead_request* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.tls_context*, align 8
  %10 = alloca %struct.tls_sw_context_tx*, align 8
  %11 = alloca %struct.aead_request*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tls_prot_info*, align 8
  %15 = alloca %struct.tls_rec*, align 8
  %16 = alloca %struct.sk_msg*, align 8
  %17 = alloca %struct.scatterlist*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.tls_context* %1, %struct.tls_context** %9, align 8
  store %struct.tls_sw_context_tx* %2, %struct.tls_sw_context_tx** %10, align 8
  store %struct.aead_request* %3, %struct.aead_request** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.tls_context*, %struct.tls_context** %9, align 8
  %21 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %20, i32 0, i32 1
  store %struct.tls_prot_info* %21, %struct.tls_prot_info** %14, align 8
  %22 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %10, align 8
  %23 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %22, i32 0, i32 0
  %24 = load %struct.tls_rec*, %struct.tls_rec** %23, align 8
  store %struct.tls_rec* %24, %struct.tls_rec** %15, align 8
  %25 = load %struct.tls_rec*, %struct.tls_rec** %15, align 8
  %26 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %25, i32 0, i32 5
  store %struct.sk_msg* %26, %struct.sk_msg** %16, align 8
  %27 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %27, i32 %28)
  store %struct.scatterlist* %29, %struct.scatterlist** %17, align 8
  store i32 0, i32* %19, align 4
  %30 = load %struct.tls_prot_info*, %struct.tls_prot_info** %14, align 8
  %31 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TLS_CIPHER_AES_CCM_128, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %6
  %36 = load i32, i32* @TLS_AES_CCM_IV_B0_BYTE, align 4
  %37 = load %struct.tls_rec*, %struct.tls_rec** %15, align 8
  %38 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  store i32 1, i32* %19, align 4
  br label %41

41:                                               ; preds = %35, %6
  %42 = load %struct.tls_rec*, %struct.tls_rec** %15, align 8
  %43 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.tls_context*, %struct.tls_context** %9, align 8
  %49 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tls_prot_info*, %struct.tls_prot_info** %14, align 8
  %53 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.tls_prot_info*, %struct.tls_prot_info** %14, align 8
  %56 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = call i32 @memcpy(i32* %47, i32 %51, i64 %58)
  %60 = load %struct.tls_prot_info*, %struct.tls_prot_info** %14, align 8
  %61 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tls_rec*, %struct.tls_rec** %15, align 8
  %64 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.tls_context*, %struct.tls_context** %9, align 8
  %67 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @xor_iv_with_seq(i32 %62, i32* %65, i32 %69)
  %71 = load %struct.tls_prot_info*, %struct.tls_prot_info** %14, align 8
  %72 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %75 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.tls_prot_info*, %struct.tls_prot_info** %14, align 8
  %81 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %84 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %91 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %94 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %10, align 8
  %95 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @aead_request_set_tfm(%struct.aead_request* %93, i32 %96)
  %98 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %99 = load %struct.tls_prot_info*, %struct.tls_prot_info** %14, align 8
  %100 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @aead_request_set_ad(%struct.aead_request* %98, i32 %101)
  %103 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %104 = load %struct.tls_rec*, %struct.tls_rec** %15, align 8
  %105 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tls_rec*, %struct.tls_rec** %15, align 8
  %108 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load %struct.tls_rec*, %struct.tls_rec** %15, align 8
  %112 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @aead_request_set_crypt(%struct.aead_request* %103, i32 %106, i32 %109, i64 %110, i32* %113)
  %115 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %116 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %117 = load i32, i32* @tls_encrypt_done, align 4
  %118 = load %struct.sock*, %struct.sock** %8, align 8
  %119 = call i32 @aead_request_set_callback(%struct.aead_request* %115, i32 %116, i32 %117, %struct.sock* %118)
  %120 = load %struct.tls_rec*, %struct.tls_rec** %15, align 8
  %121 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %120, i32 0, i32 0
  %122 = bitcast i32* %121 to %struct.list_head*
  %123 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %10, align 8
  %124 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %123, i32 0, i32 2
  %125 = call i32 @list_add_tail(%struct.list_head* %122, i32* %124)
  %126 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %10, align 8
  %127 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %126, i32 0, i32 1
  %128 = call i32 @atomic_inc(i32* %127)
  %129 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %130 = call i32 @crypto_aead_encrypt(%struct.aead_request* %129)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %41
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* @EINPROGRESS, align 4
  %136 = sub nsw i32 0, %135
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %133, %41
  %139 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %10, align 8
  %140 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %139, i32 0, i32 1
  %141 = call i32 @atomic_dec(i32* %140)
  %142 = load %struct.tls_prot_info*, %struct.tls_prot_info** %14, align 8
  %143 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %146 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = sub nsw i64 %148, %144
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %146, align 4
  %151 = load %struct.tls_prot_info*, %struct.tls_prot_info** %14, align 8
  %152 = getelementptr inbounds %struct.tls_prot_info, %struct.tls_prot_info* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %155 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %153
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 4
  br label %160

160:                                              ; preds = %138, %133
  %161 = load i32, i32* %18, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = load %struct.tls_rec*, %struct.tls_rec** %15, align 8
  %165 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @WRITE_ONCE(i32 %166, i32 1)
  br label %179

168:                                              ; preds = %160
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* @EINPROGRESS, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp ne i32 %169, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.tls_rec*, %struct.tls_rec** %15, align 8
  %175 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %174, i32 0, i32 0
  %176 = call i32 @list_del(i32* %175)
  %177 = load i32, i32* %18, align 4
  store i32 %177, i32* %7, align 4
  br label %188

178:                                              ; preds = %168
  br label %179

179:                                              ; preds = %178, %163
  %180 = load %struct.tls_sw_context_tx*, %struct.tls_sw_context_tx** %10, align 8
  %181 = getelementptr inbounds %struct.tls_sw_context_tx, %struct.tls_sw_context_tx* %180, i32 0, i32 0
  store %struct.tls_rec* null, %struct.tls_rec** %181, align 8
  %182 = load %struct.sock*, %struct.sock** %8, align 8
  %183 = load %struct.tls_prot_info*, %struct.tls_prot_info** %14, align 8
  %184 = load %struct.tls_context*, %struct.tls_context** %9, align 8
  %185 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %184, i32 0, i32 0
  %186 = call i32 @tls_advance_record_sn(%struct.sock* %182, %struct.tls_prot_info* %183, %struct.TYPE_4__* %185)
  %187 = load i32, i32* %18, align 4
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %179, %173
  %189 = load i32, i32* %7, align 4
  ret i32 %189
}

declare dso_local %struct.scatterlist* @sk_msg_elem(%struct.sk_msg*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @xor_iv_with_seq(i32, i32*, i32) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, i32, i32, i64, i32*) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, %struct.sock*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @tls_advance_record_sn(%struct.sock*, %struct.tls_prot_info*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
