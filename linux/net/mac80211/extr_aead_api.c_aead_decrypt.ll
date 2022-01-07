; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_aead_api.c_aead_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_aead_api.c_aead_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.scatterlist = type { i32 }
%struct.aead_request = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aead_decrypt(%struct.crypto_aead* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6) #0 {
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
  %21 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %23 = call i64 @crypto_aead_authsize(%struct.crypto_aead* %22)
  store i64 %23, i64* %16, align 8
  %24 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %25 = call i32 @crypto_aead_reqsize(%struct.crypto_aead* %24)
  %26 = sext i32 %25 to i64
  %27 = add i64 4, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %19, align 4
  %29 = load i64, i64* %14, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %92

34:                                               ; preds = %7
  %35 = load i32, i32* %19, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.aead_request* @kzalloc(i32 %39, i32 %40)
  store %struct.aead_request* %41, %struct.aead_request** %18, align 8
  %42 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %43 = icmp ne %struct.aead_request* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %92

47:                                               ; preds = %34
  %48 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %49 = bitcast %struct.aead_request* %48 to i32*
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %20, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @memcpy(i32* %53, i32* %54, i64 %55)
  %57 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %58 = call i32 @sg_init_table(%struct.scatterlist* %57, i32 3)
  %59 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %60 = load i32*, i32** %20, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @sg_set_buf(%struct.scatterlist* %59, i32* %60, i64 %61)
  %63 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 1
  %64 = load i32*, i32** %13, align 8
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @sg_set_buf(%struct.scatterlist* %63, i32* %64, i64 %65)
  %67 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 2
  %68 = load i32*, i32** %15, align 8
  %69 = load i64, i64* %16, align 8
  %70 = call i32 @sg_set_buf(%struct.scatterlist* %67, i32* %68, i64 %69)
  %71 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %72 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %73 = call i32 @aead_request_set_tfm(%struct.aead_request* %71, %struct.crypto_aead* %72)
  %74 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %75 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %76 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %16, align 8
  %79 = add i64 %77, %78
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @aead_request_set_crypt(%struct.aead_request* %74, %struct.scatterlist* %75, %struct.scatterlist* %76, i64 %79, i32* %80)
  %82 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %83 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %17, i64 0, i64 0
  %84 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @aead_request_set_ad(%struct.aead_request* %82, i32 %85)
  %87 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %88 = call i32 @crypto_aead_decrypt(%struct.aead_request* %87)
  store i32 %88, i32* %21, align 4
  %89 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  %90 = call i32 @kzfree(%struct.aead_request* %89)
  %91 = load i32, i32* %21, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %47, %44, %31
  %93 = load i32, i32* %8, align 4
  ret i32 %93
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

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

declare dso_local i32 @kzfree(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
