; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_derived_key_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_derived_key_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encrypted_key_payload = type { i32, i32, i32*, i32* }
%struct.scatterlist = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.skcipher_request = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@blksize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.encrypted_key_payload*, i32*, i32)* @derived_key_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derived_key_decrypt(%struct.encrypted_key_payload* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.encrypted_key_payload*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.scatterlist], align 4
  %9 = alloca [2 x %struct.scatterlist], align 4
  %10 = alloca %struct.crypto_skcipher*, align 8
  %11 = alloca %struct.skcipher_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.encrypted_key_payload* %0, %struct.encrypted_key_payload** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kmalloc(i32 %22, i32 %23)
  store i32* %24, i32** %15, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %100

30:                                               ; preds = %3
  %31 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %32 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @blksize, align 4
  %35 = call i32 @roundup(i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.skcipher_request* @init_skcipher_req(i32* %36, i32 %37)
  store %struct.skcipher_request* %38, %struct.skcipher_request** %11, align 8
  %39 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %40 = call i32 @PTR_ERR(%struct.skcipher_request* %39)
  store i32 %40, i32* %16, align 4
  %41 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %42 = call i64 @IS_ERR(%struct.skcipher_request* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %96

45:                                               ; preds = %30
  %46 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @dump_encrypted_data(%struct.encrypted_key_payload* %46, i32 %47)
  %49 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %8, i64 0, i64 0
  %50 = call i32 @sg_init_table(%struct.scatterlist* %49, i32 1)
  %51 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %9, i64 0, i64 0
  %52 = call i32 @sg_init_table(%struct.scatterlist* %51, i32 2)
  %53 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %8, i64 0, i64 0
  %54 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %55 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @sg_set_buf(%struct.scatterlist* %53, i32* %56, i32 %57)
  %59 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %9, i64 0, i64 0
  %60 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %61 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %64 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sg_set_buf(%struct.scatterlist* %59, i32* %62, i32 %65)
  %67 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %9, i64 0, i64 1
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %70 = call i32 @sg_set_buf(%struct.scatterlist* %67, i32* %68, i32 %69)
  %71 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %72 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nuw i64 4, %19
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memcpy(i32* %21, i32 %73, i32 %75)
  %77 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %78 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %8, i64 0, i64 0
  %79 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %9, i64 0, i64 0
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %77, %struct.scatterlist* %78, %struct.scatterlist* %79, i32 %80, i32* %21)
  %82 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %83 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %82)
  store i32 %83, i32* %16, align 4
  %84 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %85 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %84)
  store %struct.crypto_skcipher* %85, %struct.crypto_skcipher** %10, align 8
  %86 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %87 = call i32 @skcipher_request_free(%struct.skcipher_request* %86)
  %88 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %10, align 8
  %89 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %88)
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %45
  br label %96

93:                                               ; preds = %45
  %94 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %95 = call i32 @dump_decrypted_data(%struct.encrypted_key_payload* %94)
  br label %96

96:                                               ; preds = %93, %92, %44
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @kfree(i32* %97)
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %100

100:                                              ; preds = %96, %27
  %101 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @roundup(i32, i32) #2

declare dso_local %struct.skcipher_request* @init_skcipher_req(i32*, i32) #2

declare dso_local i32 @PTR_ERR(%struct.skcipher_request*) #2

declare dso_local i64 @IS_ERR(%struct.skcipher_request*) #2

declare dso_local i32 @dump_encrypted_data(%struct.encrypted_key_payload*, i32) #2

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #2

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #2

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #2

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #2

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #2

declare dso_local i32 @crypto_free_skcipher(%struct.crypto_skcipher*) #2

declare dso_local i32 @dump_decrypted_data(%struct.encrypted_key_payload*) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
