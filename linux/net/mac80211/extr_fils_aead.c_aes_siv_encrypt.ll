; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_fils_aead.c_aes_siv_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_fils_aead.c_aes_siv_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type opaque
%struct.crypto_skcipher = type { i32 }
%struct.skcipher_request = type { i32 }
%struct.scatterlist = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cmac(aes)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ctr(aes)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, i64, i32**, i64*, i32*)* @aes_siv_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_siv_encrypt(i32* %0, i64 %1, i32* %2, i64 %3, i64 %4, i32** %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.crypto_shash*, align 8
  %21 = alloca %struct.crypto_skcipher*, align 8
  %22 = alloca %struct.skcipher_request*, align 8
  %23 = alloca i32, align 4
  %24 = alloca [1 x %struct.scatterlist], align 4
  %25 = alloca [1 x %struct.scatterlist], align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32** %5, i32*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %28 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %18, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %19, align 8
  %32 = load i64, i64* %11, align 8
  %33 = udiv i64 %32, 2
  store i64 %33, i64* %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32**, i32*** %15, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  store i32* %34, i32** %37, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64*, i64** %16, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* %14, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %14, align 8
  %44 = call %struct.crypto_skcipher* @crypto_alloc_shash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %45 = bitcast %struct.crypto_skcipher* %44 to %struct.crypto_shash*
  store %struct.crypto_shash* %45, %struct.crypto_shash** %20, align 8
  %46 = load %struct.crypto_shash*, %struct.crypto_shash** %20, align 8
  %47 = bitcast %struct.crypto_shash* %46 to %struct.crypto_skcipher*
  %48 = call i64 @IS_ERR(%struct.crypto_skcipher* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %8
  %51 = load %struct.crypto_shash*, %struct.crypto_shash** %20, align 8
  %52 = bitcast %struct.crypto_shash* %51 to %struct.crypto_skcipher*
  %53 = call i32 @PTR_ERR(%struct.crypto_skcipher* %52)
  store i32 %53, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %153

54:                                               ; preds = %8
  %55 = load %struct.crypto_shash*, %struct.crypto_shash** %20, align 8
  %56 = bitcast %struct.crypto_shash* %55 to %struct.crypto_skcipher*
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @crypto_shash_setkey(%struct.crypto_skcipher* %56, i32* %57, i64 %58)
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %23, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %54
  %63 = load %struct.crypto_shash*, %struct.crypto_shash** %20, align 8
  %64 = bitcast %struct.crypto_shash* %63 to %struct.crypto_skcipher*
  %65 = load i64, i64* %14, align 8
  %66 = load i32**, i32*** %15, align 8
  %67 = load i64*, i64** %16, align 8
  %68 = call i32 @aes_s2v(%struct.crypto_skcipher* %64, i64 %65, i32** %66, i64* %67, i32* %31)
  store i32 %68, i32* %23, align 4
  br label %69

69:                                               ; preds = %62, %54
  %70 = load %struct.crypto_shash*, %struct.crypto_shash** %20, align 8
  %71 = bitcast %struct.crypto_shash* %70 to %struct.crypto_skcipher*
  %72 = call i32 @crypto_free_shash(%struct.crypto_skcipher* %71)
  %73 = load i32, i32* %23, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %23, align 4
  store i32 %76, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %153

77:                                               ; preds = %69
  %78 = load i32*, i32** %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32* @kmemdup(i32* %78, i64 %79, i32 %80)
  store i32* %81, i32** %26, align 8
  %82 = load i32*, i32** %26, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %153

87:                                               ; preds = %77
  %88 = load i32*, i32** %17, align 8
  %89 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %90 = call i32 @memcpy(i32* %88, i32* %31, i32 %89)
  %91 = getelementptr inbounds i32, i32* %31, i64 8
  %92 = load i32, i32* %91, align 16
  %93 = and i32 %92, 127
  store i32 %93, i32* %91, align 16
  %94 = getelementptr inbounds i32, i32* %31, i64 12
  %95 = load i32, i32* %94, align 16
  %96 = and i32 %95, 127
  store i32 %96, i32* %94, align 16
  %97 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %98 = call %struct.crypto_skcipher* @crypto_alloc_skcipher(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %97)
  store %struct.crypto_skcipher* %98, %struct.crypto_skcipher** %21, align 8
  %99 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %21, align 8
  %100 = call i64 @IS_ERR(%struct.crypto_skcipher* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %87
  %103 = load i32*, i32** %26, align 8
  %104 = call i32 @kfree(i32* %103)
  %105 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %21, align 8
  %106 = call i32 @PTR_ERR(%struct.crypto_skcipher* %105)
  store i32 %106, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %153

107:                                              ; preds = %87
  %108 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %21, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @crypto_skcipher_setkey(%struct.crypto_skcipher* %108, i32* %111, i64 %112)
  store i32 %113, i32* %23, align 4
  %114 = load i32, i32* %23, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %147

117:                                              ; preds = %107
  %118 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %21, align 8
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher* %118, i32 %119)
  store %struct.skcipher_request* %120, %struct.skcipher_request** %22, align 8
  %121 = load %struct.skcipher_request*, %struct.skcipher_request** %22, align 8
  %122 = icmp ne %struct.skcipher_request* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %23, align 4
  br label %147

126:                                              ; preds = %117
  %127 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %24, i64 0, i64 0
  %128 = load i32*, i32** %26, align 8
  %129 = load i64, i64* %13, align 8
  %130 = call i32 @sg_init_one(%struct.scatterlist* %127, i32* %128, i64 %129)
  %131 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %25, i64 0, i64 0
  %132 = load i32*, i32** %17, align 8
  %133 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i64, i64* %13, align 8
  %137 = call i32 @sg_init_one(%struct.scatterlist* %131, i32* %135, i64 %136)
  %138 = load %struct.skcipher_request*, %struct.skcipher_request** %22, align 8
  %139 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %24, i64 0, i64 0
  %140 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %25, i64 0, i64 0
  %141 = load i64, i64* %13, align 8
  %142 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %138, %struct.scatterlist* %139, %struct.scatterlist* %140, i64 %141, i32* %31)
  %143 = load %struct.skcipher_request*, %struct.skcipher_request** %22, align 8
  %144 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %143)
  store i32 %144, i32* %23, align 4
  %145 = load %struct.skcipher_request*, %struct.skcipher_request** %22, align 8
  %146 = call i32 @skcipher_request_free(%struct.skcipher_request* %145)
  br label %147

147:                                              ; preds = %126, %123, %116
  %148 = load i32*, i32** %26, align 8
  %149 = call i32 @kfree(i32* %148)
  %150 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %21, align 8
  %151 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %150)
  %152 = load i32, i32* %23, align 4
  store i32 %152, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %153

153:                                              ; preds = %147, %102, %84, %75, %50
  %154 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %9, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.crypto_skcipher* @crypto_alloc_shash(i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #2

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #2

declare dso_local i32 @crypto_shash_setkey(%struct.crypto_skcipher*, i32*, i64) #2

declare dso_local i32 @aes_s2v(%struct.crypto_skcipher*, i64, i32**, i64*, i32*) #2

declare dso_local i32 @crypto_free_shash(%struct.crypto_skcipher*) #2

declare dso_local i32* @kmemdup(i32*, i64, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local %struct.crypto_skcipher* @crypto_alloc_skcipher(i8*, i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @crypto_skcipher_setkey(%struct.crypto_skcipher*, i32*, i64) #2

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher*, i32) #2

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i64) #2

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i64, i32*) #2

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #2

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #2

declare dso_local i32 @crypto_free_skcipher(%struct.crypto_skcipher*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
