; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_decrypt_xdr_buf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_decrypt_xdr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_sync_skcipher = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.decryptor_desc = type { i32, i64, i64, i32, i32 }

@req = common dso_local global i32 0, align 4
@decryptor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_decrypt_xdr_buf(%struct.crypto_sync_skcipher* %0, %struct.xdr_buf* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_sync_skcipher*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.decryptor_desc, align 8
  store %struct.crypto_sync_skcipher* %0, %struct.crypto_sync_skcipher** %4, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @req, align 4
  %10 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %4, align 8
  %11 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %9, %struct.crypto_sync_skcipher* %10)
  %12 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %13 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %14, %15
  %17 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %4, align 8
  %18 = call i32 @crypto_sync_skcipher_blocksize(%struct.crypto_sync_skcipher* %17)
  %19 = srem i32 %16, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* @req, align 4
  %24 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %4, align 8
  %25 = call i32 @skcipher_request_set_sync_tfm(i32 %23, %struct.crypto_sync_skcipher* %24)
  %26 = load i32, i32* @req, align 4
  %27 = call i32 @skcipher_request_set_callback(i32 %26, i32 0, i32* null, i32* null)
  %28 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %8, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memset(i32 %29, i32 0, i32 4)
  %31 = load i32, i32* @req, align 4
  %32 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %8, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %8, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %8, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sg_init_table(i32 %36, i32 4)
  %38 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %41 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* @decryptor, align 4
  %46 = call i32 @xdr_process_buf(%struct.xdr_buf* %38, i32 %39, i32 %44, i32 %45, %struct.decryptor_desc* %8)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @req, align 4
  %48 = call i32 @skcipher_request_zero(i32 %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @crypto_sync_skcipher_blocksize(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @xdr_process_buf(%struct.xdr_buf*, i32, i32, i32, %struct.decryptor_desc*) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
