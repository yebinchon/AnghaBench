; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_identical.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_identical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32* }

@WLAN_KEY_LEN_TKIP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.ieee80211_key*, %struct.ieee80211_key*)* @ieee80211_key_identical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_key_identical(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_key* %1, %struct.ieee80211_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %6, align 8
  store %struct.ieee80211_key* %2, %struct.ieee80211_key** %7, align 8
  %14 = load i32, i32* @WLAN_KEY_LEN_TKIP, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @WLAN_KEY_LEN_TKIP, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %22 = icmp ne %struct.ieee80211_key* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %97

34:                                               ; preds = %23
  %35 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %11, align 8
  %39 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %12, align 8
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %34
  %50 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %49
  %57 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @WLAN_KEY_LEN_TKIP, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %56
  %64 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %65 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %63
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @WLAN_KEY_LEN_TKIP, align 4
  %74 = call i32 @memcpy(i32* %17, i32* %72, i32 %73)
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* @WLAN_KEY_LEN_TKIP, align 4
  %77 = call i32 @memcpy(i32* %20, i32* %75, i32 %76)
  %78 = load i32, i32* @NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %17, i64 %79
  %81 = call i32 @memset(i32* %80, i32 0, i32 8)
  %82 = load i32, i32* @NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %20, i64 %83
  %85 = call i32 @memset(i32* %84, i32 0, i32 8)
  store i32* %17, i32** %11, align 8
  store i32* %20, i32** %12, align 8
  br label %86

86:                                               ; preds = %71, %63, %56, %49, %34
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %90 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @crypto_memneq(i32* %87, i32* %88, i32 %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %97

97:                                               ; preds = %86, %33
  %98 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @crypto_memneq(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
