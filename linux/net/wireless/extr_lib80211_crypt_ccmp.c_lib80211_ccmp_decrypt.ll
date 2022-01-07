; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_lib80211_crypt_ccmp.c_lib80211_ccmp_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_lib80211_crypt_ccmp.c_lib80211_ccmp_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.lib80211_ccmp_data = type { i32*, i32, i32*, i32, i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.aead_request = type { i32 }
%struct.scatterlist = type { i32 }

@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CCMP_HDR_LEN = common dso_local global i32 0, align 4
@CCMP_MIC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"CCMP: received packet without ExtIV flag from %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"CCMP: RX tkey->key_idx=%d frame keyidx=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"CCMP: received packet from %pM with keyid=%d that does not have a configured key\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"CCMP: decrypt failed: STA=%pM (%d)\0A\00", align 1
@CCMP_PN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i8*)* @lib80211_ccmp_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lib80211_ccmp_decrypt(%struct.sk_buff* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lib80211_ccmp_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.aead_request*, align 8
  %13 = alloca [2 x %struct.scatterlist], align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [6 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.lib80211_ccmp_data*
  store %struct.lib80211_ccmp_data* %23, %struct.lib80211_ccmp_data** %8, align 8
  %24 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %25 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %14, align 8
  %27 = load i32, i32* @AES_BLOCK_LEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %15, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* @CCMP_HDR_LEN, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %20, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @CCMP_HDR_LEN, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* @CCMP_MIC_LEN, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %3
  %49 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %50 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %224

53:                                               ; preds = %3
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %57, %struct.ieee80211_hdr** %11, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %53
  %71 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %72 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, ...) @net_dbg_ratelimited(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %76 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  store i32 -2, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %224

79:                                               ; preds = %53
  %80 = load i32, i32* %9, align 4
  %81 = ashr i32 %80, 6
  store i32 %81, i32* %9, align 4
  %82 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %83 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %89 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (i8*, i32, ...) @net_dbg_ratelimited(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  store i32 -6, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %224

93:                                               ; preds = %79
  %94 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %95 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %100 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (i8*, i32, ...) @net_dbg_ratelimited(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102)
  store i32 -3, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %224

104:                                              ; preds = %93
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  store i32 %107, i32* %108, align 16
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 1
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 2
  store i32 %115, i32* %116, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 3
  store i32 %119, i32* %120, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 4
  store i32 %123, i32* %124, align 16
  %125 = load i32*, i32** %10, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 5
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 8
  store i32* %130, i32** %10, align 8
  %131 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  %132 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %133 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @ccmp_replay_check(i32* %131, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %104
  %138 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %139 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  store i32 -4, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %224

142:                                              ; preds = %104
  %143 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %144 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @GFP_ATOMIC, align 4
  %147 = call %struct.aead_request* @aead_request_alloc(i32 %145, i32 %146)
  store %struct.aead_request* %147, %struct.aead_request** %12, align 8
  %148 = load %struct.aead_request*, %struct.aead_request** %12, align 8
  %149 = icmp ne %struct.aead_request* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %224

153:                                              ; preds = %142
  %154 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %155 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @ccmp_init_iv_and_aad(%struct.ieee80211_hdr* %154, i32* %155, i32* %30, i32* %156)
  store i32 %157, i32* %18, align 4
  %158 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %13, i64 0, i64 0
  %159 = call i32 @sg_init_table(%struct.scatterlist* %158, i32 2)
  %160 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %13, i64 0, i64 0
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = call i32 @sg_set_buf(%struct.scatterlist* %160, i32* %161, i64 %163)
  %165 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %13, i64 0, i64 1
  %166 = load i32*, i32** %10, align 8
  %167 = load i64, i64* %20, align 8
  %168 = call i32 @sg_set_buf(%struct.scatterlist* %165, i32* %166, i64 %167)
  %169 = load %struct.aead_request*, %struct.aead_request** %12, align 8
  %170 = call i32 @aead_request_set_callback(%struct.aead_request* %169, i32 0, i32* null, i32* null)
  %171 = load %struct.aead_request*, %struct.aead_request** %12, align 8
  %172 = load i32, i32* %18, align 4
  %173 = call i32 @aead_request_set_ad(%struct.aead_request* %171, i32 %172)
  %174 = load %struct.aead_request*, %struct.aead_request** %12, align 8
  %175 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %13, i64 0, i64 0
  %176 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %13, i64 0, i64 0
  %177 = load i64, i64* %20, align 8
  %178 = call i32 @aead_request_set_crypt(%struct.aead_request* %174, %struct.scatterlist* %175, %struct.scatterlist* %176, i64 %177, i32* %30)
  %179 = load %struct.aead_request*, %struct.aead_request** %12, align 8
  %180 = call i32 @crypto_aead_decrypt(%struct.aead_request* %179)
  store i32 %180, i32* %19, align 4
  %181 = load %struct.aead_request*, %struct.aead_request** %12, align 8
  %182 = call i32 @aead_request_free(%struct.aead_request* %181)
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %153
  %186 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %187 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %19, align 4
  %190 = call i32 (i8*, i32, ...) @net_dbg_ratelimited(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %188, i32 %189)
  %191 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %192 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 8
  store i32 -5, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %224

195:                                              ; preds = %153
  %196 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %8, align 8
  %197 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  %200 = load i32, i32* @CCMP_PN_LEN, align 4
  %201 = call i32 @memcpy(i32* %198, i32* %199, i32 %200)
  %202 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %203 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* @CCMP_HDR_LEN, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @memmove(i32* %207, i32* %210, i32 %211)
  %213 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %214 = load i32, i32* @CCMP_HDR_LEN, align 4
  %215 = call i32 @skb_pull(%struct.sk_buff* %213, i32 %214)
  %216 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %217 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %218 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @CCMP_MIC_LEN, align 4
  %221 = sub nsw i32 %219, %220
  %222 = call i32 @skb_trim(%struct.sk_buff* %216, i32 %221)
  %223 = load i32, i32* %9, align 4
  store i32 %223, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %224

224:                                              ; preds = %195, %185, %150, %137, %98, %87, %70, %48
  %225 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %225)
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i32, ...) #2

declare dso_local i64 @ccmp_replay_check(i32*, i32*) #2

declare dso_local %struct.aead_request* @aead_request_alloc(i32, i32) #2

declare dso_local i32 @ccmp_init_iv_and_aad(%struct.ieee80211_hdr*, i32*, i32*, i32*) #2

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #2

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i64) #2

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32*, i32*) #2

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #2

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i64, i32*) #2

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #2

declare dso_local i32 @aead_request_free(%struct.aead_request*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @memmove(i32*, i32*, i32) #2

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
