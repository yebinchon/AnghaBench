; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wep.c_ieee80211_wep_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wep.c_ieee80211_wep_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i32, i32* }

@WLAN_KEY_LEN_WEP104 = common dso_local global i32 0, align 4
@IEEE80211_WEP_ICV_LEN = common dso_local global i64 0, align 8
@IEEE80211_WEP_IV_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wep_encrypt(%struct.ieee80211_local* %0, %struct.sk_buff* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @WLAN_KEY_LEN_WEP104, align 4
  %18 = add nsw i32 3, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i64 @skb_tailroom(%struct.sk_buff* %22)
  %24 = load i64, i64* @IEEE80211_WEP_ICV_LEN, align 8
  %25 = icmp slt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %75

30:                                               ; preds = %5
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32* @ieee80211_wep_add_iv(%struct.ieee80211_local* %31, %struct.sk_buff* %32, i32 %33, i32 %34)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %75

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* @IEEE80211_WEP_IV_LEN, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = ptrtoint i32* %47 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = sub nsw i64 %43, %54
  store i64 %55, i64* %13, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @memcpy(i32* %21, i32* %56, i32 3)
  %58 = getelementptr inbounds i32, i32* %21, i64 3
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @memcpy(i32* %58, i32* %59, i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load i64, i64* @IEEE80211_WEP_ICV_LEN, align 8
  %64 = call i32 @skb_put(%struct.sk_buff* %62, i64 %63)
  %65 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %65, i32 0, i32 0
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 3
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* @IEEE80211_WEP_IV_LEN, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @ieee80211_wep_encrypt_data(i32* %66, i32* %21, i32 %68, i32* %72, i64 %73)
  store i32 %74, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %75

75:                                               ; preds = %39, %38, %29
  %76 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #2

declare dso_local i32* @ieee80211_wep_add_iv(%struct.ieee80211_local*, %struct.sk_buff*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #2

declare dso_local i32 @ieee80211_wep_encrypt_data(i32*, i32*, i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
