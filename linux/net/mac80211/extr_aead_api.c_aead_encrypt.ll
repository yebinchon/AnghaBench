; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_aead_api.c_aead_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_aead_api.c_aead_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.scatterlist = type { i32 }
%struct.aead_request = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aead_encrypt(%struct.crypto_aead* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [3 x %struct.scatterlist], align 4
  %18 = alloca %struct.aead_request*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %22 = call i64 @crypto_aead_authsize(%struct.crypto_aead* %21)
  store i64 %22, i64* %16, align 8
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %24 = call i32 @crypto_aead_reqsize(%struct.crypto_aead* %23)
  %25 = sext i32 %24 to i64
  %26 = add i64 4, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.aead_request* @kzalloc(i32 %32, i32 %33)
  store %struct.aead_request* %34, %struct.aead_request** %18, align 8
  %35 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %36 = icmp ne %struct.aead_request* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %7
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %82

40:                                               ; preds = %7
  %41 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %42 = bitcast %struct.aead_request* %41 to i32*
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32* %45, i32** %20, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @memcpy(i32* %46, i32* %47, i64 %48)
  %50 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %51 = call i32 @sg_init_table(%struct.scatterlist* %50, i32 3)
  %52 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %53 = load i32*, i32** %20, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @sg_set_buf(%struct.scatterlist* %52, i32* %53, i64 %54)
  %56 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 1
  %57 = load i32*, i32** %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @sg_set_buf(%struct.scatterlist* %56, i32* %57, i64 %58)
  %60 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 2
  %61 = load i32*, i32** %15, align 8
  %62 = load i64, i64* %16, align 8
  %63 = call i32 @sg_set_buf(%struct.scatterlist* %60, i32* %61, i64 %62)
  %64 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %65 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %66 = call i32 @aead_request_set_tfm(%struct.aead_request* %64, %struct.crypto_aead* %65)
  %67 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %68 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %69 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %70 = load i64, i64* %14, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @aead_request_set_crypt(%struct.aead_request* %67, %struct.scatterlist* %68, %struct.scatterlist* %69, i64 %70, i32* %71)
  %73 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %74 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %75 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @aead_request_set_ad(%struct.aead_request* %73, i32 %76)
  %78 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %79 = call i32 @crypto_aead_encrypt(%struct.aead_request* %78)
  %80 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %81 = call i32 @kzfree(%struct.aead_request* %80)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %40, %37
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i64 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_reqsize(%struct.crypto_aead*) #1

declare dso_local %struct.aead_request* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i64) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, %struct.crypto_aead*) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i64, i32*) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

declare dso_local i32 @kzfree(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
