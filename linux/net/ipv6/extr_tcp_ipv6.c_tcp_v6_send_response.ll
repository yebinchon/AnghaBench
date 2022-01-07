; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.sk_buff = type { i32, i32, i32, i64, i32 }
%struct.tcp_md5sig_key = type { i32 }
%struct.tcphdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.flowi6 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.dst_entry = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i64 0, align 8
@MAX_HEADER = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@TCPOPT_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@TCP_MIB_OUTSEGS = common dso_local global i32 0, align 4
@TCP_MIB_OUTRSTS = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG_ALIGNED = common dso_local global i64 0, align 8
@TCPOPT_MD5SIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, %struct.tcp_md5sig_key*, i32, i32, i32, i32)* @tcp_v6_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v6_send_response(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.tcp_md5sig_key* %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.tcp_md5sig_key*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.tcphdr*, align 8
  %28 = alloca %struct.tcphdr*, align 8
  %29 = alloca %struct.sk_buff*, align 8
  %30 = alloca %struct.flowi6, align 8
  %31 = alloca %struct.net*, align 8
  %32 = alloca %struct.sock*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.dst_entry*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %14, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store %struct.tcp_md5sig_key* %8, %struct.tcp_md5sig_key** %22, align 8
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %38 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %37)
  store %struct.tcphdr* %38, %struct.tcphdr** %27, align 8
  %39 = load %struct.sock*, %struct.sock** %14, align 8
  %40 = icmp ne %struct.sock* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %13
  %42 = load %struct.sock*, %struct.sock** %14, align 8
  %43 = call %struct.net* @sock_net(%struct.sock* %42)
  br label %50

44:                                               ; preds = %13
  %45 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %46 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.net* @dev_net(i32 %48)
  br label %50

50:                                               ; preds = %44, %41
  %51 = phi %struct.net* [ %43, %41 ], [ %49, %44 ]
  store %struct.net* %51, %struct.net** %31, align 8
  %52 = load %struct.net*, %struct.net** %31, align 8
  %53 = getelementptr inbounds %struct.net, %struct.net* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.sock*, %struct.sock** %54, align 8
  store %struct.sock* %55, %struct.sock** %32, align 8
  store i32 80, i32* %33, align 4
  store i32 0, i32* %36, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i64, i64* @TCPOLEN_TSTAMP_ALIGNED, align 8
  %60 = load i32, i32* %33, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %33, align 4
  br label %64

