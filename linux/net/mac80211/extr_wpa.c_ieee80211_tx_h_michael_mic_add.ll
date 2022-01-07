; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_tx_h_michael_mic_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_tx_h_michael_mic_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_8__*, %struct.TYPE_5__*, %struct.sk_buff* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@TX_CONTINUE = common dso_local global i32 0, align 4
@TX_DROP = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_TKIP_MIC_FAILURE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_DONTFRAG = common dso_local global i32 0, align 4
@SUPPORTS_TX_FRAG = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_MIC_SPACE = common dso_local global i32 0, align 4
@MICHAEL_MIC_LEN = common dso_local global i32 0, align 4
@IEEE80211_TKIP_ICV_LEN = common dso_local global i64 0, align 8
@IEEE80211_TKIP_IV_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"mmic: not enough head/tail (%d/%d,%d/%d)\0A\00", align 1
@NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_tx_h_michael_mic_add(%struct.ieee80211_tx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_tx_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %3, align 8
  %13 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %13, i32 0, i32 2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %21, %struct.ieee80211_hdr** %9, align 8
  %22 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %1
  %27 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 24
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ieee80211_is_data_present(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40, %35, %26, %1
  %47 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %47, i32* %2, align 4
  br label %202

48:                                               ; preds = %40
  %49 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ieee80211_hdrlen(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @TX_DROP, align 4
  store i32 %59, i32* %2, align 4
  br label %202

60:                                               ; preds = %48
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sub i32 %69, %70
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %7, align 8
  %73 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %74 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IEEE80211_TX_INTFL_TKIP_MIC_FAILURE, align 4
  %77 = and i32 %75, %76
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %60
  %81 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %82 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %80, %60
  %85 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %86 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %119

90:                                               ; preds = %84
  %91 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %92 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IEEE80211_TX_CTL_DONTFRAG, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %90
  %98 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* @SUPPORTS_TX_FRAG, align 4
  %103 = call i64 @ieee80211_hw_check(i32* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %97, %90
  %106 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %107 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %113 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_MIC_SPACE, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %105
  %118 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %118, i32* %2, align 4
  br label %202

119:                                              ; preds = %105, %97, %84
  %120 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  store i32 %120, i32* %12, align 4
  %121 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %122 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %119
  %127 = load i64, i64* @IEEE80211_TKIP_ICV_LEN, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %126, %119
  %133 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %134 = call i32 @skb_tailroom(%struct.sk_buff* %133)
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = call i64 @skb_headroom(%struct.sk_buff* %138)
  %140 = load i64, i64* @IEEE80211_TKIP_IV_LEN, align 8
  %141 = icmp slt i64 %139, %140
  br label %142

142:                                              ; preds = %137, %132
  %143 = phi i1 [ true, %132 ], [ %141, %137 ]
  %144 = zext i1 %143 to i32
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = call i64 @skb_headroom(%struct.sk_buff* %145)
  %147 = load i64, i64* @IEEE80211_TKIP_IV_LEN, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %149 = call i32 @skb_tailroom(%struct.sk_buff* %148)
  %150 = load i32, i32* %12, align 4
  %151 = call i64 @WARN(i32 %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %146, i64 %147, i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* @TX_DROP, align 4
  store i32 %154, i32* %2, align 4
  br label %202

155:                                              ; preds = %142
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  %158 = call i32* @skb_put(%struct.sk_buff* %156, i32 %157)
  store i32* %158, i32** %6, align 8
  %159 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %160 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_MIC_SPACE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %155
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  %171 = call i32 @memset(i32* %169, i32 0, i32 %170)
  %172 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %172, i32* %2, align 4
  br label %202

173:                                              ; preds = %155
  %174 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %175 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %5, align 8
  %182 = load i32*, i32** %5, align 8
  %183 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %184 = load i32*, i32** %4, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i32*, i32** %6, align 8
  %187 = call i32 @michael_mic(i32* %182, %struct.ieee80211_hdr* %183, i32* %184, i64 %185, i32* %186)
  %188 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %189 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @IEEE80211_TX_INTFL_TKIP_MIC_FAILURE, align 4
  %192 = and i32 %190, %191
  %193 = call i64 @unlikely(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %173
  %196 = load i32*, i32** %6, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %195, %173
  %201 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %200, %168, %153, %117, %58, %46
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data_present(i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i64 @WARN(i32, i8*, i64, i64, i32, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @michael_mic(i32*, %struct.ieee80211_hdr*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
