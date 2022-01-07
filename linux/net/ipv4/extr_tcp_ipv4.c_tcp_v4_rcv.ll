; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32*, i64 }
%struct.net = type { i32 }
%struct.iphdr = type { i64, i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }
%struct.sock = type { i64, %struct.sk_buff* }
%struct.request_sock = type { %struct.sock* }
%struct.TYPE_2__ = type { i64 }

@PACKET_HOST = common dso_local global i64 0, align 8
@TCP_MIB_INSEGS = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@inet_compute_pseudo = common dso_local global i32 0, align 4
@tcp_hashinfo = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@TCP_NEW_SYN_RECV = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@LINUX_MIB_TCPMINTTLDROP = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@TCP_MIB_CSUMERRORS = common dso_local global i32 0, align 4
@TCP_MIB_INERRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_v4_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.request_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call %struct.net* @dev_net(i32* %18)
  store %struct.net* %19, %struct.net** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @inet_sdif(%struct.sk_buff* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PACKET_HOST, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %329

28:                                               ; preds = %1
  %29 = load %struct.net*, %struct.net** %4, align 8
  %30 = load i32, i32* @TCP_MIB_INSEGS, align 4
  %31 = call i32 @__TCP_INC_STATS(%struct.net* %29, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i32 @pskb_may_pull(%struct.sk_buff* %32, i32 12)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %329

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.tcphdr*
  store %struct.tcphdr* %40, %struct.tcphdr** %8, align 8
  %41 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 3
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %321

50:                                               ; preds = %36
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %53 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 4
  %56 = call i32 @pskb_may_pull(%struct.sk_buff* %51, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %329

59:                                               ; preds = %50
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = load i32, i32* @IPPROTO_TCP, align 4
  %62 = load i32, i32* @inet_compute_pseudo, align 4
  %63 = call i64 @skb_checksum_init(%struct.sk_buff* %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %317

66:                                               ; preds = %59
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.tcphdr*
  store %struct.tcphdr* %70, %struct.tcphdr** %8, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %71)
  store %struct.iphdr* %72, %struct.iphdr** %7, align 8
  br label %73

73:                                               ; preds = %169, %135, %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %76 = call i32 @__tcp_hdrlen(%struct.tcphdr* %75)
  %77 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %78 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %81 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call %struct.sock* @__inet_lookup_skb(i32* @tcp_hashinfo, %struct.sk_buff* %74, i32 %76, i32 %79, i32 %82, i32 %83, i32* %9)
  store %struct.sock* %84, %struct.sock** %10, align 8
  %85 = load %struct.sock*, %struct.sock** %10, align 8
  %86 = icmp ne %struct.sock* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %73
  br label %302

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %395, %88
  %90 = load %struct.sock*, %struct.sock** %10, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TCP_TIME_WAIT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %342

96:                                               ; preds = %89
  %97 = load %struct.sock*, %struct.sock** %10, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TCP_NEW_SYN_RECV, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %198

102:                                              ; preds = %96
  %103 = load %struct.sock*, %struct.sock** %10, align 8
  %104 = call %struct.request_sock* @inet_reqsk(%struct.sock* %103)
  store %struct.request_sock* %104, %struct.request_sock** %12, align 8
  store i32 0, i32* %13, align 4
  %105 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %106 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %105, i32 0, i32 0
  %107 = load %struct.sock*, %struct.sock** %106, align 8
  store %struct.sock* %107, %struct.sock** %10, align 8
  %108 = load %struct.sock*, %struct.sock** %10, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %110 = call i32 @tcp_v4_inbound_md5_hash(%struct.sock* %108, %struct.sk_buff* %109)
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %102
  %114 = load %struct.sock*, %struct.sock** %10, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %116 = call i32 @sk_drops_add(%struct.sock* %114, %struct.sk_buff* %115)
  %117 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %118 = call i32 @reqsk_put(%struct.request_sock* %117)
  br label %329

119:                                              ; preds = %102
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %121 = call i64 @tcp_checksum_complete(%struct.sk_buff* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %125 = call i32 @reqsk_put(%struct.request_sock* %124)
  br label %317

126:                                              ; preds = %119
  %127 = load %struct.sock*, %struct.sock** %10, align 8
  %128 = getelementptr inbounds %struct.sock, %struct.sock* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TCP_LISTEN, align 8
  %131 = icmp ne i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load %struct.sock*, %struct.sock** %10, align 8
  %137 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %138 = call i32 @inet_csk_reqsk_queue_drop_and_put(%struct.sock* %136, %struct.request_sock* %137)
  br label %73

139:                                              ; preds = %126
  %140 = load %struct.sock*, %struct.sock** %10, align 8
  %141 = call i32 @sock_hold(%struct.sock* %140)
  store i32 1, i32* %9, align 4
  store %struct.sock* null, %struct.sock** %14, align 8
  %142 = load %struct.sock*, %struct.sock** %10, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %144 = call i64 @tcp_filter(%struct.sock* %142, %struct.sk_buff* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %161, label %146

146:                                              ; preds = %139
  %147 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to %struct.tcphdr*
  store %struct.tcphdr* %150, %struct.tcphdr** %8, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %152 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %151)
  store %struct.iphdr* %152, %struct.iphdr** %7, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %154 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %155 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %156 = call i32 @tcp_v4_fill_cb(%struct.sk_buff* %153, %struct.iphdr* %154, %struct.tcphdr* %155)
  %157 = load %struct.sock*, %struct.sock** %10, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %159 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %160 = call %struct.sock* @tcp_check_req(%struct.sock* %157, %struct.sk_buff* %158, %struct.request_sock* %159, i32 0, i32* %13)
  store %struct.sock* %160, %struct.sock** %14, align 8
  br label %161

161:                                              ; preds = %146, %139
  %162 = load %struct.sock*, %struct.sock** %14, align 8
  %163 = icmp ne %struct.sock* %162, null
  br i1 %163, label %175, label %164

164:                                              ; preds = %161
  %165 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %166 = call i32 @reqsk_put(%struct.request_sock* %165)
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %171 = call i32 @tcp_v4_restore_cb(%struct.sk_buff* %170)
  %172 = load %struct.sock*, %struct.sock** %10, align 8
  %173 = call i32 @sock_put(%struct.sock* %172)
  br label %73

174:                                              ; preds = %164
  br label %332

175:                                              ; preds = %161
  %176 = load %struct.sock*, %struct.sock** %14, align 8
  %177 = load %struct.sock*, %struct.sock** %10, align 8
  %178 = icmp eq %struct.sock* %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %181 = call i32 @reqsk_put(%struct.request_sock* %180)
  %182 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %183 = call i32 @tcp_v4_restore_cb(%struct.sk_buff* %182)
  br label %197

184:                                              ; preds = %175
  %185 = load %struct.sock*, %struct.sock** %10, align 8
  %186 = load %struct.sock*, %struct.sock** %14, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %188 = call i64 @tcp_child_process(%struct.sock* %185, %struct.sock* %186, %struct.sk_buff* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load %struct.sock*, %struct.sock** %14, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %193 = call i32 @tcp_v4_send_reset(%struct.sock* %191, %struct.sk_buff* %192)
  br label %332

194:                                              ; preds = %184
  %195 = load %struct.sock*, %struct.sock** %10, align 8
  %196 = call i32 @sock_put(%struct.sock* %195)
  store i32 0, i32* %2, align 4
  br label %416

197:                                              ; preds = %179
  br label %198

198:                                              ; preds = %197, %96
  %199 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %200 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.sock*, %struct.sock** %10, align 8
  %203 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %202)
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp slt i64 %201, %205
  %207 = zext i1 %206 to i32
  %208 = call i64 @unlikely(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %198
  %211 = load %struct.net*, %struct.net** %4, align 8
  %212 = load i32, i32* @LINUX_MIB_TCPMINTTLDROP, align 4
  %213 = call i32 @__NET_INC_STATS(%struct.net* %211, i32 %212)
  br label %332

214:                                              ; preds = %198
  %215 = load %struct.sock*, %struct.sock** %10, align 8
  %216 = load i32, i32* @XFRM_POLICY_IN, align 4
  %217 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %218 = call i32 @xfrm4_policy_check(%struct.sock* %215, i32 %216, %struct.sk_buff* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %214
  br label %332

221:                                              ; preds = %214
  %222 = load %struct.sock*, %struct.sock** %10, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %224 = call i32 @tcp_v4_inbound_md5_hash(%struct.sock* %222, %struct.sk_buff* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %332

227:                                              ; preds = %221
  %228 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %229 = call i32 @nf_reset_ct(%struct.sk_buff* %228)
  %230 = load %struct.sock*, %struct.sock** %10, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %232 = call i64 @tcp_filter(%struct.sock* %230, %struct.sk_buff* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  br label %332

235:                                              ; preds = %227
  %236 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to %struct.tcphdr*
  store %struct.tcphdr* %239, %struct.tcphdr** %8, align 8
  %240 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %241 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %240)
  store %struct.iphdr* %241, %struct.iphdr** %7, align 8
  %242 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %243 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %244 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %245 = call i32 @tcp_v4_fill_cb(%struct.sk_buff* %242, %struct.iphdr* %243, %struct.tcphdr* %244)
  %246 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %247 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %246, i32 0, i32 1
  store i32* null, i32** %247, align 8
  %248 = load %struct.sock*, %struct.sock** %10, align 8
  %249 = getelementptr inbounds %struct.sock, %struct.sock* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @TCP_LISTEN, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %235
  %254 = load %struct.sock*, %struct.sock** %10, align 8
  %255 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %256 = call i32 @tcp_v4_do_rcv(%struct.sock* %254, %struct.sk_buff* %255)
  store i32 %256, i32* %11, align 4
  br label %294

257:                                              ; preds = %235
  %258 = load %struct.sock*, %struct.sock** %10, align 8
  %259 = call i32 @sk_incoming_cpu_update(%struct.sock* %258)
  %260 = load %struct.sock*, %struct.sock** %10, align 8
  %261 = call i32 @bh_lock_sock_nested(%struct.sock* %260)
  %262 = load %struct.sock*, %struct.sock** %10, align 8
  %263 = call i32 @tcp_sk(%struct.sock* %262)
  %264 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %265 = call i32 @tcp_segs_in(i32 %263, %struct.sk_buff* %264)
  store i32 0, i32* %11, align 4
  %266 = load %struct.sock*, %struct.sock** %10, align 8
  %267 = call i32 @sock_owned_by_user(%struct.sock* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %278, label %269

269:                                              ; preds = %257
  %270 = load %struct.sock*, %struct.sock** %10, align 8
  %271 = getelementptr inbounds %struct.sock, %struct.sock* %270, i32 0, i32 1
  %272 = load %struct.sk_buff*, %struct.sk_buff** %271, align 8
  store %struct.sk_buff* %272, %struct.sk_buff** %5, align 8
  %273 = load %struct.sock*, %struct.sock** %10, align 8
  %274 = getelementptr inbounds %struct.sock, %struct.sock* %273, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %274, align 8
  %275 = load %struct.sock*, %struct.sock** %10, align 8
  %276 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %277 = call i32 @tcp_v4_do_rcv(%struct.sock* %275, %struct.sk_buff* %276)
  store i32 %277, i32* %11, align 4
  br label %285

278:                                              ; preds = %257
  %279 = load %struct.sock*, %struct.sock** %10, align 8
  %280 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %281 = call i64 @tcp_add_backlog(%struct.sock* %279, %struct.sk_buff* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  br label %332

284:                                              ; preds = %278
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %285

285:                                              ; preds = %284, %269
  %286 = load %struct.sock*, %struct.sock** %10, align 8
  %287 = call i32 @bh_unlock_sock(%struct.sock* %286)
  %288 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %289 = icmp ne %struct.sk_buff* %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %285
  %291 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %292 = call i32 @__kfree_skb(%struct.sk_buff* %291)
  br label %293

293:                                              ; preds = %290, %285
  br label %294

294:                                              ; preds = %293, %253
  %295 = load i32, i32* %9, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load %struct.sock*, %struct.sock** %10, align 8
  %299 = call i32 @sock_put(%struct.sock* %298)
  br label %300

300:                                              ; preds = %297, %294
  %301 = load i32, i32* %11, align 4
  store i32 %301, i32* %2, align 4
  br label %416

302:                                              ; preds = %87
  %303 = load i32, i32* @XFRM_POLICY_IN, align 4
  %304 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %305 = call i32 @xfrm4_policy_check(%struct.sock* null, i32 %303, %struct.sk_buff* %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %302
  br label %329

308:                                              ; preds = %302
  %309 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %310 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %311 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %312 = call i32 @tcp_v4_fill_cb(%struct.sk_buff* %309, %struct.iphdr* %310, %struct.tcphdr* %311)
  %313 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %314 = call i64 @tcp_checksum_complete(%struct.sk_buff* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %308
  br label %317

317:                                              ; preds = %359, %316, %123, %65
  %318 = load %struct.net*, %struct.net** %4, align 8
  %319 = load i32, i32* @TCP_MIB_CSUMERRORS, align 4
  %320 = call i32 @__TCP_INC_STATS(%struct.net* %318, i32 %319)
  br label %321

321:                                              ; preds = %317, %49
  %322 = load %struct.net*, %struct.net** %4, align 8
  %323 = load i32, i32* @TCP_MIB_INERRS, align 4
  %324 = call i32 @__TCP_INC_STATS(%struct.net* %322, i32 %323)
  br label %328

325:                                              ; preds = %308
  %326 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %327 = call i32 @tcp_v4_send_reset(%struct.sock* null, %struct.sk_buff* %326)
  br label %328

328:                                              ; preds = %325, %321
  br label %329

329:                                              ; preds = %415, %407, %347, %341, %328, %307, %113, %58, %35, %27
  %330 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %331 = call i32 @kfree_skb(%struct.sk_buff* %330)
  store i32 0, i32* %2, align 4
  br label %416

332:                                              ; preds = %283, %234, %226, %220, %210, %190, %174
  %333 = load %struct.sock*, %struct.sock** %10, align 8
  %334 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %335 = call i32 @sk_drops_add(%struct.sock* %333, %struct.sk_buff* %334)
  %336 = load i32, i32* %9, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %332
  %339 = load %struct.sock*, %struct.sock** %10, align 8
  %340 = call i32 @sock_put(%struct.sock* %339)
  br label %341

341:                                              ; preds = %338, %332
  br label %329

342:                                              ; preds = %95
  %343 = load i32, i32* @XFRM_POLICY_IN, align 4
  %344 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %345 = call i32 @xfrm4_policy_check(%struct.sock* null, i32 %343, %struct.sk_buff* %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %351, label %347

347:                                              ; preds = %342
  %348 = load %struct.sock*, %struct.sock** %10, align 8
  %349 = call i32 @inet_twsk(%struct.sock* %348)
  %350 = call i32 @inet_twsk_put(i32 %349)
  br label %329

351:                                              ; preds = %342
  %352 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %353 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %354 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %355 = call i32 @tcp_v4_fill_cb(%struct.sk_buff* %352, %struct.iphdr* %353, %struct.tcphdr* %354)
  %356 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %357 = call i64 @tcp_checksum_complete(%struct.sk_buff* %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %351
  %360 = load %struct.sock*, %struct.sock** %10, align 8
  %361 = call i32 @inet_twsk(%struct.sock* %360)
  %362 = call i32 @inet_twsk_put(i32 %361)
  br label %317

363:                                              ; preds = %351
  %364 = load %struct.sock*, %struct.sock** %10, align 8
  %365 = call i32 @inet_twsk(%struct.sock* %364)
  %366 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %367 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %368 = call i32 @tcp_timewait_state_process(i32 %365, %struct.sk_buff* %366, %struct.tcphdr* %367)
  switch i32 %368, label %415 [
    i32 128, label %369
    i32 131, label %403
    i32 130, label %407
    i32 129, label %414
  ]

369:                                              ; preds = %363
  %370 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %371 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = call %struct.net* @dev_net(i32* %372)
  %374 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %375 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %376 = call i32 @__tcp_hdrlen(%struct.tcphdr* %375)
  %377 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %378 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %381 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %384 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %387 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %390 = call i32 @inet_iif(%struct.sk_buff* %389)
  %391 = load i32, i32* %6, align 4
  %392 = call %struct.sock* @inet_lookup_listener(%struct.net* %373, i32* @tcp_hashinfo, %struct.sk_buff* %374, i32 %376, i32 %379, i32 %382, i32 %385, i32 %388, i32 %390, i32 %391)
  store %struct.sock* %392, %struct.sock** %15, align 8
  %393 = load %struct.sock*, %struct.sock** %15, align 8
  %394 = icmp ne %struct.sock* %393, null
  br i1 %394, label %395, label %402

395:                                              ; preds = %369
  %396 = load %struct.sock*, %struct.sock** %10, align 8
  %397 = call i32 @inet_twsk(%struct.sock* %396)
  %398 = call i32 @inet_twsk_deschedule_put(i32 %397)
  %399 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %399, %struct.sock** %10, align 8
  %400 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %401 = call i32 @tcp_v4_restore_cb(%struct.sk_buff* %400)
  store i32 0, i32* %9, align 4
  br label %89

402:                                              ; preds = %369
  br label %403

403:                                              ; preds = %363, %402
  %404 = load %struct.sock*, %struct.sock** %10, align 8
  %405 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %406 = call i32 @tcp_v4_timewait_ack(%struct.sock* %404, %struct.sk_buff* %405)
  br label %415

407:                                              ; preds = %363
  %408 = load %struct.sock*, %struct.sock** %10, align 8
  %409 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %410 = call i32 @tcp_v4_send_reset(%struct.sock* %408, %struct.sk_buff* %409)
  %411 = load %struct.sock*, %struct.sock** %10, align 8
  %412 = call i32 @inet_twsk(%struct.sock* %411)
  %413 = call i32 @inet_twsk_deschedule_put(i32 %412)
  br label %329

414:                                              ; preds = %363
  br label %415

415:                                              ; preds = %414, %363, %403
  br label %329

416:                                              ; preds = %329, %300, %194
  %417 = load i32, i32* %2, align 4
  ret i32 %417
}

declare dso_local %struct.net* @dev_net(i32*) #1

declare dso_local i32 @inet_sdif(%struct.sk_buff*) #1

declare dso_local i32 @__TCP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_checksum_init(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sock* @__inet_lookup_skb(i32*, %struct.sk_buff*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @__tcp_hdrlen(%struct.tcphdr*) #1

declare dso_local %struct.request_sock* @inet_reqsk(%struct.sock*) #1

declare dso_local i32 @tcp_v4_inbound_md5_hash(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_drops_add(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

declare dso_local i64 @tcp_checksum_complete(%struct.sk_buff*) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop_and_put(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i64 @tcp_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_v4_fill_cb(%struct.sk_buff*, %struct.iphdr*, %struct.tcphdr*) #1

declare dso_local %struct.sock* @tcp_check_req(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32, i32*) #1

declare dso_local i32 @tcp_v4_restore_cb(%struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i64 @tcp_child_process(%struct.sock*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_v4_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @__NET_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @xfrm4_policy_check(%struct.sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @tcp_v4_do_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_incoming_cpu_update(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock_nested(%struct.sock*) #1

declare dso_local i32 @tcp_segs_in(i32, %struct.sk_buff*) #1

declare dso_local i32 @tcp_sk(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i64 @tcp_add_backlog(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local i32 @tcp_timewait_state_process(i32, %struct.sk_buff*, %struct.tcphdr*) #1

declare dso_local %struct.sock* @inet_lookup_listener(%struct.net*, i32*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local i32 @inet_twsk_deschedule_put(i32) #1

declare dso_local i32 @tcp_v4_timewait_ack(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
