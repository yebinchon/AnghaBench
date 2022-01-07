; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_krb5_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_krb5_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_ctx = type { %struct.TYPE_2__*, i32*, %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher*, i32*, %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher*, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.crypto_sync_skcipher = type { i32 }
%struct.xdr_buf = type { i64 }
%struct.xdr_netobj = type { i32, i32* }
%struct.decryptor_desc = type { i32, i32, i32, i64, i64 }

@GSS_KRB5_MAX_CKSUM_LEN = common dso_local global i32 0, align 4
@KG_USAGE_ACCEPTOR_SEAL = common dso_local global i32 0, align 4
@KG_USAGE_INITIATOR_SEAL = common dso_local global i32 0, align 4
@GSS_KRB5_TOK_HDR_LEN = common dso_local global i64 0, align 8
@req = common dso_local global i32 0, align 4
@decryptor = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_krb5_aes_decrypt(%struct.krb5_ctx* %0, i64 %1, %struct.xdr_buf* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.krb5_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.xdr_buf, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.crypto_sync_skcipher*, align 8
  %15 = alloca %struct.crypto_sync_skcipher*, align 8
  %16 = alloca %struct.xdr_netobj, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.decryptor_desc, align 8
  %24 = alloca i32, align 4
  store %struct.krb5_ctx* %0, %struct.krb5_ctx** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.xdr_buf* %2, %struct.xdr_buf** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %12, align 8
  %25 = load i32, i32* @GSS_KRB5_MAX_CKSUM_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %29 = load i32, i32* @GSS_KRB5_MAX_CKSUM_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %32 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %5
  %37 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %37, i32 0, i32 6
  %39 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %38, align 8
  store %struct.crypto_sync_skcipher* %39, %struct.crypto_sync_skcipher** %14, align 8
  %40 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %40, i32 0, i32 5
  %42 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %41, align 8
  store %struct.crypto_sync_skcipher* %42, %struct.crypto_sync_skcipher** %15, align 8
  %43 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %13, align 8
  %46 = load i32, i32* @KG_USAGE_ACCEPTOR_SEAL, align 4
  store i32 %46, i32* %24, align 4
  br label %58

47:                                               ; preds = %5
  %48 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %48, i32 0, i32 3
  %50 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %49, align 8
  store %struct.crypto_sync_skcipher* %50, %struct.crypto_sync_skcipher** %14, align 8
  %51 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %51, i32 0, i32 2
  %53 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %52, align 8
  store %struct.crypto_sync_skcipher* %53, %struct.crypto_sync_skcipher** %15, align 8
  %54 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %13, align 8
  %57 = load i32, i32* @KG_USAGE_INITIATOR_SEAL, align 4
  store i32 %57, i32* %24, align 4
  br label %58

58:                                               ; preds = %47, %36
  %59 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %14, align 8
  %60 = call i32 @crypto_sync_skcipher_blocksize(%struct.crypto_sync_skcipher* %59)
  store i32 %60, i32* %21, align 4
  %61 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @GSS_KRB5_TOK_HDR_LEN, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %66 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load i64, i64* @GSS_KRB5_TOK_HDR_LEN, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %73 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %71, %76
  %78 = call i32 @xdr_buf_subsegment(%struct.xdr_buf* %61, %struct.xdr_buf* %11, i64 %64, i64 %77)
  %79 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %11, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %21, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = sub nsw i64 %83, 1
  %85 = load i32, i32* %21, align 4
  %86 = sext i32 %85 to i64
  %87 = sdiv i64 %84, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %89 = load i32, i32* %20, align 4
  %90 = icmp sgt i32 %89, 2
  br i1 %90, label %91, label %96

91:                                               ; preds = %58
  %92 = load i32, i32* %20, align 4
  %93 = sub nsw i32 %92, 2
  %94 = load i32, i32* %21, align 4
  %95 = mul nsw i32 %93, %94
  store i32 %95, i32* %22, align 4
  br label %96

96:                                               ; preds = %91, %58
  %97 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @memset(i32 %98, i32 0, i32 4)
  %100 = load i32, i32* %22, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %96
  %103 = load i32, i32* @req, align 4
  %104 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %15, align 8
  %105 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %103, %struct.crypto_sync_skcipher* %104)
  %106 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @req, align 4
  %109 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 2
  store i32 %108, i32* %109, align 8
  %110 = load i32, i32* @req, align 4
  %111 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %15, align 8
  %112 = call i32 @skcipher_request_set_sync_tfm(i32 %110, %struct.crypto_sync_skcipher* %111)
  %113 = load i32, i32* @req, align 4
  %114 = call i32 @skcipher_request_set_callback(i32 %113, i32 0, i32* null, i32* null)
  %115 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @sg_init_table(i32 %116, i32 4)
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* @decryptor, align 4
  %120 = call i64 @xdr_process_buf(%struct.xdr_buf* %11, i32 0, i32 %118, i32 %119, %struct.decryptor_desc* %23)
  store i64 %120, i64* %12, align 8
  %121 = load i32, i32* @req, align 4
  %122 = call i32 @skcipher_request_zero(i32 %121)
  %123 = load i64, i64* %12, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %102
  br label %194

126:                                              ; preds = %102
  br label %127

127:                                              ; preds = %126, %96
  %128 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %14, align 8
  %129 = load i32, i32* %22, align 4
  %130 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %23, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @gss_krb5_cts_crypt(%struct.crypto_sync_skcipher* %128, %struct.xdr_buf* %11, i32 %129, i32 %131, i32* null, i32 0)
  store i64 %132, i64* %12, align 8
  %133 = load i64, i64* %12, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %194

136:                                              ; preds = %127
  %137 = mul nuw i64 4, %26
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %16, i32 0, i32 0
  store i32 %138, i32* %139, align 8
  %140 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %16, i32 0, i32 1
  store i32* %28, i32** %140, align 8
  %141 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* %24, align 4
  %144 = call i64 @make_checksum_v2(%struct.krb5_ctx* %141, i32* null, i32 0, %struct.xdr_buf* %11, i32 0, i32* %142, i32 %143, %struct.xdr_netobj* %16)
  store i64 %144, i64* %12, align 8
  %145 = load i64, i64* %12, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %194

148:                                              ; preds = %136
  %149 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %150 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %151 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %154 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %152, %157
  %159 = trunc i64 %158 to i32
  %160 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %161 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i64 @read_bytes_from_xdr_buf(%struct.xdr_buf* %149, i32 %159, i32* %31, i32 %165)
  store i64 %166, i64* %12, align 8
  %167 = load i64, i64* %12, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %148
  br label %194

170:                                              ; preds = %148
  %171 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %172 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %171, i32 0, i32 0
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i64 @crypto_memneq(i32* %31, i32* %28, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i64, i64* @GSS_S_BAD_SIG, align 8
  store i64 %180, i64* %12, align 8
  br label %194

181:                                              ; preds = %170
  %182 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %183 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %182, i32 0, i32 0
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64*, i64** %9, align 8
  store i64 %186, i64* %187, align 8
  %188 = load %struct.krb5_ctx*, %struct.krb5_ctx** %6, align 8
  %189 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** %10, align 8
  store i64 %192, i64* %193, align 8
  br label %194

194:                                              ; preds = %181, %179, %169, %147, %135, %125
  %195 = load i64, i64* %12, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i64, i64* %12, align 8
  %199 = load i64, i64* @GSS_S_BAD_SIG, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %202, i64* %12, align 8
  br label %203

203:                                              ; preds = %201, %197, %194
  %204 = load i64, i64* %12, align 8
  %205 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %205)
  ret i64 %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_sync_skcipher_blocksize(%struct.crypto_sync_skcipher*) #2

declare dso_local i32 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i64, i64) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, %struct.crypto_sync_skcipher*) #2

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, %struct.crypto_sync_skcipher*) #2

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #2

declare dso_local i32 @sg_init_table(i32, i32) #2

declare dso_local i64 @xdr_process_buf(%struct.xdr_buf*, i32, i32, i32, %struct.decryptor_desc*) #2

declare dso_local i32 @skcipher_request_zero(i32) #2

declare dso_local i64 @gss_krb5_cts_crypt(%struct.crypto_sync_skcipher*, %struct.xdr_buf*, i32, i32, i32*, i32) #2

declare dso_local i64 @make_checksum_v2(%struct.krb5_ctx*, i32*, i32, %struct.xdr_buf*, i32, i32*, i32, %struct.xdr_netobj*) #2

declare dso_local i64 @read_bytes_from_xdr_buf(%struct.xdr_buf*, i32, i32*, i32) #2

declare dso_local i64 @crypto_memneq(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
