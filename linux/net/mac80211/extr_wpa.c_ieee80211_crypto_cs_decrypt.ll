; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_cs_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_cs_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.TYPE_11__*, %struct.TYPE_8__*, %struct.ieee80211_key* }
%struct.TYPE_11__ = type { i64*, i32 }
%struct.TYPE_8__ = type { %struct.ieee80211_cipher_scheme* }
%struct.ieee80211_cipher_scheme = type { i32, i32, i64, i32 }
%struct.ieee80211_key = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64** }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_DROP_UNUSABLE = common dso_local global i32 0, align 4
@RX_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_data*)* @ieee80211_crypto_cs_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_crypto_cs_decrypt(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.ieee80211_key*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.ieee80211_cipher_scheme*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  %13 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %13, i32 0, i32 2
  %15 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  store %struct.ieee80211_key* %15, %struct.ieee80211_key** %4, align 8
  %16 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = bitcast i64* %20 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %21, %struct.ieee80211_hdr** %5, align 8
  store %struct.ieee80211_cipher_scheme* null, %struct.ieee80211_cipher_scheme** %6, align 8
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ieee80211_hdrlen(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.TYPE_11__* %28)
  store %struct.ieee80211_rx_status* %29, %struct.ieee80211_rx_status** %8, align 8
  %30 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %1
  %35 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %38, align 8
  %40 = icmp ne %struct.ieee80211_cipher_scheme* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41, %34, %1
  %49 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %49, i32* %2, align 4
  br label %184

50:                                               ; preds = %41
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ieee80211_is_data(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %57, i32* %2, align 4
  br label %184

58:                                               ; preds = %50
  %59 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %62, align 8
  store %struct.ieee80211_cipher_scheme* %63, %struct.ieee80211_cipher_scheme** %6, align 8
  %64 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %65 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %58
  %78 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %78, i32* %2, align 4
  br label %184

79:                                               ; preds = %58
  %80 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ieee80211_is_data_qos(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %87 = call i64 @ieee80211_get_tid(%struct.ieee80211_hdr* %86)
  store i64 %87, i64* %12, align 8
  br label %89

88:                                               ; preds = %79
  store i64 0, i64* %12, align 8
  br label %89

89:                                               ; preds = %88, %85
  %90 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %91 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = call i64 @skb_linearize(%struct.TYPE_11__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %96, i32* %2, align 4
  br label %184

97:                                               ; preds = %89
  %98 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = bitcast i64* %102 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %103, %struct.ieee80211_hdr** %5, align 8
  %104 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %105 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64**, i64*** %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds i64*, i64** %108, i64 %109
  %111 = load i64*, i64** %110, align 8
  store i64* %111, i64** %10, align 8
  %112 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %6, align 8
  %121 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %119, i64 %123
  store i64* %124, i64** %11, align 8
  %125 = load i64*, i64** %11, align 8
  %126 = load i64*, i64** %10, align 8
  %127 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %6, align 8
  %128 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @ieee80211_crypto_cs_pn_compare(i64* %125, i64* %126, i32 %129)
  %131 = icmp sle i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %97
  %133 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %133, i32* %2, align 4
  br label %184

134:                                              ; preds = %97
  %135 = load i64*, i64** %10, align 8
  %136 = load i64*, i64** %11, align 8
  %137 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %6, align 8
  %138 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @memcpy(i64* %135, i64* %136, i32 %139)
  %141 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %142 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %141, i32 0, i32 0
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %145 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %6, align 8
  %151 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %149, %152
  %154 = call i64 @pskb_trim(%struct.TYPE_11__* %143, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %134
  %157 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %157, i32* %2, align 4
  br label %184

158:                                              ; preds = %134
  %159 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %160 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %159, i32 0, i32 0
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %6, align 8
  %165 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %163, i64 %167
  %169 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %170 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %169, i32 0, i32 0
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @memmove(i64* %168, i64* %173, i32 %174)
  %176 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %177 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %176, i32 0, i32 0
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %6, align 8
  %180 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @skb_pull(%struct.TYPE_11__* %178, i32 %181)
  %183 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %158, %156, %132, %95, %77, %56, %48
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.TYPE_11__*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @ieee80211_get_tid(%struct.ieee80211_hdr*) #1

declare dso_local i64 @skb_linearize(%struct.TYPE_11__*) #1

declare dso_local i64 @ieee80211_crypto_cs_pn_compare(i64*, i64*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @pskb_trim(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
