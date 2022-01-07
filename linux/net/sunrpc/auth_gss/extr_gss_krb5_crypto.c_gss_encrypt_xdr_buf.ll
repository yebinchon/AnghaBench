; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_encrypt_xdr_buf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_encrypt_xdr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_sync_skcipher = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.page = type { i32 }
%struct.encryptor_desc = type { i32, i32, i32, i64, i64, %struct.page**, %struct.xdr_buf*, i32, i32 }

@req = common dso_local global i32 0, align 4
@encryptor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_encrypt_xdr_buf(%struct.crypto_sync_skcipher* %0, %struct.xdr_buf* %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca %struct.crypto_sync_skcipher*, align 8
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.encryptor_desc, align 8
  store %struct.crypto_sync_skcipher* %0, %struct.crypto_sync_skcipher** %5, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.page** %3, %struct.page*** %8, align 8
  %11 = load i32, i32* @req, align 4
  %12 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %5, align 8
  %13 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %11, %struct.crypto_sync_skcipher* %12)
  %14 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %15 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %5, align 8
  %20 = call i32 @crypto_sync_skcipher_blocksize(%struct.crypto_sync_skcipher* %19)
  %21 = srem i32 %18, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* @req, align 4
  %26 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %5, align 8
  %27 = call i32 @skcipher_request_set_sync_tfm(i32 %25, %struct.crypto_sync_skcipher* %26)
  %28 = load i32, i32* @req, align 4
  %29 = call i32 @skcipher_request_set_callback(i32 %28, i32 0, i32* null, i32* null)
  %30 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memset(i32 %31, i32 0, i32 4)
  %33 = load i32, i32* @req, align 4
  %34 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 7
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %38 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 6
  store %struct.xdr_buf* %37, %struct.xdr_buf** %38, align 8
  %39 = load %struct.page**, %struct.page*** %8, align 8
  %40 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 5
  store %struct.page** %39, %struct.page*** %40, align 8
  %41 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sg_init_table(i32 %44, i32 4)
  %46 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %10, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sg_init_table(i32 %47, i32 4)
  %49 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %52 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* @encryptor, align 4
  %57 = call i32 @xdr_process_buf(%struct.xdr_buf* %49, i32 %50, i32 %55, i32 %56, %struct.encryptor_desc* %10)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @req, align 4
  %59 = call i32 @skcipher_request_zero(i32 %58)
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @crypto_sync_skcipher_blocksize(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @xdr_process_buf(%struct.xdr_buf*, i32, i32, i32, %struct.encryptor_desc*) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
