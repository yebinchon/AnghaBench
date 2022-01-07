; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ccmp_encrypt_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ccmp_encrypt_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.ieee80211_key* }
%struct.ieee80211_key = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@CCM_AAD_LEN = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV_MGMT = common dso_local global i32 0, align 4
@IEEE80211_CCMP_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*, %struct.sk_buff*, i32)* @ccmp_encrypt_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccmp_encrypt_skb(%struct.ieee80211_tx_data* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_tx_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_key*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca [6 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %24, %struct.ieee80211_hdr** %8, align 8
  %25 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %25, i32 0, i32 0
  %27 = load %struct.ieee80211_key*, %struct.ieee80211_key** %26, align 8
  store %struct.ieee80211_key* %27, %struct.ieee80211_key** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %28)
  store %struct.ieee80211_tx_info* %29, %struct.ieee80211_tx_info** %10, align 8
  %30 = load i32, i32* @CCM_AAD_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %17, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  %34 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %19, align 8
  %37 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %79

42:                                               ; preds = %3
  %43 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %79, label %52

52:                                               ; preds = %42
  %53 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %54 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %52
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV_MGMT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ieee80211_is_mgmt(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72, %62
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %198

79:                                               ; preds = %72, %52, %42, %3
  %80 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %81 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ieee80211_hdrlen(i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %12, align 4
  %89 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %90 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = icmp ne %struct.TYPE_7__* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %97

95:                                               ; preds = %79
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %95, %94
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i32 @skb_tailroom(%struct.sk_buff* %98)
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = call i64 @skb_headroom(%struct.sk_buff* %103)
  %105 = load i64, i64* @IEEE80211_CCMP_HDR_LEN, align 8
  %106 = icmp slt i64 %104, %105
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i1 [ true, %97 ], [ %106, %102 ]
  %109 = zext i1 %108 to i32
  %110 = call i64 @WARN_ON(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %198

113:                                              ; preds = %107
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = load i64, i64* @IEEE80211_CCMP_HDR_LEN, align 8
  %116 = call i32* @skb_push(%struct.sk_buff* %114, i64 %115)
  store i32* %116, i32** %14, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = load i64, i64* @IEEE80211_CCMP_HDR_LEN, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @memmove(i32* %117, i32* %120, i32 %121)
  %123 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %124 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = icmp ne %struct.TYPE_7__* %126, null
  br i1 %127, label %128, label %139

128:                                              ; preds = %113
  %129 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %130 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %198

139:                                              ; preds = %128, %113
  %140 = load i32*, i32** %14, align 8
  %141 = bitcast i32* %140 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %141, %struct.ieee80211_hdr** %8, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32*, i32** %14, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %14, align 8
  %146 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %147 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = call i32 @atomic64_inc_return(i32* %148)
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %16, align 4
  %151 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 5
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* %16, align 4
  %153 = ashr i32 %152, 8
  %154 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 4
  store i32 %153, i32* %154, align 16
  %155 = load i32, i32* %16, align 4
  %156 = ashr i32 %155, 16
  %157 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 3
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* %16, align 4
  %159 = ashr i32 %158, 24
  %160 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 2
  store i32 %159, i32* %160, align 8
  %161 = load i32, i32* %16, align 4
  %162 = ashr i32 %161, 32
  %163 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 1
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %16, align 4
  %165 = ashr i32 %164, 40
  %166 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  store i32 %165, i32* %166, align 16
  %167 = load i32*, i32** %14, align 8
  %168 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %169 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %170 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ccmp_pn2hdr(i32* %167, i32* %168, i32 %172)
  %174 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %175 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = icmp ne %struct.TYPE_7__* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %139
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %198

180:                                              ; preds = %139
  %181 = load i64, i64* @IEEE80211_CCMP_HDR_LEN, align 8
  %182 = load i32*, i32** %14, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 %181
  store i32* %183, i32** %14, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %185 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %186 = call i32 @ccmp_special_blocks(%struct.sk_buff* %184, i32* %185, i32* %36, i32* %33)
  %187 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %188 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %14, align 8
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @skb_put(%struct.sk_buff* %194, i32 %195)
  %197 = call i32 @ieee80211_aes_ccm_encrypt(i32 %191, i32* %36, i32* %33, i32* %192, i32 %193, i32 %196)
  store i32 %197, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %198

198:                                              ; preds = %180, %179, %138, %112, %78
  %199 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @ccmp_pn2hdr(i32*, i32*, i32) #1

declare dso_local i32 @ccmp_special_blocks(%struct.sk_buff*, i32*, i32*, i32*) #1

declare dso_local i32 @ieee80211_aes_ccm_encrypt(i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
