; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_aead_api.c_aead_key_setup_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_aead_api.c_aead_key_setup_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }

@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_aead* @aead_key_setup_encrypt(i8* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_aead*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %14 = call %struct.crypto_aead* @crypto_alloc_aead(i8* %12, i32 0, i32 %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %10, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %16 = call i64 @IS_ERR(%struct.crypto_aead* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  store %struct.crypto_aead* %19, %struct.crypto_aead** %5, align 8
  br label %42

20:                                               ; preds = %4
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %21, i32* %22, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @crypto_aead_setauthsize(%struct.crypto_aead* %29, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %37

35:                                               ; preds = %28
  %36 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  store %struct.crypto_aead* %36, %struct.crypto_aead** %5, align 8
  br label %42

37:                                               ; preds = %34, %27
  %38 = load %struct.crypto_aead*, %struct.crypto_aead** %10, align 8
  %39 = call i32 @crypto_free_aead(%struct.crypto_aead* %38)
  %40 = load i32, i32* %11, align 4
  %41 = call %struct.crypto_aead* @ERR_PTR(i32 %40)
  store %struct.crypto_aead* %41, %struct.crypto_aead** %5, align 8
  br label %42

42:                                               ; preds = %37, %35, %18
  %43 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  ret %struct.crypto_aead* %43
}

declare dso_local %struct.crypto_aead* @crypto_alloc_aead(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i32*, i64) #1

declare dso_local i32 @crypto_aead_setauthsize(%struct.crypto_aead*, i64) #1

declare dso_local i32 @crypto_free_aead(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_aead* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
