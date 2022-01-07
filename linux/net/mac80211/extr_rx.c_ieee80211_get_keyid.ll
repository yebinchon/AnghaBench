; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_get_keyid.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_get_keyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_cipher_scheme = type { i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_WEP_IV_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NUM_DEFAULT_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ieee80211_cipher_scheme*)* @ieee80211_get_keyid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_get_keyid(%struct.sk_buff* %0, %struct.ieee80211_cipher_scheme* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_cipher_scheme*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee80211_cipher_scheme* %1, %struct.ieee80211_cipher_scheme** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %6, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ieee80211_hdrlen(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %5, align 8
  %23 = icmp ne %struct.ieee80211_cipher_scheme* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  br label %44

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IEEE80211_WEP_IV_LEN, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 3
  store i32 %43, i32* %10, align 4
  store i32 6, i32* %11, align 4
  br label %44

44:                                               ; preds = %38, %24
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %83

56:                                               ; preds = %44
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @skb_copy_bits(%struct.sk_buff* %57, i32 %58, i32* %12, i32 1)
  %60 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %5, align 8
  %61 = icmp ne %struct.ieee80211_cipher_scheme* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %62, %56
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = ashr i32 %70, %69
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @NUM_DEFAULT_KEYS, align 4
  %74 = icmp sge i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %68
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %78, %53
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
