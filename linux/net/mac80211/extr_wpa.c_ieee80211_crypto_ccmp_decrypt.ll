; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_ccmp_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_ccmp_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { i32, i32, %struct.sk_buff*, %struct.ieee80211_key* }
%struct.sk_buff = type { i32, i32 }
%struct.ieee80211_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@IEEE80211_CCMP_PN_LEN = common dso_local global i32 0, align 4
@RX_CONTINUE = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@IEEE80211_CCMP_HDR_LEN = common dso_local global i32 0, align 4
@RX_DROP_UNUSABLE = common dso_local global i32 0, align 4
@RX_FLAG_MIC_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_PN_VALIDATED = common dso_local global i32 0, align 4
@RX_FLAG_ALLOW_SAME_PN = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_ccmp_decrypt(%struct.ieee80211_rx_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_rx_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_key*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %20, i32 0, i32 2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %26, %struct.ieee80211_hdr** %6, align 8
  %27 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %27, i32 0, i32 3
  %29 = load %struct.ieee80211_key*, %struct.ieee80211_key** %28, align 8
  store %struct.ieee80211_key* %29, %struct.ieee80211_key** %8, align 8
  %30 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %30, i32 0, i32 2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %9, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %33)
  store %struct.ieee80211_rx_status* %34, %struct.ieee80211_rx_status** %10, align 8
  %35 = load i32, i32* @IEEE80211_CCMP_PN_LEN, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %11, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %12, align 8
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ieee80211_hdrlen(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ieee80211_is_data(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %2
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call i32 @ieee80211_is_robust_mgmt_frame(%struct.sk_buff* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %244

54:                                               ; preds = %48, %2
  %55 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %56 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %54
  %62 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %62, i32 0, i32 2
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @IEEE80211_CCMP_HDR_LEN, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i32 @pskb_may_pull(%struct.sk_buff* %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %244

72:                                               ; preds = %61
  %73 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %74 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RX_FLAG_MIC_STRIPPED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %72
  br label %90

81:                                               ; preds = %54
  %82 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %82, i32 0, i32 2
  %84 = load %struct.sk_buff*, %struct.sk_buff** %83, align 8
  %85 = call i64 @skb_linearize(%struct.sk_buff* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %88, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %244

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %80
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* @IEEE80211_CCMP_HDR_LEN, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32, i32* %5, align 4
  %99 = sub i32 %97, %98
  store i32 %99, i32* %13, align 4
  %100 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %101 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %90
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104, %90
  %108 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %108, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %244

109:                                              ; preds = %104
  %110 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %111 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @RX_FLAG_PN_VALIDATED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %218, label %116

116:                                              ; preds = %109
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i32 @ccmp_hdr2pn(i32* %38, i32 %121)
  %123 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %124 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %14, align 4
  %126 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %127 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IEEE80211_CCMP_PN_LEN, align 4
  %136 = call i32 @memcmp(i32* %38, i32 %134, i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %116
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %139
  %143 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %144 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @RX_FLAG_ALLOW_SAME_PN, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %142, %116
  %150 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %151 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %156, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %244

157:                                              ; preds = %142, %139
  %158 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %159 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %206, label %164

164:                                              ; preds = %157
  %165 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %166 = mul nsw i32 2, %165
  %167 = zext i32 %166 to i64
  %168 = call i8* @llvm.stacksave()
  store i8* %168, i8** %17, align 8
  %169 = alloca i32, i64 %167, align 16
  store i64 %167, i64* %18, align 8
  %170 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %171 = zext i32 %170 to i64
  %172 = alloca i32, i64 %171, align 16
  store i64 %171, i64* %19, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %174 = call i32 @ccmp_special_blocks(%struct.sk_buff* %173, i32* %38, i32* %172, i32* %169)
  %175 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %176 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %182, %183
  %185 = load i32, i32* @IEEE80211_CCMP_HDR_LEN, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %190, %193
  %195 = load i32, i32* %5, align 4
  %196 = sub i32 %194, %195
  %197 = call i64 @ieee80211_aes_ccm_decrypt(i32 %179, i32* %172, i32* %169, i32 %186, i32 %187, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %164
  %200 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %200, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %202

201:                                              ; preds = %164
  store i32 0, i32* %15, align 4
  br label %202

202:                                              ; preds = %201, %199
  %203 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %15, align 4
  switch i32 %204, label %244 [
    i32 0, label %205
  ]

205:                                              ; preds = %202
  br label %206

206:                                              ; preds = %205, %157
  %207 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %208 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @IEEE80211_CCMP_PN_LEN, align 4
  %217 = call i32 @memcpy(i32 %215, i32* %38, i32 %216)
  br label %218

218:                                              ; preds = %206, %109
  %219 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %220 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %5, align 4
  %224 = sub i32 %222, %223
  %225 = call i64 @pskb_trim(%struct.sk_buff* %219, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %218
  %228 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %228, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %244

229:                                              ; preds = %218
  %230 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @IEEE80211_CCMP_HDR_LEN, align 4
  %234 = add nsw i32 %232, %233
  %235 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %236 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %7, align 4
  %239 = call i32 @memmove(i32 %234, i32 %237, i32 %238)
  %240 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %241 = load i32, i32* @IEEE80211_CCMP_HDR_LEN, align 4
  %242 = call i32 @skb_pull(%struct.sk_buff* %240, i32 %241)
  %243 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %243, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %244

244:                                              ; preds = %229, %227, %202, %149, %107, %87, %70, %52
  %245 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %245)
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_is_robust_mgmt_frame(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @ccmp_hdr2pn(i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @ccmp_special_blocks(%struct.sk_buff*, i32*, i32*, i32*) #1

declare dso_local i64 @ieee80211_aes_ccm_decrypt(i32, i32*, i32*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
