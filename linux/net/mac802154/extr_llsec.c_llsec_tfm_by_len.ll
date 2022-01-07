; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_tfm_by_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_tfm_by_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.mac802154_llsec_key = type { %struct.crypto_aead** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_aead* (%struct.mac802154_llsec_key*, i32)* @llsec_tfm_by_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_aead* @llsec_tfm_by_len(%struct.mac802154_llsec_key* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.mac802154_llsec_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mac802154_llsec_key* %0, %struct.mac802154_llsec_key** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %4, align 8
  %10 = getelementptr inbounds %struct.mac802154_llsec_key, %struct.mac802154_llsec_key* %9, i32 0, i32 0
  %11 = load %struct.crypto_aead**, %struct.crypto_aead*** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.crypto_aead** %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %7
  %15 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %4, align 8
  %16 = getelementptr inbounds %struct.mac802154_llsec_key, %struct.mac802154_llsec_key* %15, i32 0, i32 0
  %17 = load %struct.crypto_aead**, %struct.crypto_aead*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.crypto_aead*, %struct.crypto_aead** %17, i64 %19
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %20, align 8
  %22 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  %26 = load %struct.mac802154_llsec_key*, %struct.mac802154_llsec_key** %4, align 8
  %27 = getelementptr inbounds %struct.mac802154_llsec_key, %struct.mac802154_llsec_key* %26, i32 0, i32 0
  %28 = load %struct.crypto_aead**, %struct.crypto_aead*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.crypto_aead*, %struct.crypto_aead** %28, i64 %30
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %31, align 8
  store %struct.crypto_aead* %32, %struct.crypto_aead** %3, align 8
  br label %39

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7

37:                                               ; preds = %7
  %38 = call i32 (...) @BUG()
  br label %39

39:                                               ; preds = %37, %25
  %40 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  ret %struct.crypto_aead* %40
}

declare dso_local i32 @ARRAY_SIZE(%struct.crypto_aead**) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
