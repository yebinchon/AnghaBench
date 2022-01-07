; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_aes_gmac.c_ieee80211_aes_gmac_key_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_aes_gmac.c_ieee80211_aes_gmac_key_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"gcm(aes)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@GMAC_MIC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_aead* @ieee80211_aes_gmac_key_setup(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %9 = call %struct.crypto_aead* @crypto_alloc_aead(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %8)
  store %struct.crypto_aead* %9, %struct.crypto_aead** %6, align 8
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %11 = call i64 @IS_ERR(%struct.crypto_aead* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  store %struct.crypto_aead* %14, %struct.crypto_aead** %3, align 8
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %16, i32* %17, i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %24 = load i32, i32* @GMAC_MIC_LEN, align 4
  %25 = call i32 @crypto_aead_setauthsize(%struct.crypto_aead* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %15
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  store %struct.crypto_aead* %30, %struct.crypto_aead** %3, align 8
  br label %36

31:                                               ; preds = %26
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %33 = call i32 @crypto_free_aead(%struct.crypto_aead* %32)
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.crypto_aead* @ERR_PTR(i32 %34)
  store %struct.crypto_aead* %35, %struct.crypto_aead** %3, align 8
  br label %36

36:                                               ; preds = %31, %29, %13
  %37 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  ret %struct.crypto_aead* %37
}

declare dso_local %struct.crypto_aead* @crypto_alloc_aead(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i32*, i64) #1

declare dso_local i32 @crypto_aead_setauthsize(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_free_aead(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_aead* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
