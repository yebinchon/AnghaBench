; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_krb5_cts_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_gss_krb5_cts_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_sync_skcipher = type { i32 }
%struct.xdr_buf = type { i32, %struct.page** }
%struct.page = type { i32 }
%struct.scatterlist = type { i32 }

@req = common dso_local global i32 0, align 4
@GSS_KRB5_MAX_BLOCKSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_sync_skcipher*, %struct.xdr_buf*, i32, i32*, %struct.page**, i32)* @gss_krb5_cts_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_krb5_cts_crypt(%struct.crypto_sync_skcipher* %0, %struct.xdr_buf* %1, i32 %2, i32* %3, %struct.page** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_sync_skcipher*, align 8
  %9 = alloca %struct.xdr_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.page**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1 x %struct.scatterlist], align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.page**, align 8
  %18 = alloca i32, align 4
  store %struct.crypto_sync_skcipher* %0, %struct.crypto_sync_skcipher** %8, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.page** %4, %struct.page*** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* @req, align 4
  %20 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %8, align 8
  %21 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %19, %struct.crypto_sync_skcipher* %20)
  %22 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %23 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* @GSS_KRB5_MAX_BLOCKSIZE, align 4
  %29 = mul nsw i32 %28, 2
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = call i32 @WARN_ON(i32 0)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %107

35:                                               ; preds = %6
  %36 = load i32, i32* @GSS_KRB5_MAX_BLOCKSIZE, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* @GFP_NOFS, align 4
  %39 = call i32* @kmalloc(i32 %37, i32 %38)
  store i32* %39, i32** %16, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %107

45:                                               ; preds = %35
  %46 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %47 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %46, i32 0, i32 1
  %48 = load %struct.page**, %struct.page*** %47, align 8
  store %struct.page** %48, %struct.page*** %17, align 8
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.page**, %struct.page*** %12, align 8
  %53 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %54 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %53, i32 0, i32 1
  store %struct.page** %52, %struct.page*** %54, align 8
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @read_bytes_from_xdr_buf(%struct.xdr_buf* %56, i32 %57, i32* %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.page**, %struct.page*** %17, align 8
  %62 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %63 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %62, i32 0, i32 1
  store %struct.page** %61, %struct.page*** %63, align 8
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %103

67:                                               ; preds = %55
  %68 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %15, i64 0, i64 0
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @sg_init_one(%struct.scatterlist* %68, i32* %69, i32 %70)
  %72 = load i32, i32* @req, align 4
  %73 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %8, align 8
  %74 = call i32 @skcipher_request_set_sync_tfm(i32 %72, %struct.crypto_sync_skcipher* %73)
  %75 = load i32, i32* @req, align 4
  %76 = call i32 @skcipher_request_set_callback(i32 %75, i32 0, i32* null, i32* null)
  %77 = load i32, i32* @req, align 4
  %78 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %15, i64 0, i64 0
  %79 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %15, i64 0, i64 0
  %80 = load i32, i32* %18, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @skcipher_request_set_crypt(i32 %77, %struct.scatterlist* %78, %struct.scatterlist* %79, i32 %80, i32* %81)
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %67
  %86 = load i32, i32* @req, align 4
  %87 = call i32 @crypto_skcipher_encrypt(i32 %86)
  store i32 %87, i32* %14, align 4
  br label %91

88:                                               ; preds = %67
  %89 = load i32, i32* @req, align 4
  %90 = call i32 @crypto_skcipher_decrypt(i32 %89)
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @req, align 4
  %93 = call i32 @skcipher_request_zero(i32 %92)
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %103

97:                                               ; preds = %91
  %98 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %16, align 8
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @write_bytes_to_xdr_buf(%struct.xdr_buf* %98, i32 %99, i32* %100, i32 %101)
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %97, %96, %66
  %104 = load i32*, i32** %16, align 8
  %105 = call i32 @kfree(i32* %104)
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %103, %42, %31
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @read_bytes_from_xdr_buf(%struct.xdr_buf*, i32, i32*, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

declare dso_local i32 @write_bytes_to_xdr_buf(%struct.xdr_buf*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
