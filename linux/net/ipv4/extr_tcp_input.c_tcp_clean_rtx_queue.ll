; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_clean_rtx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_clean_rtx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sacktag_state = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.inet_connection_sock = type { i32, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 (%struct.sock*, %struct.ack_sample*)* }
%struct.ack_sample = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.tcp_sock = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_8__, %struct.sk_buff*, %struct.sk_buff*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_skb_cb = type { i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@TCPCB_RETRANS = common dso_local global i32 0, align 4
@TCPCB_SACKED_RETRANS = common dso_local global i32 0, align 4
@FLAG_RETRANS_DATA_ACKED = common dso_local global i32 0, align 4
@TCPCB_SACKED_ACKED = common dso_local global i32 0, align 4
@FLAG_ORIG_SACK_ACKED = common dso_local global i32 0, align 4
@TCPCB_LOST = common dso_local global i32 0, align 4
@TCPHDR_SYN = common dso_local global i32 0, align 4
@FLAG_DATA_ACKED = common dso_local global i32 0, align 4
@FLAG_SYN_ACKED = common dso_local global i32 0, align 4
@TCP_CHRONO_BUSY = common dso_local global i32 0, align 4
@FLAG_SACK_RENEGING = common dso_local global i32 0, align 4
@FLAG_CA_ALERT = common dso_local global i32 0, align 4
@FLAG_ACK_MAYBE_DELAYED = common dso_local global i32 0, align 4
@FLAG_ACKED = common dso_local global i32 0, align 4
@FLAG_SET_XMIT_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i32, %struct.tcp_sacktag_state*)* @tcp_clean_rtx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_clean_rtx_queue(%struct.sock* %0, i32 %1, i32 %2, %struct.tcp_sacktag_state* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcp_sacktag_state*, align 8
  %9 = alloca %struct.inet_connection_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcp_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.tcp_skb_cb*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.ack_sample, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.tcp_sacktag_state* %3, %struct.tcp_sacktag_state** %8, align 8
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %31)
  store %struct.inet_connection_sock* %32, %struct.inet_connection_sock** %9, align 8
  %33 = load %struct.sock*, %struct.sock** %5, align 8
  %34 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %33)
  store %struct.tcp_sock* %34, %struct.tcp_sock** %12, align 8
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  store i32 1, i32* %17, align 4
  store i64 -1, i64* %18, align 8
  store i64 -1, i64* %19, align 8
  store i64 -1, i64* %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %10, align 4
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = call %struct.sk_buff* @skb_rb_first(i32* %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %15, align 8
  br label %44

44:                                               ; preds = %275, %4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %47, label %277

47:                                               ; preds = %44
  %48 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %49 = call %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff* %48)
  store %struct.tcp_skb_cb* %49, %struct.tcp_skb_cb** %25, align 8
  %50 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %25, align 8
  %51 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %26, align 4
  %53 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %25, align 8
  %54 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %27, align 4
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @tcp_ack_tstamp(%struct.sock* %56, %struct.sk_buff* %57, i32 %58)
  %60 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %25, align 8
  %61 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %64 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @after(i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %47
  %69 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %70 = call i32 @tcp_skb_pcount(%struct.sk_buff* %69)
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %74 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %25, align 8
  %77 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @after(i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %72, %68
  br label %277

82:                                               ; preds = %72
  %83 = load %struct.sock*, %struct.sock** %5, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %85 = call i32 @tcp_tso_acked(%struct.sock* %83, %struct.sk_buff* %84)
  store i32 %85, i32* %28, align 4
  %86 = load i32, i32* %28, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %277

89:                                               ; preds = %82
  store i32 0, i32* %17, align 4
  br label %93

90:                                               ; preds = %47
  %91 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %92 = call i32 @tcp_skb_pcount(%struct.sk_buff* %91)
  store i32 %92, i32* %28, align 4
  br label %93

93:                                               ; preds = %90, %89
  %94 = load i32, i32* %27, align 4
  %95 = load i32, i32* @TCPCB_RETRANS, align 4
  %96 = and i32 %94, %95
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load i32, i32* %27, align 4
  %101 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* %28, align 4
  %106 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %107 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %99
  %111 = load i32, i32* @FLAG_RETRANS_DATA_ACKED, align 4
  %112 = load i32, i32* %24, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %24, align 4
  br label %157

114:                                              ; preds = %93
  %115 = load i32, i32* %27, align 4
  %116 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %156, label %119

119:                                              ; preds = %114
  %120 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %121 = call i32 @tcp_skb_timestamp_us(%struct.sk_buff* %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @WARN_ON_ONCE(i32 %124)
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %119
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %128, %119
  %131 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %132 = call %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %22, align 4
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i64 @before(i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, i32* %26, align 4
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %140, %130
  %143 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %25, align 8
  %144 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %147 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @after(i32 %145, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %142
  %152 = load i32, i32* @FLAG_ORIG_SACK_ACKED, align 4
  %153 = load i32, i32* %24, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %24, align 4
  br label %155

155:                                              ; preds = %151, %142
  br label %156

156:                                              ; preds = %155, %114
  br label %157

157:                                              ; preds = %156, %110
  %158 = load i32, i32* %27, align 4
  %159 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i32, i32* %28, align 4
  %164 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %165 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %194

168:                                              ; preds = %157
  %169 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %170 = call i64 @tcp_is_sack(%struct.tcp_sock* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %193

172:                                              ; preds = %168
  %173 = load i32, i32* %28, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %176 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %181 = call i32 @tcp_skb_spurious_retrans(%struct.tcp_sock* %179, %struct.sk_buff* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %172
  %184 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %185 = load i32, i32* %27, align 4
  %186 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %25, align 8
  %187 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %190 = call i32 @tcp_skb_timestamp_us(%struct.sk_buff* %189)
  %191 = call i32 @tcp_rack_advance(%struct.tcp_sock* %184, i32 %185, i32 %188, i32 %190)
  br label %192

192:                                              ; preds = %183, %172
  br label %193

193:                                              ; preds = %192, %168
  br label %194

194:                                              ; preds = %193, %162
  %195 = load i32, i32* %27, align 4
  %196 = load i32, i32* @TCPCB_LOST, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load i32, i32* %28, align 4
  %201 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %202 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = sub nsw i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %199, %194
  %206 = load i32, i32* %28, align 4
  %207 = sext i32 %206 to i64
  %208 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %209 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %208, i32 0, i32 9
  %210 = load i64, i64* %209, align 8
  %211 = sub nsw i64 %210, %207
  store i64 %211, i64* %209, align 8
  %212 = load i32, i32* %28, align 4
  %213 = load i32, i32* %21, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %21, align 4
  %215 = load %struct.sock*, %struct.sock** %5, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %217 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %8, align 8
  %218 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %217, i32 0, i32 2
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = call i32 @tcp_rate_skb_delivered(%struct.sock* %215, %struct.sk_buff* %216, %struct.TYPE_11__* %219)
  %221 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %25, align 8
  %222 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @TCPHDR_SYN, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = call i64 @likely(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %205
  %232 = load i32, i32* @FLAG_DATA_ACKED, align 4
  %233 = load i32, i32* %24, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %24, align 4
  br label %241

235:                                              ; preds = %205
  %236 = load i32, i32* @FLAG_SYN_ACKED, align 4
  %237 = load i32, i32* %24, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %24, align 4
  %239 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %240 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %239, i32 0, i32 15
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %235, %231
  %242 = load i32, i32* %17, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  br label %277

245:                                              ; preds = %241
  %246 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %247 = call %struct.sk_buff* @skb_rb_next(%struct.sk_buff* %246)
  store %struct.sk_buff* %247, %struct.sk_buff** %16, align 8
  %248 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %249 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %250 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %249, i32 0, i32 14
  %251 = load %struct.sk_buff*, %struct.sk_buff** %250, align 8
  %252 = icmp eq %struct.sk_buff* %248, %251
  %253 = zext i1 %252 to i32
  %254 = call i64 @unlikely(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %245
  %257 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %258 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %257, i32 0, i32 14
  store %struct.sk_buff* null, %struct.sk_buff** %258, align 8
  br label %259

259:                                              ; preds = %256, %245
  %260 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %261 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %262 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %261, i32 0, i32 13
  %263 = load %struct.sk_buff*, %struct.sk_buff** %262, align 8
  %264 = icmp eq %struct.sk_buff* %260, %263
  %265 = zext i1 %264 to i32
  %266 = call i64 @unlikely(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %259
  %269 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %270 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %269, i32 0, i32 13
  store %struct.sk_buff* null, %struct.sk_buff** %270, align 8
  br label %271

271:                                              ; preds = %268, %259
  %272 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %273 = load %struct.sock*, %struct.sock** %5, align 8
  %274 = call i32 @tcp_rtx_queue_unlink_and_free(%struct.sk_buff* %272, %struct.sock* %273)
  br label %275

275:                                              ; preds = %271
  %276 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %276, %struct.sk_buff** %15, align 8
  br label %44

277:                                              ; preds = %244, %88, %81, %44
  %278 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %279 = icmp ne %struct.sk_buff* %278, null
  br i1 %279, label %284, label %280

280:                                              ; preds = %277
  %281 = load %struct.sock*, %struct.sock** %5, align 8
  %282 = load i32, i32* @TCP_CHRONO_BUSY, align 4
  %283 = call i32 @tcp_chrono_stop(%struct.sock* %281, i32 %282)
  br label %284

284:                                              ; preds = %280, %277
  %285 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %286 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %285, i32 0, i32 7
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %7, align 4
  %289 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %290 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @between(i32 %287, i32 %288, i32 %291)
  %293 = call i64 @likely(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %284
  %296 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %297 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %300 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %299, i32 0, i32 7
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %295, %284
  %302 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %303 = icmp ne %struct.sk_buff* %302, null
  br i1 %303, label %304, label %316

304:                                              ; preds = %301
  %305 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %306 = call %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff* %305)
  %307 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %304
  %313 = load i32, i32* @FLAG_SACK_RENEGING, align 4
  %314 = load i32, i32* %24, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %24, align 4
  br label %316

316:                                              ; preds = %312, %304, %301
  %317 = load i32, i32* %10, align 4
  %318 = call i64 @likely(i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %376

320:                                              ; preds = %316
  %321 = load i32, i32* %24, align 4
  %322 = load i32, i32* @FLAG_RETRANS_DATA_ACKED, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %376, label %325

325:                                              ; preds = %320
  %326 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %327 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %326, i32 0, i32 10
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* %10, align 4
  %330 = call i64 @tcp_stamp_us_delta(i32 %328, i32 %329)
  store i64 %330, i64* %19, align 8
  %331 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %332 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %331, i32 0, i32 10
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %11, align 4
  %335 = call i64 @tcp_stamp_us_delta(i32 %333, i32 %334)
  store i64 %335, i64* %20, align 8
  %336 = load i32, i32* %21, align 4
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %375

338:                                              ; preds = %325
  %339 = load i32, i32* %22, align 4
  %340 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %341 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 8
  %343 = icmp slt i32 %339, %342
  br i1 %343, label %344, label %375

344:                                              ; preds = %338
  %345 = load i32, i32* %22, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %375

347:                                              ; preds = %344
  %348 = load i32, i32* %13, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %375, label %350

350:                                              ; preds = %347
  %351 = load i32, i32* %17, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %375

353:                                              ; preds = %350
  %354 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %8, align 8
  %355 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %354, i32 0, i32 2
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = add nsw i64 %358, 1
  %360 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %361 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %360, i32 0, i32 5
  %362 = load i64, i64* %361, align 8
  %363 = icmp eq i64 %359, %362
  br i1 %363, label %364, label %375

364:                                              ; preds = %353
  %365 = load i32, i32* %24, align 4
  %366 = load i32, i32* @FLAG_CA_ALERT, align 4
  %367 = load i32, i32* @FLAG_SYN_ACKED, align 4
  %368 = or i32 %366, %367
  %369 = and i32 %365, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %375, label %371

371:                                              ; preds = %364
  %372 = load i32, i32* @FLAG_ACK_MAYBE_DELAYED, align 4
  %373 = load i32, i32* %24, align 4
  %374 = or i32 %373, %372
  store i32 %374, i32* %24, align 4
  br label %375

375:                                              ; preds = %371, %364, %353, %350, %347, %344, %338, %325
  br label %376

376:                                              ; preds = %375, %320, %316
  %377 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %8, align 8
  %378 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %396

381:                                              ; preds = %376
  %382 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %383 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %382, i32 0, i32 10
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %8, align 8
  %386 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = call i64 @tcp_stamp_us_delta(i32 %384, i32 %387)
  store i64 %388, i64* %18, align 8
  %389 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %390 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %389, i32 0, i32 10
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %8, align 8
  %393 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = call i64 @tcp_stamp_us_delta(i32 %391, i32 %394)
  store i64 %395, i64* %20, align 8
  br label %396

396:                                              ; preds = %381, %376
  %397 = load %struct.sock*, %struct.sock** %5, align 8
  %398 = load i32, i32* %24, align 4
  %399 = load i64, i64* %19, align 8
  %400 = load i64, i64* %18, align 8
  %401 = load i64, i64* %20, align 8
  %402 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %8, align 8
  %403 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %402, i32 0, i32 2
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** %403, align 8
  %405 = call i32 @tcp_ack_update_rtt(%struct.sock* %397, i32 %398, i64 %399, i64 %400, i64 %401, %struct.TYPE_11__* %404)
  store i32 %405, i32* %23, align 4
  %406 = load i32, i32* %24, align 4
  %407 = load i32, i32* @FLAG_ACKED, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %483

410:                                              ; preds = %396
  %411 = load i32, i32* @FLAG_SET_XMIT_TIMER, align 4
  %412 = load i32, i32* %24, align 4
  %413 = or i32 %412, %411
  store i32 %413, i32* %24, align 4
  %414 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %415 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %430

419:                                              ; preds = %410
  %420 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %421 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %420, i32 0, i32 12
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %425 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = call i64 @after(i32 %423, i32 %426)
  %428 = icmp ne i64 %427, 0
  %429 = xor i1 %428, true
  br label %430

430:                                              ; preds = %419, %410
  %431 = phi i1 [ false, %410 ], [ %429, %419 ]
  %432 = zext i1 %431 to i32
  %433 = call i64 @unlikely(i32 %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %430
  %436 = load %struct.sock*, %struct.sock** %5, align 8
  %437 = call i32 @tcp_mtup_probe_success(%struct.sock* %436)
  br label %438

438:                                              ; preds = %435, %430
  %439 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %440 = call i64 @tcp_is_reno(%struct.tcp_sock* %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %456

442:                                              ; preds = %438
  %443 = load %struct.sock*, %struct.sock** %5, align 8
  %444 = load i32, i32* %21, align 4
  %445 = call i32 @tcp_remove_reno_sacks(%struct.sock* %443, i32 %444)
  %446 = load i32, i32* %24, align 4
  %447 = load i32, i32* @FLAG_RETRANS_DATA_ACKED, align 4
  %448 = and i32 %446, %447
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %455

450:                                              ; preds = %442
  %451 = load i32, i32* @FLAG_ORIG_SACK_ACKED, align 4
  %452 = xor i32 %451, -1
  %453 = load i32, i32* %24, align 4
  %454 = and i32 %453, %452
  store i32 %454, i32* %24, align 4
  br label %455

455:                                              ; preds = %450, %442
  br label %482

456:                                              ; preds = %438
  %457 = load i32, i32* %14, align 4
  %458 = load i32, i32* %6, align 4
  %459 = call i64 @before(i32 %457, i32 %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %456
  %462 = load %struct.sock*, %struct.sock** %5, align 8
  %463 = load i32, i32* %14, align 4
  %464 = call i32 @tcp_check_sack_reordering(%struct.sock* %462, i32 %463, i32 0)
  br label %465

465:                                              ; preds = %461, %456
  %466 = load i32, i32* %13, align 4
  %467 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %468 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = sub nsw i32 %466, %469
  store i32 %470, i32* %29, align 4
  %471 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %472 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %471, i32 0, i32 11
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* %29, align 4
  %475 = call i64 @min(i32 %473, i32 %474)
  %476 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %477 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %476, i32 0, i32 11
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  %480 = sub nsw i64 %479, %475
  %481 = trunc i64 %480 to i32
  store i32 %481, i32* %477, align 4
  br label %482

482:                                              ; preds = %465, %455
  br label %506

483:                                              ; preds = %396
  %484 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %485 = icmp ne %struct.sk_buff* %484, null
  br i1 %485, label %486, label %505

486:                                              ; preds = %483
  %487 = load i32, i32* %23, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %505

489:                                              ; preds = %486
  %490 = load i64, i64* %18, align 8
  %491 = icmp sge i64 %490, 0
  br i1 %491, label %492, label %505

492:                                              ; preds = %489
  %493 = load i64, i64* %18, align 8
  %494 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %495 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %494, i32 0, i32 10
  %496 = load i32, i32* %495, align 8
  %497 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %498 = call i32 @tcp_skb_timestamp_us(%struct.sk_buff* %497)
  %499 = call i64 @tcp_stamp_us_delta(i32 %496, i32 %498)
  %500 = icmp sgt i64 %493, %499
  br i1 %500, label %501, label %505

501:                                              ; preds = %492
  %502 = load i32, i32* @FLAG_SET_XMIT_TIMER, align 4
  %503 = load i32, i32* %24, align 4
  %504 = or i32 %503, %502
  store i32 %504, i32* %24, align 4
  br label %505

505:                                              ; preds = %501, %492, %489, %486, %483
  br label %506

506:                                              ; preds = %505, %482
  %507 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %508 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %507, i32 0, i32 1
  %509 = load %struct.TYPE_9__*, %struct.TYPE_9__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %509, i32 0, i32 0
  %511 = load i32 (%struct.sock*, %struct.ack_sample*)*, i32 (%struct.sock*, %struct.ack_sample*)** %510, align 8
  %512 = icmp ne i32 (%struct.sock*, %struct.ack_sample*)* %511, null
  br i1 %512, label %513, label %531

513:                                              ; preds = %506
  %514 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %30, i32 0, i32 0
  %515 = load i32, i32* %21, align 4
  store i32 %515, i32* %514, align 4
  %516 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %30, i32 0, i32 1
  %517 = load i32, i32* %22, align 4
  store i32 %517, i32* %516, align 4
  %518 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %30, i32 0, i32 2
  %519 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %8, align 8
  %520 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %519, i32 0, i32 2
  %521 = load %struct.TYPE_11__*, %struct.TYPE_11__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 8
  store i32 %523, i32* %518, align 4
  %524 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %525 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %524, i32 0, i32 1
  %526 = load %struct.TYPE_9__*, %struct.TYPE_9__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %526, i32 0, i32 0
  %528 = load i32 (%struct.sock*, %struct.ack_sample*)*, i32 (%struct.sock*, %struct.ack_sample*)** %527, align 8
  %529 = load %struct.sock*, %struct.sock** %5, align 8
  %530 = call i32 %528(%struct.sock* %529, %struct.ack_sample* %30)
  br label %531

531:                                              ; preds = %513, %506
  %532 = load i32, i32* %24, align 4
  ret i32 %532
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_rb_first(i32*) #1

declare dso_local %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_ack_tstamp(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @tcp_tso_acked(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_skb_timestamp_us(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i64 @tcp_is_sack(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_skb_spurious_retrans(%struct.tcp_sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_rack_advance(%struct.tcp_sock*, i32, i32, i32) #1

declare dso_local i32 @tcp_rate_skb_delivered(%struct.sock*, %struct.sk_buff*, %struct.TYPE_11__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sk_buff* @skb_rb_next(%struct.sk_buff*) #1

declare dso_local i32 @tcp_rtx_queue_unlink_and_free(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @tcp_chrono_stop(%struct.sock*, i32) #1

declare dso_local i32 @between(i32, i32, i32) #1

declare dso_local i64 @tcp_stamp_us_delta(i32, i32) #1

declare dso_local i32 @tcp_ack_update_rtt(%struct.sock*, i32, i64, i64, i64, %struct.TYPE_11__*) #1

declare dso_local i32 @tcp_mtup_probe_success(%struct.sock*) #1

declare dso_local i64 @tcp_is_reno(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_remove_reno_sacks(%struct.sock*, i32) #1

declare dso_local i32 @tcp_check_sack_reordering(%struct.sock*, i32, i32) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
