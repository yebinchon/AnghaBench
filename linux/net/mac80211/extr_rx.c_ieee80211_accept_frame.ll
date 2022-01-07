; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_accept_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_accept_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { i32, %struct.sk_buff*, %struct.ieee80211_sub_if_data* }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32* }
%struct.ieee80211_hdr = type { i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32, i32 }

@RX_ENC_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_data*)* @ieee80211_accept_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_accept_frame(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  %12 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %12, i32 0, i32 2
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %4, align 8
  %15 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %15, i32 0, i32 1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %23)
  store %struct.ieee80211_rx_status* %24, %struct.ieee80211_rx_status** %7, align 8
  %25 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @ieee80211_get_bssid(%struct.ieee80211_hdr* %25, i32 %28, i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @is_multicast_ether_addr(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %379 [
    i32 129, label %42
    i32 136, label %76
    i32 131, label %159
    i32 133, label %216
    i32 134, label %240
    i32 135, label %240
    i32 128, label %330
    i32 130, label %350
    i32 132, label %378
  ]

42:                                               ; preds = %1
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %382

53:                                               ; preds = %45, %42
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @ieee80211_is_robust_mgmt_frame(%struct.sk_buff* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %59 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %382

63:                                               ; preds = %57, %53
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %2, align 4
  br label %382

67:                                               ; preds = %63
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ether_addr_equal(i32* %71, i32 %74)
  store i32 %75, i32* %2, align 4
  br label %382

76:                                               ; preds = %1
  %77 = load i32*, i32** %8, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %382

80:                                               ; preds = %76
  %81 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ether_addr_equal(i32* %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %80
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %97 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ether_addr_equal(i32* %95, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90, %80
  store i32 0, i32* %2, align 4
  br label %382

102:                                              ; preds = %90
  %103 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ieee80211_is_beacon(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 1, i32* %2, align 4
  br label %382

109:                                              ; preds = %102
  %110 = load i32*, i32** %8, align 8
  %111 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @ieee80211_bssid_match(i32* %110, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %382

119:                                              ; preds = %109
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %119
  %123 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %124 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %128 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ether_addr_equal(i32* %126, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %382

133:                                              ; preds = %122, %119
  %134 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %135 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %158, label %138

138:                                              ; preds = %133
  %139 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %140 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @RX_ENC_LEGACY, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 0, i32* %10, align 4
  br label %149

145:                                              ; preds = %138
  %146 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %147 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %145, %144
  %150 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %151 = load i32*, i32** %8, align 8
  %152 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %153 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @BIT(i32 %155)
  %157 = call i32 @ieee80211_ibss_rx_no_sta(%struct.ieee80211_sub_if_data* %150, i32* %151, i32 %154, i32 %156)
  br label %158

158:                                              ; preds = %149, %133
  store i32 1, i32* %2, align 4
  br label %382

159:                                              ; preds = %1
  %160 = load i32*, i32** %8, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  store i32 0, i32* %2, align 4
  br label %382

163:                                              ; preds = %159
  %164 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %165 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ieee80211_is_data_present(i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %163
  store i32 0, i32* %2, align 4
  br label %382

170:                                              ; preds = %163
  %171 = load i32*, i32** %8, align 8
  %172 = call i32 @is_broadcast_ether_addr(i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  store i32 0, i32* %2, align 4
  br label %382

175:                                              ; preds = %170
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %175
  %179 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %180 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %179, i32 0, i32 2
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %185 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ether_addr_equal(i32* %183, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %178
  store i32 0, i32* %2, align 4
  br label %382

190:                                              ; preds = %178, %175
  %191 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %192 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %215, label %195

195:                                              ; preds = %190
  %196 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %197 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @RX_ENC_LEGACY, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  store i32 0, i32* %11, align 4
  br label %206

202:                                              ; preds = %195
  %203 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %204 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %11, align 4
  br label %206

206:                                              ; preds = %202, %201
  %207 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %210 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @BIT(i32 %212)
  %214 = call i32 @ieee80211_ocb_rx_no_sta(%struct.ieee80211_sub_if_data* %207, i32* %208, i32 %211, i32 %213)
  br label %215

215:                                              ; preds = %206, %190
  store i32 1, i32* %2, align 4
  br label %382

216:                                              ; preds = %1
  %217 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %218 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %222 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ether_addr_equal(i32* %220, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %216
  store i32 0, i32* %2, align 4
  br label %382

227:                                              ; preds = %216
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  store i32 1, i32* %2, align 4
  br label %382

231:                                              ; preds = %227
  %232 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %233 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %237 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @ether_addr_equal(i32* %235, i32 %238)
  store i32 %239, i32* %2, align 4
  br label %382

240:                                              ; preds = %1, %1
  %241 = load i32*, i32** %8, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %252, label %243

243:                                              ; preds = %240
  %244 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %245 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %249 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @ether_addr_equal(i32* %247, i32 %250)
  store i32 %251, i32* %2, align 4
  br label %382

252:                                              ; preds = %240
  %253 = load i32*, i32** %8, align 8
  %254 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %255 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @ieee80211_bssid_match(i32* %253, i32* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %287, label %260

260:                                              ; preds = %252
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %274, label %263

263:                                              ; preds = %260
  %264 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %265 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %269 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @ether_addr_equal(i32* %267, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %263
  store i32 0, i32* %2, align 4
  br label %382

274:                                              ; preds = %263, %260
  %275 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %276 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %277 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @ieee80211_is_public_action(%struct.ieee80211_hdr* %275, i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  store i32 1, i32* %2, align 4
  br label %382

282:                                              ; preds = %274
  %283 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %284 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @ieee80211_is_beacon(i32 %285)
  store i32 %286, i32* %2, align 4
  br label %382

287:                                              ; preds = %252
  %288 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %289 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @ieee80211_has_tods(i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %319, label %293

293:                                              ; preds = %287
  %294 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %295 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @ieee80211_is_data(i32 %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %293
  store i32 0, i32* %2, align 4
  br label %382

300:                                              ; preds = %293
  %301 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %302 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @ieee80211_is_action(i32 %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %300
  %307 = load i32*, i32** %8, align 8
  %308 = call i32 @is_broadcast_ether_addr(i32* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %318, label %310

310:                                              ; preds = %306
  %311 = load i32*, i32** %8, align 8
  %312 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %313 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @ether_addr_equal(i32* %311, i32 %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %310
  store i32 0, i32* %2, align 4
  br label %382

318:                                              ; preds = %310, %306, %300
  br label %319

319:                                              ; preds = %318, %287
  %320 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %321 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @ieee80211_is_data(i32 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %319
  %326 = load i32, i32* %9, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  store i32 0, i32* %2, align 4
  br label %382

329:                                              ; preds = %325, %319
  store i32 1, i32* %2, align 4
  br label %382

330:                                              ; preds = %1
  %331 = load i32*, i32** %8, align 8
  %332 = icmp ne i32* %331, null
  br i1 %332, label %339, label %333

333:                                              ; preds = %330
  %334 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %335 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @ieee80211_is_data(i32 %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %333, %330
  store i32 0, i32* %2, align 4
  br label %382

340:                                              ; preds = %333
  %341 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %342 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %347 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @ether_addr_equal(i32* %345, i32 %348)
  store i32 %349, i32* %2, align 4
  br label %382

350:                                              ; preds = %1
  %351 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %352 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %353 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @ieee80211_is_public_action(%struct.ieee80211_hdr* %351, i32 %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %375, label %357

357:                                              ; preds = %350
  %358 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %359 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @ieee80211_is_probe_req(i32 %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %375, label %363

363:                                              ; preds = %357
  %364 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %365 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @ieee80211_is_probe_resp(i32 %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %375, label %369

369:                                              ; preds = %363
  %370 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %371 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @ieee80211_is_beacon(i32 %372)
  %374 = icmp ne i32 %373, 0
  br label %375

375:                                              ; preds = %369, %363, %357, %350
  %376 = phi i1 [ true, %363 ], [ true, %357 ], [ true, %350 ], [ %374, %369 ]
  %377 = zext i1 %376 to i32
  store i32 %377, i32* %2, align 4
  br label %382

378:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %382

379:                                              ; preds = %1
  br label %380

380:                                              ; preds = %379
  %381 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %2, align 4
  br label %382

382:                                              ; preds = %380, %378, %375, %340, %339, %329, %328, %317, %299, %282, %281, %273, %243, %231, %230, %226, %215, %189, %174, %169, %162, %158, %132, %118, %108, %101, %79, %67, %66, %62, %52
  %383 = load i32, i32* %2, align 4
  ret i32 %383
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32* @ieee80211_get_bssid(%struct.ieee80211_hdr*, i32, i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_is_robust_mgmt_frame(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @ieee80211_bssid_match(i32*, i32*) #1

declare dso_local i32 @ieee80211_ibss_rx_no_sta(%struct.ieee80211_sub_if_data*, i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_is_data_present(i32) #1

declare dso_local i32 @is_broadcast_ether_addr(i32*) #1

declare dso_local i32 @ieee80211_ocb_rx_no_sta(%struct.ieee80211_sub_if_data*, i32*, i32, i32) #1

declare dso_local i32 @ieee80211_is_public_action(%struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @ieee80211_has_tods(i32) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_is_action(i32) #1

declare dso_local i32 @ieee80211_is_probe_req(i32) #1

declare dso_local i32 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
