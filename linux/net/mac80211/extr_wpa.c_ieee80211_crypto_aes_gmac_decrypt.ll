; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_gmac_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_gmac_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.ieee80211_key*, %struct.sk_buff* }
%struct.ieee80211_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_mmie_16 = type { i64, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32*, i32 }

@GMAC_AAD_LEN = common dso_local global i32 0, align 4
@GMAC_NONCE_LEN = common dso_local global i32 0, align 4
@RX_CONTINUE = common dso_local global i32 0, align 4
@RX_DROP_UNUSABLE = common dso_local global i32 0, align 4
@WLAN_EID_MMIE = common dso_local global i64 0, align 8
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@GMAC_MIC_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_aes_gmac_decrypt(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca %struct.ieee80211_mmie_16*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [6 x i32], align 16
  %12 = alloca i64, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  %15 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %15, i32 0, i32 1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %18)
  store %struct.ieee80211_rx_status* %19, %struct.ieee80211_rx_status** %5, align 8
  %20 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_key*, %struct.ieee80211_key** %21, align 8
  store %struct.ieee80211_key* %22, %struct.ieee80211_key** %6, align 8
  %23 = load i32, i32* @GMAC_AAD_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load i32, i32* @GMAC_NONCE_LEN, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %34, %struct.ieee80211_hdr** %13, align 8
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ieee80211_is_mgmt(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %177

42:                                               ; preds = %1
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 48
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %177

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, 24
  %60 = inttoptr i64 %59 to %struct.ieee80211_mmie_16*
  store %struct.ieee80211_mmie_16* %60, %struct.ieee80211_mmie_16** %7, align 8
  %61 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WLAN_EID_MMIE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %50
  %67 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 22
  br i1 %71, label %72, label %74

72:                                               ; preds = %66, %50
  %73 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %177

74:                                               ; preds = %66
  %75 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %76 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @bip_ipn_swap(i32* %75, i32 %78)
  %80 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %81 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %82 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 @memcmp(i32* %80, i32* %85, i32 6)
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %74
  %89 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %95, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %177

96:                                               ; preds = %74
  %97 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %160, label %103

103:                                              ; preds = %96
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call i32 @bip_aad(%struct.sk_buff* %104, i32* %26)
  %106 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %107 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @ETH_ALEN, align 4
  %110 = call i32 @memcpy(i32* %29, i32* %108, i32 %109)
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %29, i64 %112
  %114 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %115 = call i32 @memcpy(i32* %113, i32* %114, i32 6)
  %116 = load i32, i32* @GMAC_MIC_LEN, align 4
  %117 = load i32, i32* @GFP_ATOMIC, align 4
  %118 = call i32* @kmalloc(i32 %116, i32 %117)
  store i32* %118, i32** %10, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %103
  %122 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %122, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %177

123:                                              ; preds = %103
  %124 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %125 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 24
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 24
  %137 = load i32*, i32** %10, align 8
  %138 = call i64 @ieee80211_aes_gmac(i32 %128, i32* %26, i32* %29, i32 %132, i32 %136, i32* %137)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %123
  %141 = load i32*, i32** %10, align 8
  %142 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %143 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @crypto_memneq(i32* %141, i32 %144, i32 4)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %140, %123
  %148 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %149 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 @kfree(i32* %154)
  %156 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %156, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %177

157:                                              ; preds = %140
  %158 = load i32*, i32** %10, align 8
  %159 = call i32 @kfree(i32* %158)
  br label %160

160:                                              ; preds = %157, %96
  %161 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %162 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %167 = call i32 @memcpy(i32* %165, i32* %166, i32 6)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = sub i64 %172, 24
  %174 = trunc i64 %173 to i32
  %175 = call i32 @skb_trim(%struct.sk_buff* %168, i32 %174)
  %176 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %176, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %177

177:                                              ; preds = %160, %147, %121, %88, %72, %48, %40
  %178 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @bip_ipn_swap(i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @bip_aad(%struct.sk_buff*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @ieee80211_aes_gmac(i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i64 @crypto_memneq(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
