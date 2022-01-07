; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wep.c_ieee80211_wep_add_iv.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wep.c_ieee80211_wep_add_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_FCTL_PROTECTED = common dso_local global i32 0, align 4
@IEEE80211_WEP_IV_LEN = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ieee80211_local*, %struct.sk_buff*, i32, i32)* @ieee80211_wep_add_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ieee80211_wep_add_iv(%struct.ieee80211_local* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %17, %struct.ieee80211_hdr** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %18)
  store %struct.ieee80211_tx_info* %19, %struct.ieee80211_tx_info** %11, align 8
  %20 = load i32, i32* @IEEE80211_FCTL_PROTECTED, align 4
  %21 = call i32 @cpu_to_le16(i32 %20)
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i64 @skb_headroom(%struct.sk_buff* %26)
  %28 = load i64, i64* @IEEE80211_WEP_IV_LEN, align 8
  %29 = icmp slt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %81

34:                                               ; preds = %4
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ieee80211_hdrlen(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load i64, i64* @IEEE80211_WEP_IV_LEN, align 8
  %41 = call i32* @skb_push(%struct.sk_buff* %39, i64 %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i64, i64* @IEEE80211_WEP_IV_LEN, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @memmove(i32* %42, i32* %45, i32 %46)
  %48 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %34
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %5, align 8
  br label %81

68:                                               ; preds = %53, %34
  %69 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @ieee80211_wep_get_iv(%struct.ieee80211_local* %69, i32 %70, i32 %71, i32* %75)
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32* %80, i32** %5, align 8
  br label %81

81:                                               ; preds = %68, %63, %33
  %82 = load i32*, i32** %5, align 8
  ret i32* %82
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @ieee80211_wep_get_iv(%struct.ieee80211_local*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
