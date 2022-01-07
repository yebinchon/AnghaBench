; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_fils_aead.c_fils_encrypt_assoc_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_fils_aead.c_fils_encrypt_assoc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.ieee80211_mgd_assoc_data = type { i32*, i32, i32 }
%struct.ieee80211_mgmt = type { i32*, i32*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@WLAN_EID_EXT_FILS_SESSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@FILS_NONCE_LEN = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fils_encrypt_assoc_req(%struct.sk_buff* %0, %struct.ieee80211_mgd_assoc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_mgd_assoc_data*, align 8
  %6 = alloca %struct.ieee80211_mgmt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [6 x i32*], align 16
  %11 = alloca i32*, align 8
  %12 = alloca [6 x i64], align 16
  %13 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee80211_mgd_assoc_data* %1, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %19, %struct.ieee80211_mgmt** %6, align 8
  %20 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ieee80211_is_reassoc_req(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32* %29, i32** %7, align 8
  %30 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32* %39, i32** %7, align 8
  %40 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %8, align 8
  br label %45

45:                                               ; preds = %35, %25
  %46 = load i32, i32* @WLAN_EID_EXT_FILS_SESSION, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = sext i32 %50 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32*, i32** %8, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32* @cfg80211_find_ext_ie(i32 %46, i32* %47, i32 %61)
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %45
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 9
  br i1 %69, label %70, label %73

70:                                               ; preds = %65, %45
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %141

73:                                               ; preds = %65
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = getelementptr inbounds i32, i32* %76, i64 8
  store i32* %77, i32** %9, align 8
  %78 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %79 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds [6 x i32*], [6 x i32*]* %10, i64 0, i64 0
  store i32* %80, i32** %81, align 16
  %82 = load i64, i64* @ETH_ALEN, align 8
  %83 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0
  store i64 %82, i64* %83, align 16
  %84 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds [6 x i32*], [6 x i32*]* %10, i64 0, i64 1
  store i32* %86, i32** %87, align 8
  %88 = load i64, i64* @ETH_ALEN, align 8
  %89 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 1
  store i64 %88, i64* %89, align 8
  %90 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %91 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds [6 x i32*], [6 x i32*]* %10, i64 0, i64 2
  store i32* %92, i32** %93, align 16
  %94 = load i64, i64* @FILS_NONCE_LEN, align 8
  %95 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 2
  store i64 %94, i64* %95, align 16
  %96 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %97 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @FILS_NONCE_LEN, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = getelementptr inbounds [6 x i32*], [6 x i32*]* %10, i64 0, i64 3
  store i32* %100, i32** %101, align 8
  %102 = load i64, i64* @FILS_NONCE_LEN, align 8
  %103 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 3
  store i64 %102, i64* %103, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds [6 x i32*], [6 x i32*]* %10, i64 0, i64 4
  store i32* %104, i32** %105, align 16
  %106 = load i32*, i32** %9, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  %112 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 4
  store i64 %111, i64* %112, align 16
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = sext i32 %115 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32*, i32** %9, align 8
  %122 = ptrtoint i32* %120 to i64
  %123 = ptrtoint i32* %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 4
  store i64 %125, i64* %13, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %128 = call i32 @skb_put(%struct.sk_buff* %126, i32 %127)
  %129 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %130 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %133 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = load i64, i64* %13, align 8
  %137 = getelementptr inbounds [6 x i32*], [6 x i32*]* %10, i64 0, i64 0
  %138 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @aes_siv_encrypt(i32 %131, i32 %134, i32* %135, i64 %136, i32 5, i32** %137, i64* %138, i32* %139)
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %73, %70
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @ieee80211_is_reassoc_req(i32) #1

declare dso_local i32* @cfg80211_find_ext_ie(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @aes_siv_encrypt(i32, i32, i32*, i64, i32, i32**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
