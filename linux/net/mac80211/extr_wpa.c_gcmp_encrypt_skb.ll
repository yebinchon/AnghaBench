; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_gcmp_encrypt_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_gcmp_encrypt_skb.c"
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

@GCM_AAD_LEN = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV_MGMT = common dso_local global i32 0, align 4
@IEEE80211_GCMP_MIC_LEN = common dso_local global i32 0, align 4
@IEEE80211_GCMP_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*, %struct.sk_buff*)* @gcmp_encrypt_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcmp_encrypt_skb(%struct.ieee80211_tx_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_tx_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [6 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %6, align 8
  %23 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_key*, %struct.ieee80211_key** %24, align 8
  store %struct.ieee80211_key* %25, %struct.ieee80211_key** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %26)
  store %struct.ieee80211_tx_info* %27, %struct.ieee80211_tx_info** %8, align 8
  %28 = load i32, i32* @GCM_AAD_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %15, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %32 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %17, align 8
  %35 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %77

40:                                               ; preds = %2
  %41 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %40
  %51 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %52 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %50
  %61 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV_MGMT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ieee80211_is_mgmt(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70, %60
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %202

77:                                               ; preds = %70, %50, %40, %2
  %78 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %79 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ieee80211_hdrlen(i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %10, align 4
  %87 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %88 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = icmp ne %struct.TYPE_7__* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  br label %95

93:                                               ; preds = %77
  %94 = load i32, i32* @IEEE80211_GCMP_MIC_LEN, align 4
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @skb_tailroom(%struct.sk_buff* %96)
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call i64 @skb_headroom(%struct.sk_buff* %101)
  %103 = load i64, i64* @IEEE80211_GCMP_HDR_LEN, align 8
  %104 = icmp slt i64 %102, %103
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ true, %95 ], [ %104, %100 ]
  %107 = zext i1 %106 to i32
  %108 = call i64 @WARN_ON(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %202

111:                                              ; preds = %105
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = load i64, i64* @IEEE80211_GCMP_HDR_LEN, align 8
  %114 = call i32* @skb_push(%struct.sk_buff* %112, i64 %113)
  store i32* %114, i32** %12, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = load i64, i64* @IEEE80211_GCMP_HDR_LEN, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @memmove(i32* %115, i32* %118, i32 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call i64 @skb_network_offset(%struct.sk_buff* %122)
  %124 = load i64, i64* @IEEE80211_GCMP_HDR_LEN, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @skb_set_network_header(%struct.sk_buff* %121, i64 %125)
  %127 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %128 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = icmp ne %struct.TYPE_7__* %130, null
  br i1 %131, label %132, label %143

132:                                              ; preds = %111
  %133 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %134 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %202

143:                                              ; preds = %132, %111
  %144 = load i32*, i32** %12, align 8
  %145 = bitcast i32* %144 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %145, %struct.ieee80211_hdr** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %12, align 8
  %150 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %151 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = call i32 @atomic64_inc_return(i32* %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %14, align 4
  %157 = ashr i32 %156, 8
  %158 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  store i32 %157, i32* %158, align 16
  %159 = load i32, i32* %14, align 4
  %160 = ashr i32 %159, 16
  %161 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  store i32 %160, i32* %161, align 4
  %162 = load i32, i32* %14, align 4
  %163 = ashr i32 %162, 24
  %164 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  store i32 %163, i32* %164, align 8
  %165 = load i32, i32* %14, align 4
  %166 = ashr i32 %165, 32
  %167 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  store i32 %166, i32* %167, align 4
  %168 = load i32, i32* %14, align 4
  %169 = ashr i32 %168, 40
  %170 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  store i32 %169, i32* %170, align 16
  %171 = load i32*, i32** %12, align 8
  %172 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %173 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %174 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @gcmp_pn2hdr(i32* %171, i32* %172, i32 %176)
  %178 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %179 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = icmp ne %struct.TYPE_7__* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %202

184:                                              ; preds = %143
  %185 = load i64, i64* @IEEE80211_GCMP_HDR_LEN, align 8
  %186 = load i32*, i32** %12, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 %185
  store i32* %187, i32** %12, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %189 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %190 = call i32 @gcmp_special_blocks(%struct.sk_buff* %188, i32* %189, i32* %34, i32* %31)
  %191 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %192 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %12, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %199 = load i32, i32* @IEEE80211_GCMP_MIC_LEN, align 4
  %200 = call i32 @skb_put(%struct.sk_buff* %198, i32 %199)
  %201 = call i32 @ieee80211_aes_gcm_encrypt(i32 %195, i32* %34, i32* %31, i32* %196, i32 %197, i32 %200)
  store i32 %201, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %202

202:                                              ; preds = %184, %183, %142, %110, %76
  %203 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %3, align 4
  ret i32 %204
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

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @gcmp_pn2hdr(i32*, i32*, i32) #1

declare dso_local i32 @gcmp_special_blocks(%struct.sk_buff*, i32*, i32*, i32*) #1

declare dso_local i32 @ieee80211_aes_gcm_encrypt(i32, i32*, i32*, i32*, i32, i32) #1

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
