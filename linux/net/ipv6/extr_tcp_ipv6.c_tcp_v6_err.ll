; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.inet6_skb_parm = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.request_sock = type { i32 }
%struct.ipv6_pinfo = type { i64, i64, i32 }
%struct.tcp_sock = type { i8*, i32, i8*, i32 }
%struct.sock = type { i32, i32, i32, i32 (%struct.sock*)*, i32 }
%struct.dst_entry = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i8* }

@tcp_hashinfo = common dso_local global i32 0, align 4
@ICMP6_MIB_INERRORS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i32 0, align 4
@TCP_NEW_SYN_RECV = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i64 0, align 8
@LINUX_MIB_LOCKDROPPEDICMPS = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@LINUX_MIB_TCPMINTTLDROP = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@LINUX_MIB_OUTOFWINDOWICMPS = common dso_local global i32 0, align 4
@NDISC_REDIRECT = common dso_local global i64 0, align 8
@TCP_MTU_REDUCED_DEFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i64, i64, i32, i32)* @tcp_v6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_v6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_skb_parm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipv6hdr*, align 8
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca %struct.net*, align 8
  %17 = alloca %struct.request_sock*, align 8
  %18 = alloca %struct.ipv6_pinfo*, align 8
  %19 = alloca %struct.tcp_sock*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.sock*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %29, %struct.ipv6hdr** %14, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = inttoptr i64 %35 to %struct.tcphdr*
  store %struct.tcphdr* %36, %struct.tcphdr** %15, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = call %struct.net* @dev_net(%struct.TYPE_9__* %39)
  store %struct.net* %40, %struct.net** %16, align 8
  %41 = load %struct.net*, %struct.net** %16, align 8
  %42 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %43 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %42, i32 0, i32 1
  %44 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %45 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %48 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %47, i32 0, i32 0
  %49 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %50 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohs(i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = call i32 @inet6_sdif(%struct.sk_buff* %58)
  %60 = call %struct.sock* @__inet6_lookup_established(%struct.net* %41, i32* @tcp_hashinfo, i32* %43, i32 %46, i32* %48, i32 %52, i32 %57, i32 %59)
  store %struct.sock* %60, %struct.sock** %22, align 8
  %61 = load %struct.sock*, %struct.sock** %22, align 8
  %62 = icmp ne %struct.sock* %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %6
  %64 = load %struct.net*, %struct.net** %16, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = call i32 @__in6_dev_get(%struct.TYPE_9__* %67)
  %69 = load i32, i32* @ICMP6_MIB_INERRORS, align 4
  %70 = call i32 @__ICMP6_INC_STATS(%struct.net* %64, i32 %68, i32 %69)
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %302

73:                                               ; preds = %6
  %74 = load %struct.sock*, %struct.sock** %22, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TCP_TIME_WAIT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.sock*, %struct.sock** %22, align 8
  %81 = call i32 @inet_twsk(%struct.sock* %80)
  %82 = call i32 @inet_twsk_put(i32 %81)
  store i32 0, i32* %7, align 4
  br label %302

83:                                               ; preds = %73
  %84 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %85 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @ntohl(i32 %86)
  store i8* %87, i8** %20, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @icmpv6_err_convert(i64 %88, i64 %89, i32* %24)
  store i32 %90, i32* %23, align 4
  %91 = load %struct.sock*, %struct.sock** %22, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @TCP_NEW_SYN_RECV, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = load %struct.sock*, %struct.sock** %22, align 8
  %98 = load i8*, i8** %20, align 8
  %99 = load i32, i32* %23, align 4
  %100 = call i32 @tcp_req_err(%struct.sock* %97, i8* %98, i32 %99)
  store i32 0, i32* %7, align 4
  br label %302

101:                                              ; preds = %83
  %102 = load %struct.sock*, %struct.sock** %22, align 8
  %103 = call i32 @bh_lock_sock(%struct.sock* %102)
  %104 = load %struct.sock*, %struct.sock** %22, align 8
  %105 = call i64 @sock_owned_by_user(%struct.sock* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* @ICMPV6_PKT_TOOBIG, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load %struct.net*, %struct.net** %16, align 8
  %113 = load i32, i32* @LINUX_MIB_LOCKDROPPEDICMPS, align 4
  %114 = call i32 @__NET_INC_STATS(%struct.net* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %107, %101
  %116 = load %struct.sock*, %struct.sock** %22, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @TCP_CLOSE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %297

122:                                              ; preds = %115
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = call %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff* %123)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.sock*, %struct.sock** %22, align 8
  %128 = call %struct.ipv6_pinfo* @tcp_inet6_sk(%struct.sock* %127)
  %129 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %126, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %122
  %133 = load %struct.net*, %struct.net** %16, align 8
  %134 = load i32, i32* @LINUX_MIB_TCPMINTTLDROP, align 4
  %135 = call i32 @__NET_INC_STATS(%struct.net* %133, i32 %134)
  br label %297

136:                                              ; preds = %122
  %137 = load %struct.sock*, %struct.sock** %22, align 8
  %138 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %137)
  store %struct.tcp_sock* %138, %struct.tcp_sock** %19, align 8
  %139 = load %struct.tcp_sock*, %struct.tcp_sock** %19, align 8
  %140 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.request_sock* @rcu_dereference(i32 %141)
  store %struct.request_sock* %142, %struct.request_sock** %17, align 8
  %143 = load %struct.request_sock*, %struct.request_sock** %17, align 8
  %144 = icmp ne %struct.request_sock* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %136
  %146 = load %struct.request_sock*, %struct.request_sock** %17, align 8
  %147 = call %struct.TYPE_7__* @tcp_rsk(%struct.request_sock* %146)
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  br label %154

150:                                              ; preds = %136
  %151 = load %struct.tcp_sock*, %struct.tcp_sock** %19, align 8
  %152 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  br label %154

154:                                              ; preds = %150, %145
  %155 = phi i8* [ %149, %145 ], [ %153, %150 ]
  store i8* %155, i8** %21, align 8
  %156 = load %struct.sock*, %struct.sock** %22, align 8
  %157 = getelementptr inbounds %struct.sock, %struct.sock* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @TCP_LISTEN, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %154
  %162 = load i8*, i8** %20, align 8
  %163 = load i8*, i8** %21, align 8
  %164 = load %struct.tcp_sock*, %struct.tcp_sock** %19, align 8
  %165 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @between(i8* %162, i8* %163, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %161
  %170 = load %struct.net*, %struct.net** %16, align 8
  %171 = load i32, i32* @LINUX_MIB_OUTOFWINDOWICMPS, align 4
  %172 = call i32 @__NET_INC_STATS(%struct.net* %170, i32 %171)
  br label %297

173:                                              ; preds = %161, %154
  %174 = load %struct.sock*, %struct.sock** %22, align 8
  %175 = call %struct.ipv6_pinfo* @tcp_inet6_sk(%struct.sock* %174)
  store %struct.ipv6_pinfo* %175, %struct.ipv6_pinfo** %18, align 8
  %176 = load i64, i64* %10, align 8
  %177 = load i64, i64* @NDISC_REDIRECT, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %203

179:                                              ; preds = %173
  %180 = load %struct.sock*, %struct.sock** %22, align 8
  %181 = call i64 @sock_owned_by_user(%struct.sock* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %202, label %183

183:                                              ; preds = %179
  %184 = load %struct.sock*, %struct.sock** %22, align 8
  %185 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %18, align 8
  %186 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call %struct.dst_entry* @__sk_dst_check(%struct.sock* %184, i32 %187)
  store %struct.dst_entry* %188, %struct.dst_entry** %25, align 8
  %189 = load %struct.dst_entry*, %struct.dst_entry** %25, align 8
  %190 = icmp ne %struct.dst_entry* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %183
  %192 = load %struct.dst_entry*, %struct.dst_entry** %25, align 8
  %193 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32 (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)** %195, align 8
  %197 = load %struct.dst_entry*, %struct.dst_entry** %25, align 8
  %198 = load %struct.sock*, %struct.sock** %22, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %200 = call i32 %196(%struct.dst_entry* %197, %struct.sock* %198, %struct.sk_buff* %199)
  br label %201

201:                                              ; preds = %191, %183
  br label %202

202:                                              ; preds = %201, %179
  br label %297

203:                                              ; preds = %173
  %204 = load i64, i64* %10, align 8
  %205 = load i64, i64* @ICMPV6_PKT_TOOBIG, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %241

207:                                              ; preds = %203
  %208 = load %struct.sock*, %struct.sock** %22, align 8
  %209 = getelementptr inbounds %struct.sock, %struct.sock* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @TCP_LISTEN, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  br label %297

214:                                              ; preds = %207
  %215 = load %struct.sock*, %struct.sock** %22, align 8
  %216 = call i32 @ip6_sk_accept_pmtu(%struct.sock* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %214
  br label %297

219:                                              ; preds = %214
  %220 = load i32, i32* %13, align 4
  %221 = call i8* @ntohl(i32 %220)
  %222 = load %struct.tcp_sock*, %struct.tcp_sock** %19, align 8
  %223 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %222, i32 0, i32 0
  store i8* %221, i8** %223, align 8
  %224 = load %struct.sock*, %struct.sock** %22, align 8
  %225 = call i64 @sock_owned_by_user(%struct.sock* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %219
  %228 = load %struct.sock*, %struct.sock** %22, align 8
  %229 = call i32 @tcp_v6_mtu_reduced(%struct.sock* %228)
  br label %240

230:                                              ; preds = %219
  %231 = load i32, i32* @TCP_MTU_REDUCED_DEFERRED, align 4
  %232 = load %struct.sock*, %struct.sock** %22, align 8
  %233 = getelementptr inbounds %struct.sock, %struct.sock* %232, i32 0, i32 4
  %234 = call i32 @test_and_set_bit(i32 %231, i32* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %230
  %237 = load %struct.sock*, %struct.sock** %22, align 8
  %238 = call i32 @sock_hold(%struct.sock* %237)
  br label %239

239:                                              ; preds = %236, %230
  br label %240

240:                                              ; preds = %239, %227
  br label %297

241:                                              ; preds = %203
  %242 = load %struct.sock*, %struct.sock** %22, align 8
  %243 = getelementptr inbounds %struct.sock, %struct.sock* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  switch i32 %244, label %274 [
    i32 128, label %245
    i32 129, label %245
  ]

245:                                              ; preds = %241, %241
  %246 = load %struct.request_sock*, %struct.request_sock** %17, align 8
  %247 = icmp ne %struct.request_sock* %246, null
  br i1 %247, label %248, label %254

248:                                              ; preds = %245
  %249 = load %struct.request_sock*, %struct.request_sock** %17, align 8
  %250 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %248
  br label %274

254:                                              ; preds = %248, %245
  %255 = load %struct.sock*, %struct.sock** %22, align 8
  %256 = call i64 @sock_owned_by_user(%struct.sock* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %269, label %258

258:                                              ; preds = %254
  %259 = load i32, i32* %24, align 4
  %260 = load %struct.sock*, %struct.sock** %22, align 8
  %261 = getelementptr inbounds %struct.sock, %struct.sock* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 4
  %262 = load %struct.sock*, %struct.sock** %22, align 8
  %263 = getelementptr inbounds %struct.sock, %struct.sock* %262, i32 0, i32 3
  %264 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %263, align 8
  %265 = load %struct.sock*, %struct.sock** %22, align 8
  %266 = call i32 %264(%struct.sock* %265)
  %267 = load %struct.sock*, %struct.sock** %22, align 8
  %268 = call i32 @tcp_done(%struct.sock* %267)
  br label %273

269:                                              ; preds = %254
  %270 = load i32, i32* %24, align 4
  %271 = load %struct.sock*, %struct.sock** %22, align 8
  %272 = getelementptr inbounds %struct.sock, %struct.sock* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 8
  br label %273

273:                                              ; preds = %269, %258
  br label %297

274:                                              ; preds = %241, %253
  %275 = load %struct.sock*, %struct.sock** %22, align 8
  %276 = call i64 @sock_owned_by_user(%struct.sock* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %292, label %278

278:                                              ; preds = %274
  %279 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %18, align 8
  %280 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %278
  %284 = load i32, i32* %24, align 4
  %285 = load %struct.sock*, %struct.sock** %22, align 8
  %286 = getelementptr inbounds %struct.sock, %struct.sock* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 4
  %287 = load %struct.sock*, %struct.sock** %22, align 8
  %288 = getelementptr inbounds %struct.sock, %struct.sock* %287, i32 0, i32 3
  %289 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %288, align 8
  %290 = load %struct.sock*, %struct.sock** %22, align 8
  %291 = call i32 %289(%struct.sock* %290)
  br label %296

292:                                              ; preds = %278, %274
  %293 = load i32, i32* %24, align 4
  %294 = load %struct.sock*, %struct.sock** %22, align 8
  %295 = getelementptr inbounds %struct.sock, %struct.sock* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  br label %296

296:                                              ; preds = %292, %283
  br label %297

297:                                              ; preds = %296, %273, %240, %218, %213, %202, %169, %132, %121
  %298 = load %struct.sock*, %struct.sock** %22, align 8
  %299 = call i32 @bh_unlock_sock(%struct.sock* %298)
  %300 = load %struct.sock*, %struct.sock** %22, align 8
  %301 = call i32 @sock_put(%struct.sock* %300)
  store i32 0, i32* %7, align 4
  br label %302

302:                                              ; preds = %297, %96, %79, %63
  %303 = load i32, i32* %7, align 4
  ret i32 %303
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_9__*) #1

declare dso_local %struct.sock* @__inet6_lookup_established(%struct.net*, i32*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @inet6_sdif(%struct.sk_buff*) #1

declare dso_local i32 @__ICMP6_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @__in6_dev_get(%struct.TYPE_9__*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @icmpv6_err_convert(i64, i64, i32*) #1

declare dso_local i32 @tcp_req_err(%struct.sock*, i8*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @__NET_INC_STATS(%struct.net*, i32) #1

declare dso_local %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6_pinfo* @tcp_inet6_sk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.request_sock* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_7__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @between(i8*, i8*, i32) #1

declare dso_local %struct.dst_entry* @__sk_dst_check(%struct.sock*, i32) #1

declare dso_local i32 @ip6_sk_accept_pmtu(%struct.sock*) #1

declare dso_local i32 @tcp_v6_mtu_reduced(%struct.sock*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
