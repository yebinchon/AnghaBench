; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_rx_napi.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_rx_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.napi_struct = type { i32 }
%struct.ieee80211_local = type { i32, i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_rx_status = type { i64, i32, i32, i32, i32, i64 }
%struct.ieee80211_hdr = type { i32 }

@NUM_NL80211_BANDS = common dso_local global i64 0, align 8
@RX_FLAG_FAILED_PLCP_CRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"Rate marked as an HT rate but passed status->rate_idx is not an MCS index [0-76]: %d (0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Rate marked as a VHT rate but data is invalid: MCS: %d, NSS: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Rate marked as an HE rate but data is invalid: MCS: %d, NSS: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_rx_napi(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, %struct.sk_buff* %2, %struct.napi_struct* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.napi_struct*, align 8
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca %struct.ieee80211_rate*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.napi_struct* %3, %struct.napi_struct** %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %13)
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %9, align 8
  store %struct.ieee80211_rate* null, %struct.ieee80211_rate** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %15)
  store %struct.ieee80211_rx_status* %16, %struct.ieee80211_rx_status** %12, align 8
  %17 = call i64 (...) @softirq_count()
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NUM_NL80211_BANDS, align 8
  %25 = icmp uge i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %223

30:                                               ; preds = %4
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %35, align 8
  %37 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %36, i64 %39
  %41 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %40, align 8
  store %struct.ieee80211_supported_band* %41, %struct.ieee80211_supported_band** %11, align 8
  %42 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %43 = icmp ne %struct.ieee80211_supported_band* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %223

49:                                               ; preds = %30
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ true, %49 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %223

65:                                               ; preds = %59
  %66 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %223

72:                                               ; preds = %65
  %73 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %74 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @WARN_ON(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %223

82:                                               ; preds = %72
  %83 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %84 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RX_FLAG_FAILED_PLCP_CRC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @likely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %193

93:                                               ; preds = %82
  %94 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %95 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %169 [
    i32 130, label %97
    i32 128, label %113
    i32 131, label %141
    i32 129, label %171
  ]

97:                                               ; preds = %93
  %98 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %99 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 76
  %102 = zext i1 %101 to i32
  %103 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %104 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %107 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @WARN(i32 %102, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  br label %223

112:                                              ; preds = %97
  br label %192

113:                                              ; preds = %93
  %114 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %115 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp sgt i32 %116, 9
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %120 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %125 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 8
  br label %128

128:                                              ; preds = %123, %118, %113
  %129 = phi i1 [ true, %118 ], [ true, %113 ], [ %127, %123 ]
  %130 = zext i1 %129 to i32
  %131 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %132 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %135 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @WARN_ONCE(i32 %130, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %223

140:                                              ; preds = %128
  br label %192

141:                                              ; preds = %93
  %142 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %143 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %144, 11
  br i1 %145, label %156, label %146

146:                                              ; preds = %141
  %147 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %148 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %153 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 8
  br label %156

156:                                              ; preds = %151, %146, %141
  %157 = phi i1 [ true, %146 ], [ true, %141 ], [ %155, %151 ]
  %158 = zext i1 %157 to i32
  %159 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %160 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %163 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @WARN_ONCE(i32 %158, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %161, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %223

168:                                              ; preds = %156
  br label %192

169:                                              ; preds = %93
  %170 = call i32 @WARN_ON_ONCE(i32 1)
  br label %171

171:                                              ; preds = %93, %169
  %172 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %173 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %176 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp sge i32 %174, %177
  %179 = zext i1 %178 to i32
  %180 = call i64 @WARN_ON(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  br label %223

183:                                              ; preds = %171
  %184 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %185 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %184, i32 0, i32 1
  %186 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %185, align 8
  %187 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %188 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %186, i64 %190
  store %struct.ieee80211_rate* %191, %struct.ieee80211_rate** %10, align 8
  br label %192

192:                                              ; preds = %183, %168, %140, %112
  br label %193

193:                                              ; preds = %192, %82
  %194 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %195 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %194, i32 0, i32 5
  store i64 0, i64* %195, align 8
  %196 = call i32 (...) @rcu_read_lock()
  %197 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %199 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %200 = call %struct.sk_buff* @ieee80211_rx_monitor(%struct.ieee80211_local* %197, %struct.sk_buff* %198, %struct.ieee80211_rate* %199)
  store %struct.sk_buff* %200, %struct.sk_buff** %7, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %202 = icmp ne %struct.sk_buff* %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %193
  %204 = call i32 (...) @rcu_read_unlock()
  br label %226

205:                                              ; preds = %193
  %206 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to %struct.ieee80211_hdr*
  %211 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @ieee80211_tpt_led_trig_rx(%struct.ieee80211_local* %206, i32 %212, i32 %215)
  %217 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %218 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %220 = load %struct.napi_struct*, %struct.napi_struct** %8, align 8
  %221 = call i32 @__ieee80211_rx_handle_packet(%struct.ieee80211_hw* %217, %struct.ieee80211_sta* %218, %struct.sk_buff* %219, %struct.napi_struct* %220)
  %222 = call i32 (...) @rcu_read_unlock()
  br label %226

223:                                              ; preds = %182, %167, %139, %111, %81, %71, %64, %48, %29
  %224 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %225 = call i32 @kfree_skb(%struct.sk_buff* %224)
  br label %226

226:                                              ; preds = %223, %205, %203
  ret void
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @softirq_count(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_buff* @ieee80211_rx_monitor(%struct.ieee80211_local*, %struct.sk_buff*, %struct.ieee80211_rate*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_tpt_led_trig_rx(%struct.ieee80211_local*, i32, i32) #1

declare dso_local i32 @__ieee80211_rx_handle_packet(%struct.ieee80211_hw*, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.napi_struct*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
