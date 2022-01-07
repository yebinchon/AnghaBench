; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_fils_aead.c_aes_siv_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_fils_aead.c_aes_siv_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type opaque
%struct.crypto_skcipher = type { i32 }
%struct.skcipher_request = type { i32 }
%struct.scatterlist = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ctr(aes)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"cmac(aes)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, i64, i32**, i64*, i32*)* @aes_siv_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_siv_decrypt(i32* %0, i64 %1, i32* %2, i64 %3, i64 %4, i32** %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.crypto_shash*, align 8
  %19 = alloca %struct.crypto_skcipher*, align 8
  %20 = alloca %struct.skcipher_request*, align 8
  %21 = alloca [1 x %struct.scatterlist], align 4
  %22 = alloca [1 x %struct.scatterlist], align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32** %5, i32*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %30 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %25, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %26, align 8
  %34 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %27, align 8
  %37 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %28, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %40, %42
  store i64 %43, i64* %23, align 8
  %44 = load i64, i64* %11, align 8
  %45 = udiv i64 %44, 2
  store i64 %45, i64* %11, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = load i32**, i32*** %15, align 8
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  store i32* %46, i32** %49, align 8
  %50 = load i64, i64* %23, align 8
  %51 = load i64*, i64** %16, align 8
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %14, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %58 = call i32 @memcpy(i32* %36, i32* %56, i32 %57)
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %61 = call i32 @memcpy(i32* %33, i32* %59, i32 %60)
  %62 = getelementptr inbounds i32, i32* %36, i64 8
  %63 = load i32, i32* %62, align 16
  %64 = and i32 %63, 127
  store i32 %64, i32* %62, align 16
  %65 = getelementptr inbounds i32, i32* %36, i64 12
  %66 = load i32, i32* %65, align 16
  %67 = and i32 %66, 127
  store i32 %67, i32* %65, align 16
  %68 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %69 = call %struct.crypto_skcipher* @crypto_alloc_skcipher(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %68)
  store %struct.crypto_skcipher* %69, %struct.crypto_skcipher** %19, align 8
  %70 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %19, align 8
  %71 = call i64 @IS_ERR(%struct.crypto_skcipher* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %8
  %74 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %19, align 8
  %75 = call i32 @PTR_ERR(%struct.crypto_skcipher* %74)
  store i32 %75, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %169

76:                                               ; preds = %8
  %77 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %19, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @crypto_skcipher_setkey(%struct.crypto_skcipher* %77, i32* %80, i64 %81)
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %24, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %19, align 8
  %87 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %86)
  %88 = load i32, i32* %24, align 4
  store i32 %88, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %169

89:                                               ; preds = %76
  %90 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %19, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher* %90, i32 %91)
  store %struct.skcipher_request* %92, %struct.skcipher_request** %20, align 8
  %93 = load %struct.skcipher_request*, %struct.skcipher_request** %20, align 8
  %94 = icmp ne %struct.skcipher_request* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %19, align 8
  %97 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %169

100:                                              ; preds = %89
  %101 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %21, i64 0, i64 0
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i64, i64* %23, align 8
  %107 = call i32 @sg_init_one(%struct.scatterlist* %101, i32* %105, i64 %106)
  %108 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %22, i64 0, i64 0
  %109 = load i32*, i32** %17, align 8
  %110 = load i64, i64* %23, align 8
  %111 = call i32 @sg_init_one(%struct.scatterlist* %108, i32* %109, i64 %110)
  %112 = load %struct.skcipher_request*, %struct.skcipher_request** %20, align 8
  %113 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %21, i64 0, i64 0
  %114 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %22, i64 0, i64 0
  %115 = load i64, i64* %23, align 8
  %116 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %112, %struct.scatterlist* %113, %struct.scatterlist* %114, i64 %115, i32* %36)
  %117 = load %struct.skcipher_request*, %struct.skcipher_request** %20, align 8
  %118 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %117)
  store i32 %118, i32* %24, align 4
  %119 = load %struct.skcipher_request*, %struct.skcipher_request** %20, align 8
  %120 = call i32 @skcipher_request_free(%struct.skcipher_request* %119)
  %121 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %19, align 8
  %122 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %121)
  %123 = load i32, i32* %24, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %100
  %126 = load i32, i32* %24, align 4
  store i32 %126, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %169

127:                                              ; preds = %100
  %128 = call %struct.crypto_skcipher* @crypto_alloc_shash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %129 = bitcast %struct.crypto_skcipher* %128 to %struct.crypto_shash*
  store %struct.crypto_shash* %129, %struct.crypto_shash** %18, align 8
  %130 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  %131 = bitcast %struct.crypto_shash* %130 to %struct.crypto_skcipher*
  %132 = call i64 @IS_ERR(%struct.crypto_skcipher* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  %136 = bitcast %struct.crypto_shash* %135 to %struct.crypto_skcipher*
  %137 = call i32 @PTR_ERR(%struct.crypto_skcipher* %136)
  store i32 %137, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %169

138:                                              ; preds = %127
  %139 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  %140 = bitcast %struct.crypto_shash* %139 to %struct.crypto_skcipher*
  %141 = load i32*, i32** %10, align 8
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @crypto_shash_setkey(%struct.crypto_skcipher* %140, i32* %141, i64 %142)
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %24, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %138
  %147 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  %148 = bitcast %struct.crypto_shash* %147 to %struct.crypto_skcipher*
  %149 = load i64, i64* %14, align 8
  %150 = load i32**, i32*** %15, align 8
  %151 = load i64*, i64** %16, align 8
  %152 = call i32 @aes_s2v(%struct.crypto_skcipher* %148, i64 %149, i32** %150, i64* %151, i32* %39)
  store i32 %152, i32* %24, align 4
  br label %153

153:                                              ; preds = %146, %138
  %154 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  %155 = bitcast %struct.crypto_shash* %154 to %struct.crypto_skcipher*
  %156 = call i32 @crypto_free_shash(%struct.crypto_skcipher* %155)
  %157 = load i32, i32* %24, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* %24, align 4
  store i32 %160, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %169

161:                                              ; preds = %153
  %162 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %163 = call i64 @memcmp(i32* %39, i32* %33, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %169

168:                                              ; preds = %161
  store i32 0, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %169

169:                                              ; preds = %168, %165, %159, %134, %125, %95, %85, %73
  %170 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %9, align 4
  ret i32 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local %struct.crypto_skcipher* @crypto_alloc_skcipher(i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #2

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #2

declare dso_local i32 @crypto_skcipher_setkey(%struct.crypto_skcipher*, i32*, i64) #2

declare dso_local i32 @crypto_free_skcipher(%struct.crypto_skcipher*) #2

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher*, i32) #2

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i64) #2

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i64, i32*) #2

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #2

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #2

declare dso_local %struct.crypto_skcipher* @crypto_alloc_shash(i8*, i32, i32) #2

declare dso_local i32 @crypto_shash_setkey(%struct.crypto_skcipher*, i32*, i64) #2

declare dso_local i32 @aes_s2v(%struct.crypto_skcipher*, i64, i32**, i64*, i32*) #2

declare dso_local i32 @crypto_free_shash(%struct.crypto_skcipher*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
