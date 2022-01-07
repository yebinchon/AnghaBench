; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_cs_headroom.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_cs_headroom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.cfg80211_crypto_settings = type { i32, i32, i32* }
%struct.ieee80211_cipher_scheme = type { i32 }

@IEEE80211_ENCRYPT_HEADROOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_cs_headroom(%struct.ieee80211_local* %0, %struct.cfg80211_crypto_settings* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.cfg80211_crypto_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_cipher_scheme*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.cfg80211_crypto_settings* %1, %struct.cfg80211_crypto_settings** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @IEEE80211_ENCRYPT_HEADROOM, align 4
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %41, %3
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %5, align 8
  %14 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %19 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %5, align 8
  %20 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.ieee80211_cipher_scheme* @ieee80211_cs_get(%struct.ieee80211_local* %18, i32 %25, i32 %26)
  store %struct.ieee80211_cipher_scheme* %27, %struct.ieee80211_cipher_scheme** %7, align 8
  %28 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %7, align 8
  %29 = icmp ne %struct.ieee80211_cipher_scheme* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %30, %17
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %11

44:                                               ; preds = %11
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %46 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %5, align 8
  %47 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call %struct.ieee80211_cipher_scheme* @ieee80211_cs_get(%struct.ieee80211_local* %45, i32 %48, i32 %49)
  store %struct.ieee80211_cipher_scheme* %50, %struct.ieee80211_cipher_scheme** %7, align 8
  %51 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %7, align 8
  %52 = icmp ne %struct.ieee80211_cipher_scheme* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %59, %53, %44
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local %struct.ieee80211_cipher_scheme* @ieee80211_cs_get(%struct.ieee80211_local*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
