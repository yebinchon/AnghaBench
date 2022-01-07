; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_aes_cmac.c_ieee80211_aes_cmac_256.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_aes_cmac.c_ieee80211_aes_cmac_256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@desc = common dso_local global %struct.TYPE_6__* null, align 8
@AAD_LEN = common dso_local global i64 0, align 8
@CMAC_TLEN_256 = common dso_local global i64 0, align 8
@zero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_aes_cmac_256(%struct.crypto_shash* %0, i32* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.crypto_shash*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.crypto_shash* %0, %struct.crypto_shash** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %13 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__* %11, %struct.crypto_shash* %12)
  %14 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.crypto_shash* %14, %struct.crypto_shash** %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %18 = call i32 @crypto_shash_init(%struct.TYPE_6__* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* @AAD_LEN, align 8
  %22 = call i32 @crypto_shash_update(%struct.TYPE_6__* %19, i32* %20, i64 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @CMAC_TLEN_256, align 8
  %27 = sub i64 %25, %26
  %28 = call i32 @crypto_shash_update(%struct.TYPE_6__* %23, i32* %24, i64 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @desc, align 8
  %30 = load i32, i32* @zero, align 4
  %31 = load i64, i64* @CMAC_TLEN_256, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @crypto_shash_finup(%struct.TYPE_6__* %29, i32 %30, i64 %31, i32* %32)
  ret void
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__*, %struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_6__*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i32 @crypto_shash_finup(%struct.TYPE_6__*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