64:                                               ; preds = %58, %50
  %65 = load i64, i64* @MAX_HEADER, align 8
  %66 = add i64 %65, 4
  %67 = load i32, i32* %33, align 4
  %68 = zext i32 %67 to i64
  %69 = add i64 %66, %68
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call %struct.sk_buff* @alloc_skb(i64 %69, i32 %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %29, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %73 = icmp ne %struct.sk_buff* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  br label %317

75:                                               ; preds = %64
  %76 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %77 = load i64, i64* @MAX_HEADER, align 8
  %78 = add i64 %77, 4
  %79 = load i32, i32* %33, align 4
  %80 = zext i32 %79 to i64
  %81 = add i64 %78, %80
  %82 = call i32 @skb_reserve(%struct.sk_buff* %76, i64 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %84 = load i32, i32* %33, align 4
  %85 = call %struct.tcphdr* @skb_push(%struct.sk_buff* %83, i32 %84)
  store %struct.tcphdr* %85, %struct.tcphdr** %28, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %87 = call i32 @skb_reset_transport_header(%struct.sk_buff* %86)
  %88 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %89 = call i32 @memset(%struct.tcphdr* %88, i32 0, i32 80)
  %90 = load %struct.tcphdr*, %struct.tcphdr** %27, align 8
  %91 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %94 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 8
  %95 = load %struct.tcphdr*, %struct.tcphdr** %27, align 8
  %96 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %99 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %33, align 4
  %101 = udiv i32 %100, 4
  %102 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %103 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i8* @htonl(i32 %104)
  %106 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %107 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %106, i32 0, i32 16
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %17, align 4
  %109 = call i8* @htonl(i32 %108)
  %110 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %111 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %110, i32 0, i32 15
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %23, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %75
  %115 = load %struct.tcphdr*, %struct.tcphdr** %27, align 8
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %114, %75
  %121 = phi i1 [ true, %75 ], [ %119, %114 ]
  %122 = zext i1 %121 to i32
  %123 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %124 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %23, align 4
  %126 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %127 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %18, align 4
  %129 = call i32 @htons(i32 %128)
  %130 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %131 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %130, i32 0, i32 14
  store i32 %129, i32* %131, align 8
  %132 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %133 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %132, i64 1
  %134 = bitcast %struct.tcphdr* %133 to i32*
  store i32* %134, i32** %35, align 8
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %162

137:                                              ; preds = %120
  %138 = load i32, i32* @TCPOPT_NOP, align 4
  %139 = shl i32 %138, 24
  %140 = load i32, i32* @TCPOPT_NOP, align 4
  %141 = shl i32 %140, 16
  %142 = or i32 %139, %141
  %143 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %144 = shl i32 %143, 8
  %145 = or i32 %142, %144
  %146 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %147 = or i32 %145, %146
  %148 = call i8* @htonl(i32 %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load i32*, i32** %35, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %35, align 8
  store i32 %149, i32* %150, align 4
  %152 = load i32, i32* %19, align 4
  %153 = call i8* @htonl(i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load i32*, i32** %35, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %35, align 8
  store i32 %154, i32* %155, align 4
  %157 = load i32, i32* %20, align 4
  %158 = call i8* @htonl(i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load i32*, i32** %35, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %35, align 8
  store i32 %159, i32* %160, align 4
  br label %162

162:                                              ; preds = %137, %120
  %163 = bitcast %struct.flowi6* %30 to %struct.tcphdr*
  %164 = call i32 @memset(%struct.tcphdr* %163, i32 0, i32 80)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %166 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %165)
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 10
  store i32 %168, i32* %169, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %171 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %170)
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 12
  store i32 %173, i32* %174, align 8
  %175 = load i32, i32* %25, align 4
  %176 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 13
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %178 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 3
  store i64 0, i64* %181, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %183 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 12
  %184 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 10
  %185 = call i32 @__tcp_v6_send_check(%struct.sk_buff* %182, i32* %183, i32* %184)
  %186 = load i32, i32* @IPPROTO_TCP, align 4
  %187 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 11
  store i32 %186, i32* %187, align 4
  %188 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 10
  %189 = call i64 @rt6_need_strict(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %162
  %192 = load i32, i32* %21, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %196 = call i32 @tcp_v6_iif(%struct.sk_buff* %195)
  %197 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 3
  store i32 %196, i32* %197, align 4
  br label %215

198:                                              ; preds = %191, %162
  %199 = load i32, i32* %21, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %198
  %202 = load %struct.net*, %struct.net** %31, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i64 @netif_index_is_l3_master(%struct.net* %202, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %21, align 4
  br label %212

212:                                              ; preds = %208, %201, %198
  %213 = load i32, i32* %21, align 4
  %214 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 3
  store i32 %213, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %194
  %216 = load %struct.sock*, %struct.sock** %14, align 8
  %217 = icmp ne %struct.sock* %216, null
  br i1 %217, label %218, label %245

218:                                              ; preds = %215
  %219 = load %struct.sock*, %struct.sock** %14, align 8
  %220 = getelementptr inbounds %struct.sock, %struct.sock* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @TCP_TIME_WAIT, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %236

224:                                              ; preds = %218
  %225 = load %struct.sock*, %struct.sock** %14, align 8
  %226 = call %struct.TYPE_8__* @inet_twsk(%struct.sock* %225)
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %36, align 4
  %229 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %230 = load %struct.sock*, %struct.sock** %14, align 8
  %231 = call %struct.TYPE_8__* @inet_twsk(%struct.sock* %230)
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  %235 = call i32 @skb_set_hash(%struct.sk_buff* %229, i32 %233, i32 %234)
  br label %240

236:                                              ; preds = %218
  %237 = load %struct.sock*, %struct.sock** %14, align 8
  %238 = getelementptr inbounds %struct.sock, %struct.sock* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  store i32 %239, i32* %36, align 4
  br label %240

240:                                              ; preds = %236, %224
  %241 = load %struct.sock*, %struct.sock** %14, align 8
  %242 = call i32 @tcp_transmit_time(%struct.sock* %241)
  %243 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  br label %245

245:                                              ; preds = %240, %215
  %246 = load %struct.net*, %struct.net** %31, align 8
  %247 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %248 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @IP6_REPLY_MARK(%struct.net* %246, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  br label %256

253:                                              ; preds = %245
  %254 = load i32, i32* %36, align 4
  %255 = sext i32 %254 to i64
  br label %256

256:                                              ; preds = %253, %252
  %257 = phi i64 [ %250, %252 ], [ %255, %253 ]
  %258 = trunc i64 %257 to i32
  %259 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 4
  store i32 %258, i32* %259, align 8
  %260 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 8
  %263 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 9
  store i32 %262, i32* %263, align 4
  %264 = load %struct.tcphdr*, %struct.tcphdr** %28, align 8
  %265 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 7
  store i32 %266, i32* %267, align 4
  %268 = load %struct.net*, %struct.net** %31, align 8
  %269 = load %struct.sock*, %struct.sock** %14, align 8
  %270 = icmp ne %struct.sock* %269, null
  br i1 %270, label %271, label %277

271:                                              ; preds = %256
  %272 = load %struct.sock*, %struct.sock** %14, align 8
  %273 = call i64 @sk_fullsock(%struct.sock* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = load %struct.sock*, %struct.sock** %14, align 8
  br label %278

277:                                              ; preds = %271, %256
  br label %278

278:                                              ; preds = %277, %275
  %279 = phi %struct.sock* [ %276, %275 ], [ null, %277 ]
  %280 = call i32 @sock_net_uid(%struct.net* %268, %struct.sock* %279)
  %281 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 5
  store i32 %280, i32* %281, align 4
  %282 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %283 = bitcast %struct.flowi6* %30 to %struct.tcphdr*
  %284 = call i32 @flowi6_to_flowi(%struct.tcphdr* %283)
  %285 = call i32 @security_skb_classify_flow(%struct.sk_buff* %282, i32 %284)
  %286 = load %struct.sock*, %struct.sock** %32, align 8
  %287 = bitcast %struct.flowi6* %30 to %struct.tcphdr*
  %288 = call %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock* %286, %struct.tcphdr* %287, i32* null)
  store %struct.dst_entry* %288, %struct.dst_entry** %34, align 8
  %289 = load %struct.dst_entry*, %struct.dst_entry** %34, align 8
  %290 = call i32 @IS_ERR(%struct.dst_entry* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %314, label %292

292:                                              ; preds = %278
  %293 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %294 = load %struct.dst_entry*, %struct.dst_entry** %34, align 8
  %295 = call i32 @skb_dst_set(%struct.sk_buff* %293, %struct.dst_entry* %294)
  %296 = load %struct.sock*, %struct.sock** %32, align 8
  %297 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %298 = bitcast %struct.flowi6* %30 to %struct.tcphdr*
  %299 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %24, align 4
  %302 = load i32, i32* %26, align 4
  %303 = call i32 @ip6_xmit(%struct.sock* %296, %struct.sk_buff* %297, %struct.tcphdr* %298, i32 %300, i32* null, i32 %301, i32 %302)
  %304 = load %struct.net*, %struct.net** %31, align 8
  %305 = load i32, i32* @TCP_MIB_OUTSEGS, align 4
  %306 = call i32 @TCP_INC_STATS(%struct.net* %304, i32 %305)
  %307 = load i32, i32* %23, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %292
  %310 = load %struct.net*, %struct.net** %31, align 8
  %311 = load i32, i32* @TCP_MIB_OUTRSTS, align 4
  %312 = call i32 @TCP_INC_STATS(%struct.net* %310, i32 %311)
  br label %313

313:                                              ; preds = %309, %292
  br label %317

314:                                              ; preds = %278
  %315 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %316 = call i32 @kfree_skb(%struct.sk_buff* %315)
  br label %317

317:                                              ; preds = %314, %313, %74
  ret void
}

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_6__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.tcphdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.tcphdr*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__tcp_v6_send_check(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i64 @rt6_need_strict(i32*) #1

declare dso_local i32 @tcp_v6_iif(%struct.sk_buff*) #1

declare dso_local i64 @netif_index_is_l3_master(%struct.net*, i32) #1

declare dso_local %struct.TYPE_8__* @inet_twsk(%struct.sock*) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcp_transmit_time(%struct.sock*) #1

declare dso_local i64 @IP6_REPLY_MARK(%struct.net*, i32) #1

declare dso_local i32 @sock_net_uid(%struct.net*, %struct.sock*) #1

declare dso_local i64 @sk_fullsock(%struct.sock*) #1

declare dso_local i32 @security_skb_classify_flow(%struct.sk_buff*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.tcphdr*) #1

declare dso_local %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock*, %struct.tcphdr*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @ip6_xmit(%struct.sock*, %struct.sk_buff*, %struct.tcphdr*, i32, i32*, i32, i32) #1

declare dso_local i32 @TCP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
