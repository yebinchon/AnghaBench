; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.iphdr = type { i32, i64, i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }
%struct.inet_connection_sock = type { i64, i32, i32 }
%struct.tcp_sock = type { i64, i32, i32, i32, i32, i32 }
%struct.inet_sock = type { i64, i64 }
%struct.sock = type { i32, i32, i32, i32 (%struct.sock*)*, i32 }
%struct.request_sock = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@tcp_hashinfo = common dso_local global i32 0, align 4
@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i32 0, align 4
@TCP_NEW_SYN_RECV = common dso_local global i32 0, align 4
@ICMP_NET_UNREACH = common dso_local global i32 0, align 4
@ICMP_HOST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@LINUX_MIB_LOCKDROPPEDICMPS = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@LINUX_MIB_TCPMINTTLDROP = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@LINUX_MIB_OUTOFWINDOWICMPS = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NR_ICMP_UNREACH = common dso_local global i32 0, align 4
@TCP_MTU_REDUCED_DEFERRED = common dso_local global i32 0, align 4
@icmp_err_convert = common dso_local global %struct.TYPE_6__* null, align 8
@TCP_TIMEOUT_INIT = common dso_local global i64 0, align 8
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@ICSK_TIME_RETRANS = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_v4_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.inet_connection_sock*, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca %struct.inet_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sock*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.request_sock*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.iphdr*
  store %struct.iphdr* %25, %struct.iphdr** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %28, %33
  %35 = inttoptr i64 %34 to %struct.tcphdr*
  store %struct.tcphdr* %35, %struct.tcphdr** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call %struct.TYPE_5__* @icmp_hdr(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.TYPE_5__* @icmp_hdr(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.net* @dev_net(i32 %46)
  store %struct.net* %47, %struct.net** %21, align 8
  %48 = load %struct.net*, %struct.net** %21, align 8
  %49 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %53 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %59 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntohs(i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @inet_iif(%struct.sk_buff* %62)
  %64 = call %struct.sock* @__inet_lookup_established(%struct.net* %48, i32* @tcp_hashinfo, i32 %51, i32 %54, i32 %57, i32 %61, i32 %63, i32 0)
  store %struct.sock* %64, %struct.sock** %13, align 8
  %65 = load %struct.sock*, %struct.sock** %13, align 8
  %66 = icmp ne %struct.sock* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %2
  %68 = load %struct.net*, %struct.net** %21, align 8
  %69 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %70 = call i32 @__ICMP_INC_STATS(%struct.net* %68, i32 %69)
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %417

73:                                               ; preds = %2
  %74 = load %struct.sock*, %struct.sock** %13, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TCP_TIME_WAIT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.sock*, %struct.sock** %13, align 8
  %81 = call i32 @inet_twsk(%struct.sock* %80)
  %82 = call i32 @inet_twsk_put(i32 %81)
  store i32 0, i32* %3, align 4
  br label %417

83:                                               ; preds = %73
  %84 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %85 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ntohl(i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load %struct.sock*, %struct.sock** %13, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @TCP_NEW_SYN_RECV, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %83
  %94 = load %struct.sock*, %struct.sock** %13, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 133
  br i1 %97, label %116, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 130
  br i1 %100, label %116, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, 134
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @ICMP_NET_UNREACH, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @ICMP_HOST_UNREACH, align 4
  %111 = icmp eq i32 %109, %110
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i1 [ true, %104 ], [ %111, %108 ]
  br label %114

114:                                              ; preds = %112, %101
  %115 = phi i1 [ false, %101 ], [ %113, %112 ]
  br label %116

116:                                              ; preds = %114, %98, %93
  %117 = phi i1 [ true, %98 ], [ true, %93 ], [ %115, %114 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @tcp_req_err(%struct.sock* %94, i32 %95, i32 %118)
  store i32 0, i32* %3, align 4
  br label %417

120:                                              ; preds = %83
  %121 = load %struct.sock*, %struct.sock** %13, align 8
  %122 = call i32 @bh_lock_sock(%struct.sock* %121)
  %123 = load %struct.sock*, %struct.sock** %13, align 8
  %124 = call i64 @sock_owned_by_user(%struct.sock* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %120
  %127 = load i32, i32* %11, align 4
  %128 = icmp eq i32 %127, 134
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129, %126
  %134 = load %struct.net*, %struct.net** %21, align 8
  %135 = load i32, i32* @LINUX_MIB_LOCKDROPPEDICMPS, align 4
  %136 = call i32 @__NET_INC_STATS(%struct.net* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %120
  %139 = load %struct.sock*, %struct.sock** %13, align 8
  %140 = getelementptr inbounds %struct.sock, %struct.sock* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @TCP_CLOSE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %412

145:                                              ; preds = %138
  %146 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %147 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.sock*, %struct.sock** %13, align 8
  %150 = call %struct.inet_sock* @inet_sk(%struct.sock* %149)
  %151 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %148, %152
  %154 = zext i1 %153 to i32
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %145
  %158 = load %struct.net*, %struct.net** %21, align 8
  %159 = load i32, i32* @LINUX_MIB_TCPMINTTLDROP, align 4
  %160 = call i32 @__NET_INC_STATS(%struct.net* %158, i32 %159)
  br label %412

161:                                              ; preds = %145
  %162 = load %struct.sock*, %struct.sock** %13, align 8
  %163 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %162)
  store %struct.inet_connection_sock* %163, %struct.inet_connection_sock** %8, align 8
  %164 = load %struct.sock*, %struct.sock** %13, align 8
  %165 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %164)
  store %struct.tcp_sock* %165, %struct.tcp_sock** %9, align 8
  %166 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %167 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = call %struct.request_sock* @rcu_dereference(i32 %168)
  store %struct.request_sock* %169, %struct.request_sock** %15, align 8
  %170 = load %struct.request_sock*, %struct.request_sock** %15, align 8
  %171 = icmp ne %struct.request_sock* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %161
  %173 = load %struct.request_sock*, %struct.request_sock** %15, align 8
  %174 = call %struct.TYPE_4__* @tcp_rsk(%struct.request_sock* %173)
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  br label %181

177:                                              ; preds = %161
  %178 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %179 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  br label %181

181:                                              ; preds = %177, %172
  %182 = phi i32 [ %176, %172 ], [ %180, %177 ]
  store i32 %182, i32* %17, align 4
  %183 = load %struct.sock*, %struct.sock** %13, align 8
  %184 = getelementptr inbounds %struct.sock, %struct.sock* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @TCP_LISTEN, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %181
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %17, align 4
  %191 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %192 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @between(i32 %189, i32 %190, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %188
  %197 = load %struct.net*, %struct.net** %21, align 8
  %198 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %199 = call i32 @__NET_INC_STATS(%struct.net* %197, i32 %198)
  br label %412

200:                                              ; preds = %188, %181
  %201 = load i32, i32* %11, align 4
  switch i32 %201, label %353 [
    i32 132, label %202
    i32 131, label %211
    i32 133, label %212
    i32 134, label %214
    i32 130, label %351
  ]

202:                                              ; preds = %200
  %203 = load %struct.sock*, %struct.sock** %13, align 8
  %204 = call i64 @sock_owned_by_user(%struct.sock* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %208 = load %struct.sock*, %struct.sock** %13, align 8
  %209 = call i32 @do_redirect(%struct.sk_buff* %207, %struct.sock* %208)
  br label %210

210:                                              ; preds = %206, %202
  br label %412

211:                                              ; preds = %200
  br label %412

212:                                              ; preds = %200
  %213 = load i32, i32* @EPROTO, align 4
  store i32 %213, i32* %20, align 4
  br label %354

214:                                              ; preds = %200
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @NR_ICMP_UNREACH, align 4
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  br label %412

219:                                              ; preds = %214
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %251

223:                                              ; preds = %219
  %224 = load %struct.sock*, %struct.sock** %13, align 8
  %225 = getelementptr inbounds %struct.sock, %struct.sock* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @TCP_LISTEN, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %412

230:                                              ; preds = %223
  %231 = load i32, i32* %5, align 4
  %232 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %233 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 8
  %234 = load %struct.sock*, %struct.sock** %13, align 8
  %235 = call i64 @sock_owned_by_user(%struct.sock* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %230
  %238 = load %struct.sock*, %struct.sock** %13, align 8
  %239 = call i32 @tcp_v4_mtu_reduced(%struct.sock* %238)
  br label %250

240:                                              ; preds = %230
  %241 = load i32, i32* @TCP_MTU_REDUCED_DEFERRED, align 4
  %242 = load %struct.sock*, %struct.sock** %13, align 8
  %243 = getelementptr inbounds %struct.sock, %struct.sock* %242, i32 0, i32 4
  %244 = call i32 @test_and_set_bit(i32 %241, i32* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %240
  %247 = load %struct.sock*, %struct.sock** %13, align 8
  %248 = call i32 @sock_hold(%struct.sock* %247)
  br label %249

249:                                              ; preds = %246, %240
  br label %250

250:                                              ; preds = %249, %237
  br label %412

251:                                              ; preds = %219
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** @icmp_err_convert, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %20, align 4
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* @ICMP_NET_UNREACH, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %251
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* @ICMP_HOST_UNREACH, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %354

266:                                              ; preds = %261, %251
  %267 = load i32, i32* %16, align 4
  %268 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %269 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %267, %270
  br i1 %271, label %285, label %272

272:                                              ; preds = %266
  %273 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %274 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %272
  %278 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %279 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %277
  %283 = load %struct.request_sock*, %struct.request_sock** %15, align 8
  %284 = icmp ne %struct.request_sock* %283, null
  br i1 %284, label %285, label %286

285:                                              ; preds = %282, %277, %272, %266
  br label %354

286:                                              ; preds = %282
  %287 = load %struct.sock*, %struct.sock** %13, align 8
  %288 = call i64 @sock_owned_by_user(%struct.sock* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  br label %354

291:                                              ; preds = %286
  %292 = load %struct.sock*, %struct.sock** %13, align 8
  %293 = call %struct.sk_buff* @tcp_rtx_queue_head(%struct.sock* %292)
  store %struct.sk_buff* %293, %struct.sk_buff** %14, align 8
  %294 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %295 = icmp ne %struct.sk_buff* %294, null
  %296 = xor i1 %295, true
  %297 = zext i1 %296 to i32
  %298 = call i32 @WARN_ON_ONCE(i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %291
  br label %354

301:                                              ; preds = %291
  %302 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %303 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = add nsw i32 %304, -1
  store i32 %305, i32* %303, align 8
  %306 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %307 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %301
  %311 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %312 = call i64 @__tcp_set_rto(%struct.tcp_sock* %311)
  br label %315

313:                                              ; preds = %301
  %314 = load i64, i64* @TCP_TIMEOUT_INIT, align 8
  br label %315

315:                                              ; preds = %313, %310
  %316 = phi i64 [ %312, %310 ], [ %314, %313 ]
  %317 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %318 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %317, i32 0, i32 0
  store i64 %316, i64* %318, align 8
  %319 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %320 = load i32, i32* @TCP_RTO_MAX, align 4
  %321 = call i64 @inet_csk_rto_backoff(%struct.inet_connection_sock* %319, i32 %320)
  %322 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %323 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %322, i32 0, i32 0
  store i64 %321, i64* %323, align 8
  %324 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %325 = call i32 @tcp_mstamp_refresh(%struct.tcp_sock* %324)
  %326 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %327 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %330 = call i64 @tcp_skb_timestamp_us(%struct.sk_buff* %329)
  %331 = sub nsw i64 %328, %330
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %19, align 4
  %333 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %334 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i32, i32* %19, align 4
  %337 = call i64 @usecs_to_jiffies(i32 %336)
  %338 = sub nsw i64 %335, %337
  store i64 %338, i64* %18, align 8
  %339 = load i64, i64* %18, align 8
  %340 = icmp sgt i64 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %315
  %342 = load %struct.sock*, %struct.sock** %13, align 8
  %343 = load i32, i32* @ICSK_TIME_RETRANS, align 4
  %344 = load i64, i64* %18, align 8
  %345 = load i32, i32* @TCP_RTO_MAX, align 4
  %346 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %342, i32 %343, i64 %344, i32 %345)
  br label %350

347:                                              ; preds = %315
  %348 = load %struct.sock*, %struct.sock** %13, align 8
  %349 = call i32 @tcp_retransmit_timer(%struct.sock* %348)
  br label %350

350:                                              ; preds = %347, %341
  br label %354

351:                                              ; preds = %200
  %352 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %352, i32* %20, align 4
  br label %354

353:                                              ; preds = %200
  br label %412

354:                                              ; preds = %351, %350, %300, %290, %285, %265, %212
  %355 = load %struct.sock*, %struct.sock** %13, align 8
  %356 = getelementptr inbounds %struct.sock, %struct.sock* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  switch i32 %357, label %387 [
    i32 128, label %358
    i32 129, label %358
  ]

358:                                              ; preds = %354, %354
  %359 = load %struct.request_sock*, %struct.request_sock** %15, align 8
  %360 = icmp ne %struct.request_sock* %359, null
  br i1 %360, label %361, label %367

361:                                              ; preds = %358
  %362 = load %struct.request_sock*, %struct.request_sock** %15, align 8
  %363 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %367, label %366

366:                                              ; preds = %361
  br label %387

367:                                              ; preds = %361, %358
  %368 = load %struct.sock*, %struct.sock** %13, align 8
  %369 = call i64 @sock_owned_by_user(%struct.sock* %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %382, label %371

371:                                              ; preds = %367
  %372 = load i32, i32* %20, align 4
  %373 = load %struct.sock*, %struct.sock** %13, align 8
  %374 = getelementptr inbounds %struct.sock, %struct.sock* %373, i32 0, i32 1
  store i32 %372, i32* %374, align 4
  %375 = load %struct.sock*, %struct.sock** %13, align 8
  %376 = getelementptr inbounds %struct.sock, %struct.sock* %375, i32 0, i32 3
  %377 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %376, align 8
  %378 = load %struct.sock*, %struct.sock** %13, align 8
  %379 = call i32 %377(%struct.sock* %378)
  %380 = load %struct.sock*, %struct.sock** %13, align 8
  %381 = call i32 @tcp_done(%struct.sock* %380)
  br label %386

382:                                              ; preds = %367
  %383 = load i32, i32* %20, align 4
  %384 = load %struct.sock*, %struct.sock** %13, align 8
  %385 = getelementptr inbounds %struct.sock, %struct.sock* %384, i32 0, i32 2
  store i32 %383, i32* %385, align 8
  br label %386

386:                                              ; preds = %382, %371
  br label %412

387:                                              ; preds = %354, %366
  %388 = load %struct.sock*, %struct.sock** %13, align 8
  %389 = call %struct.inet_sock* @inet_sk(%struct.sock* %388)
  store %struct.inet_sock* %389, %struct.inet_sock** %10, align 8
  %390 = load %struct.sock*, %struct.sock** %13, align 8
  %391 = call i64 @sock_owned_by_user(%struct.sock* %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %407, label %393

393:                                              ; preds = %387
  %394 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %395 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %407

398:                                              ; preds = %393
  %399 = load i32, i32* %20, align 4
  %400 = load %struct.sock*, %struct.sock** %13, align 8
  %401 = getelementptr inbounds %struct.sock, %struct.sock* %400, i32 0, i32 1
  store i32 %399, i32* %401, align 4
  %402 = load %struct.sock*, %struct.sock** %13, align 8
  %403 = getelementptr inbounds %struct.sock, %struct.sock* %402, i32 0, i32 3
  %404 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %403, align 8
  %405 = load %struct.sock*, %struct.sock** %13, align 8
  %406 = call i32 %404(%struct.sock* %405)
  br label %411

407:                                              ; preds = %393, %387
  %408 = load i32, i32* %20, align 4
  %409 = load %struct.sock*, %struct.sock** %13, align 8
  %410 = getelementptr inbounds %struct.sock, %struct.sock* %409, i32 0, i32 2
  store i32 %408, i32* %410, align 8
  br label %411

411:                                              ; preds = %407, %398
  br label %412

412:                                              ; preds = %411, %386, %353, %250, %229, %218, %211, %210, %196, %157, %144
  %413 = load %struct.sock*, %struct.sock** %13, align 8
  %414 = call i32 @bh_unlock_sock(%struct.sock* %413)
  %415 = load %struct.sock*, %struct.sock** %13, align 8
  %416 = call i32 @sock_put(%struct.sock* %415)
  store i32 0, i32* %3, align 4
  br label %417

417:                                              ; preds = %412, %116, %79, %67
  %418 = load i32, i32* %3, align 4
  ret i32 %418
}

declare dso_local %struct.TYPE_5__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sock* @__inet_lookup_established(%struct.net*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local i32 @__ICMP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @tcp_req_err(%struct.sock*, i32, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @__NET_INC_STATS(%struct.net*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.request_sock* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_4__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @between(i32, i32, i32) #1

declare dso_local i32 @do_redirect(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @tcp_v4_mtu_reduced(%struct.sock*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_rtx_queue_head(%struct.sock*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @__tcp_set_rto(%struct.tcp_sock*) #1

declare dso_local i64 @inet_csk_rto_backoff(%struct.inet_connection_sock*, i32) #1

declare dso_local i32 @tcp_mstamp_refresh(%struct.tcp_sock*) #1

declare dso_local i64 @tcp_skb_timestamp_us(%struct.sk_buff*) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i64, i32) #1

declare dso_local i32 @tcp_retransmit_timer(%struct.sock*) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
