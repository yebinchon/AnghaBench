; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_tpacket_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_tpacket_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64, %struct.sockaddr_ll*, i32, i32 }
%struct.sockaddr_ll = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.packet_type = type { %struct.sock* }
%struct.sock = type { i64, i64, i32 (%struct.sock*)*, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.net_device = type { i32, i32, i64 }
%struct.packet_sock = type { i16, i32, i32, i32, i32, %struct.TYPE_16__, i32, %struct.TYPE_12__, i64, i64 }
%struct.TYPE_16__ = type { i16 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%union.tpacket_uhdr = type { %struct.sockaddr_ll* }
%struct.timespec = type { i32, i32 }
%struct.TYPE_18__ = type { i16 }
%struct.TYPE_13__ = type { i32, i32, i16, i16, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i16, i16, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i16, i16, i32, i32, i32 }

@TP_STATUS_USER = common dso_local global i64 0, align 8
@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@PACKET_OUTGOING = common dso_local global i64 0, align 8
@ROOM_NONE = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@TP_STATUS_CSUMNOTREADY = common dso_local global i64 0, align 8
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@TP_STATUS_CSUM_VALID = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"tpacket_rcv: packet too big, clamped from %u to %u. macoff=%u\0A\00", align 1
@TP_STATUS_KERNEL = common dso_local global i32 0, align 4
@TP_STATUS_LOSING = common dso_local global i64 0, align 8
@TP_STATUS_COPY = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@TP_STATUS_VLAN_VALID = common dso_local global i64 0, align 8
@TP_STATUS_VLAN_TPID_VALID = common dso_local global i64 0, align 8
@AF_PACKET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @tpacket_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpacket_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.packet_sock*, align 8
  %11 = alloca %struct.sockaddr_ll*, align 8
  %12 = alloca %union.tpacket_uhdr, align 8
  %13 = alloca %struct.sockaddr_ll*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca %struct.timespec, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 3
  %30 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %29, align 8
  store %struct.sockaddr_ll* %30, %struct.sockaddr_ll** %13, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  %34 = load i64, i64* @TP_STATUS_USER, align 8
  store i64 %34, i64* %17, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %21, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %35 = call i32 @TPACKET_ALIGN(i16 zeroext 32)
  %36 = icmp ne i32 %35, 32
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUILD_BUG_ON(i32 %37)
  %39 = call i32 @TPACKET_ALIGN(i16 zeroext 32)
  %40 = icmp ne i32 %39, 48
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUILD_BUG_ON(i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PACKET_LOOPBACK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %4
  br label %642

49:                                               ; preds = %4
  %50 = load %struct.packet_type*, %struct.packet_type** %7, align 8
  %51 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %50, i32 0, i32 0
  %52 = load %struct.sock*, %struct.sock** %51, align 8
  store %struct.sock* %52, %struct.sock** %9, align 8
  %53 = load %struct.sock*, %struct.sock** %9, align 8
  %54 = call %struct.packet_sock* @pkt_sk(%struct.sock* %53)
  store %struct.packet_sock* %54, %struct.packet_sock** %10, align 8
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = call i32 @dev_net(%struct.net_device* %55)
  %57 = load %struct.sock*, %struct.sock** %9, align 8
  %58 = call i32 @sock_net(%struct.sock* %57)
  %59 = call i32 @net_eq(i32 %56, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  br label %642

62:                                               ; preds = %49
  %63 = load %struct.net_device*, %struct.net_device** %6, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %62
  %68 = load %struct.sock*, %struct.sock** %9, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SOCK_DGRAM, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 3
  %77 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %76, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @skb_mac_header(%struct.sk_buff* %78)
  %80 = sext i32 %79 to i64
  %81 = sub i64 0, %80
  %82 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %77, i64 %81
  %83 = call i32 @skb_push(%struct.sk_buff* %74, %struct.sockaddr_ll* %82)
  br label %96

84:                                               ; preds = %67
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PACKET_OUTGOING, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = call i32 @skb_network_offset(%struct.sk_buff* %92)
  %94 = call i32 @skb_pull(%struct.sk_buff* %91, i32 %93)
  br label %95

95:                                               ; preds = %90, %84
  br label %96

96:                                               ; preds = %95, %73
  br label %97

97:                                               ; preds = %96, %62
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %15, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = load %struct.sock*, %struct.sock** %9, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @run_filter(%struct.sk_buff* %101, %struct.sock* %102, i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %97
  br label %624

108:                                              ; preds = %97
  %109 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = call i64 @__packet_rcv_has_room(%struct.packet_sock* %109, %struct.sk_buff* %110)
  %112 = load i64, i64* @ROOM_NONE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %116 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %115, i32 0, i32 4
  %117 = call i32 @atomic_inc(i32* %116)
  br label %624

118:                                              ; preds = %108
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i64, i64* @TP_STATUS_CSUMNOTREADY, align 8
  %126 = load i64, i64* %17, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %17, align 8
  br label %149

128:                                              ; preds = %118
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PACKET_OUTGOING, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %134
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = call i64 @skb_csum_unnecessary(%struct.sk_buff* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140, %134
  %145 = load i64, i64* @TP_STATUS_CSUM_VALID, align 8
  %146 = load i64, i64* %17, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %17, align 8
  br label %148

148:                                              ; preds = %144, %140, %128
  br label %149

149:                                              ; preds = %148, %124
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp ugt i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i32, i32* %16, align 4
  store i32 %154, i32* %15, align 4
  br label %155

155:                                              ; preds = %153, %149
  %156 = load %struct.sock*, %struct.sock** %9, align 8
  %157 = getelementptr inbounds %struct.sock, %struct.sock* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SOCK_DGRAM, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %163 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %162, i32 0, i32 0
  %164 = load i16, i16* %163, align 8
  %165 = call i32 @TPACKET_ALIGN(i16 zeroext %164)
  %166 = add nsw i32 %165, 16
  %167 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %168 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %166, %169
  %171 = trunc i32 %170 to i16
  store i16 %171, i16* %19, align 2
  store i16 %171, i16* %18, align 2
  br label %209

172:                                              ; preds = %155
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = call i32 @skb_network_offset(%struct.sk_buff* %173)
  store i32 %174, i32* %26, align 4
  %175 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %176 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %175, i32 0, i32 0
  %177 = load i16, i16* %176, align 8
  %178 = zext i16 %177 to i32
  %179 = load i32, i32* %26, align 4
  %180 = icmp ult i32 %179, 16
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  br label %184

182:                                              ; preds = %172
  %183 = load i32, i32* %26, align 4
  br label %184

184:                                              ; preds = %182, %181
  %185 = phi i32 [ 16, %181 ], [ %183, %182 ]
  %186 = add i32 %178, %185
  %187 = trunc i32 %186 to i16
  %188 = call i32 @TPACKET_ALIGN(i16 zeroext %187)
  %189 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %190 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %188, %191
  %193 = trunc i32 %192 to i16
  store i16 %193, i16* %19, align 2
  %194 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %195 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %194, i32 0, i32 9
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %184
  %199 = load i16, i16* %19, align 2
  %200 = zext i16 %199 to i64
  %201 = add i64 %200, 4
  %202 = trunc i64 %201 to i16
  store i16 %202, i16* %19, align 2
  store i32 1, i32* %25, align 4
  br label %203

203:                                              ; preds = %198, %184
  %204 = load i16, i16* %19, align 2
  %205 = zext i16 %204 to i32
  %206 = load i32, i32* %26, align 4
  %207 = sub i32 %205, %206
  %208 = trunc i32 %207 to i16
  store i16 %208, i16* %18, align 2
  br label %209

209:                                              ; preds = %203, %161
  %210 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %211 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp sle i32 %212, 129
  br i1 %213, label %214, label %274

214:                                              ; preds = %209
  %215 = load i16, i16* %18, align 2
  %216 = zext i16 %215 to i32
  %217 = load i32, i32* %15, align 4
  %218 = add i32 %216, %217
  %219 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %220 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i16, i16* %221, align 4
  %223 = zext i16 %222 to i32
  %224 = icmp ugt i32 %218, %223
  br i1 %224, label %225, label %273

225:                                              ; preds = %214
  %226 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %227 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %226, i32 0, i32 8
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %260

230:                                              ; preds = %225
  %231 = load %struct.sock*, %struct.sock** %9, align 8
  %232 = getelementptr inbounds %struct.sock, %struct.sock* %231, i32 0, i32 4
  %233 = call i64 @atomic_read(i32* %232)
  %234 = load %struct.sock*, %struct.sock** %9, align 8
  %235 = getelementptr inbounds %struct.sock, %struct.sock* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp slt i64 %233, %236
  br i1 %237, label %238, label %260

238:                                              ; preds = %230
  %239 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %240 = call i64 @skb_shared(%struct.sk_buff* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %244 = load i32, i32* @GFP_ATOMIC, align 4
  %245 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %243, i32 %244)
  store %struct.sk_buff* %245, %struct.sk_buff** %21, align 8
  br label %252

246:                                              ; preds = %238
  %247 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %248 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %247)
  store %struct.sk_buff* %248, %struct.sk_buff** %21, align 8
  %249 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %250 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %249, i32 0, i32 3
  %251 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %250, align 8
  store %struct.sockaddr_ll* %251, %struct.sockaddr_ll** %13, align 8
  br label %252

252:                                              ; preds = %246, %242
  %253 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %254 = icmp ne %struct.sk_buff* %253, null
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %257 = load %struct.sock*, %struct.sock** %9, align 8
  %258 = call i32 @skb_set_owner_r(%struct.sk_buff* %256, %struct.sock* %257)
  br label %259

259:                                              ; preds = %255, %252
  br label %260

260:                                              ; preds = %259, %230, %225
  %261 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %262 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 0
  %264 = load i16, i16* %263, align 4
  %265 = zext i16 %264 to i32
  %266 = load i16, i16* %18, align 2
  %267 = zext i16 %266 to i32
  %268 = sub nsw i32 %265, %267
  store i32 %268, i32* %15, align 4
  %269 = load i32, i32* %15, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %260
  store i32 0, i32* %15, align 4
  store i32 0, i32* %25, align 4
  br label %272

272:                                              ; preds = %271, %260
  br label %273

273:                                              ; preds = %272, %214
  br label %317

274:                                              ; preds = %209
  %275 = load i16, i16* %18, align 2
  %276 = zext i16 %275 to i32
  %277 = load i32, i32* %15, align 4
  %278 = add i32 %276, %277
  %279 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %280 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %279, i32 0, i32 5
  %281 = call %struct.TYPE_18__* @GET_PBDQC_FROM_RB(%struct.TYPE_16__* %280)
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  %283 = load i16, i16* %282, align 2
  %284 = zext i16 %283 to i32
  %285 = icmp ugt i32 %278, %284
  %286 = zext i1 %285 to i32
  %287 = call i64 @unlikely(i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %316

289:                                              ; preds = %274
  %290 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %291 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %290, i32 0, i32 5
  %292 = call %struct.TYPE_18__* @GET_PBDQC_FROM_RB(%struct.TYPE_16__* %291)
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 0
  %294 = load i16, i16* %293, align 2
  %295 = zext i16 %294 to i32
  %296 = load i16, i16* %18, align 2
  %297 = zext i16 %296 to i32
  %298 = sub nsw i32 %295, %297
  store i32 %298, i32* %27, align 4
  %299 = load i32, i32* %15, align 4
  %300 = load i32, i32* %27, align 4
  %301 = load i16, i16* %18, align 2
  %302 = call i32 @pr_err_once(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %299, i32 %300, i16 zeroext %301)
  %303 = load i32, i32* %27, align 4
  store i32 %303, i32* %15, align 4
  %304 = load i32, i32* %15, align 4
  %305 = icmp slt i32 %304, 0
  %306 = zext i1 %305 to i32
  %307 = call i64 @unlikely(i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %289
  store i32 0, i32* %15, align 4
  %310 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %311 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %310, i32 0, i32 5
  %312 = call %struct.TYPE_18__* @GET_PBDQC_FROM_RB(%struct.TYPE_16__* %311)
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 0
  %314 = load i16, i16* %313, align 2
  store i16 %314, i16* %18, align 2
  store i32 0, i32* %25, align 4
  br label %315

315:                                              ; preds = %309, %289
  br label %316

316:                                              ; preds = %315, %274
  br label %317

317:                                              ; preds = %316, %273
  %318 = load %struct.sock*, %struct.sock** %9, align 8
  %319 = getelementptr inbounds %struct.sock, %struct.sock* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 0
  %321 = call i32 @spin_lock(i32* %320)
  %322 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %323 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %324 = load i32, i32* @TP_STATUS_KERNEL, align 4
  %325 = load i16, i16* %18, align 2
  %326 = zext i16 %325 to i32
  %327 = load i32, i32* %15, align 4
  %328 = add i32 %326, %327
  %329 = trunc i32 %328 to i16
  %330 = call %struct.sockaddr_ll* @packet_current_rx_frame(%struct.packet_sock* %322, %struct.sk_buff* %323, i32 %324, i16 zeroext %329)
  %331 = bitcast %union.tpacket_uhdr* %12 to %struct.sockaddr_ll**
  store %struct.sockaddr_ll* %330, %struct.sockaddr_ll** %331, align 8
  %332 = bitcast %union.tpacket_uhdr* %12 to %struct.sockaddr_ll**
  %333 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %332, align 8
  %334 = icmp ne %struct.sockaddr_ll* %333, null
  br i1 %334, label %336, label %335

335:                                              ; preds = %317
  br label %652

336:                                              ; preds = %317
  %337 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %338 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = icmp sle i32 %339, 129
  br i1 %340, label %341, label %355

341:                                              ; preds = %336
  %342 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %343 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %344 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %343, i32 0, i32 5
  %345 = call i32 @packet_increment_rx_head(%struct.packet_sock* %342, %struct.TYPE_16__* %344)
  %346 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %347 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %346, i32 0, i32 4
  %348 = call i64 @atomic_read(i32* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %341
  %351 = load i64, i64* @TP_STATUS_LOSING, align 8
  %352 = load i64, i64* %17, align 8
  %353 = or i64 %352, %351
  store i64 %353, i64* %17, align 8
  br label %354

354:                                              ; preds = %350, %341
  br label %355

355:                                              ; preds = %354, %336
  %356 = load i32, i32* %25, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %371

358:                                              ; preds = %355
  %359 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %360 = bitcast %union.tpacket_uhdr* %12 to %struct.sockaddr_ll**
  %361 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %360, align 8
  %362 = load i16, i16* %18, align 2
  %363 = zext i16 %362 to i32
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %361, i64 %364
  %366 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %365, i64 -4
  %367 = call i32 (...) @vio_le()
  %368 = call i64 @virtio_net_hdr_from_skb(%struct.sk_buff* %359, %struct.sockaddr_ll* %366, i32 %367, i32 1, i32 0)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %358
  br label %652

371:                                              ; preds = %358, %355
  %372 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %373 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %372, i32 0, i32 7
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %375, align 4
  %378 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %379 = icmp ne %struct.sk_buff* %378, null
  br i1 %379, label %380, label %388

380:                                              ; preds = %371
  %381 = load i64, i64* @TP_STATUS_COPY, align 8
  %382 = load i64, i64* %17, align 8
  %383 = or i64 %382, %381
  store i64 %383, i64* %17, align 8
  %384 = load %struct.sock*, %struct.sock** %9, align 8
  %385 = getelementptr inbounds %struct.sock, %struct.sock* %384, i32 0, i32 3
  %386 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %387 = call i32 @__skb_queue_tail(%struct.TYPE_17__* %385, %struct.sk_buff* %386)
  br label %388

388:                                              ; preds = %380, %371
  %389 = load %struct.sock*, %struct.sock** %9, align 8
  %390 = getelementptr inbounds %struct.sock, %struct.sock* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %390, i32 0, i32 0
  %392 = call i32 @spin_unlock(i32* %391)
  %393 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %394 = bitcast %union.tpacket_uhdr* %12 to %struct.sockaddr_ll**
  %395 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %394, align 8
  %396 = load i16, i16* %18, align 2
  %397 = zext i16 %396 to i32
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %395, i64 %398
  %400 = load i32, i32* %15, align 4
  %401 = call i32 @skb_copy_bits(%struct.sk_buff* %393, i32 0, %struct.sockaddr_ll* %399, i32 %400)
  %402 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %403 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %404 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %403, i32 0, i32 6
  %405 = load i32, i32* %404, align 8
  %406 = call i64 @tpacket_get_timestamp(%struct.sk_buff* %402, %struct.timespec* %22, i32 %405)
  store i64 %406, i64* %23, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %410, label %408

408:                                              ; preds = %388
  %409 = call i32 @getnstimeofday(%struct.timespec* %22)
  br label %410

410:                                              ; preds = %408, %388
  %411 = load i64, i64* %23, align 8
  %412 = load i64, i64* %17, align 8
  %413 = or i64 %412, %411
  store i64 %413, i64* %17, align 8
  %414 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %415 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  switch i32 %416, label %551 [
    i32 130, label %417
    i32 129, label %448
    i32 128, label %511
  ]

417:                                              ; preds = %410
  %418 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %419 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_13__**
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 0
  store i32 %420, i32* %423, align 4
  %424 = load i32, i32* %15, align 4
  %425 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_13__**
  %426 = load %struct.TYPE_13__*, %struct.TYPE_13__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 1
  store i32 %424, i32* %427, align 4
  %428 = load i16, i16* %18, align 2
  %429 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_13__**
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 2
  store i16 %428, i16* %431, align 4
  %432 = load i16, i16* %19, align 2
  %433 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_13__**
  %434 = load %struct.TYPE_13__*, %struct.TYPE_13__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %434, i32 0, i32 3
  store i16 %432, i16* %435, align 2
  %436 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_13__**
  %439 = load %struct.TYPE_13__*, %struct.TYPE_13__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %439, i32 0, i32 5
  store i32 %437, i32* %440, align 4
  %441 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @NSEC_PER_USEC, align 4
  %444 = sdiv i32 %442, %443
  %445 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_13__**
  %446 = load %struct.TYPE_13__*, %struct.TYPE_13__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %446, i32 0, i32 4
  store i32 %444, i32* %447, align 4
  store i16 20, i16* %20, align 2
  br label %553

448:                                              ; preds = %410
  %449 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %450 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_14__**
  %453 = load %struct.TYPE_14__*, %struct.TYPE_14__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %453, i32 0, i32 0
  store i32 %451, i32* %454, align 4
  %455 = load i32, i32* %15, align 4
  %456 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_14__**
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %457, i32 0, i32 1
  store i32 %455, i32* %458, align 4
  %459 = load i16, i16* %18, align 2
  %460 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_14__**
  %461 = load %struct.TYPE_14__*, %struct.TYPE_14__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %461, i32 0, i32 2
  store i16 %459, i16* %462, align 4
  %463 = load i16, i16* %19, align 2
  %464 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_14__**
  %465 = load %struct.TYPE_14__*, %struct.TYPE_14__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %465, i32 0, i32 3
  store i16 %463, i16* %466, align 2
  %467 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_14__**
  %470 = load %struct.TYPE_14__*, %struct.TYPE_14__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %470, i32 0, i32 8
  store i32 %468, i32* %471, align 4
  %472 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_14__**
  %475 = load %struct.TYPE_14__*, %struct.TYPE_14__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %475, i32 0, i32 4
  store i32 %473, i32* %476, align 4
  %477 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %478 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %477)
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %498

480:                                              ; preds = %448
  %481 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %482 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %481)
  %483 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_14__**
  %484 = load %struct.TYPE_14__*, %struct.TYPE_14__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %484, i32 0, i32 7
  store i32 %482, i32* %485, align 4
  %486 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %487 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %486, i32 0, i32 5
  %488 = load i32, i32* %487, align 4
  %489 = call i32 @ntohs(i32 %488)
  %490 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_14__**
  %491 = load %struct.TYPE_14__*, %struct.TYPE_14__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %491, i32 0, i32 6
  store i32 %489, i32* %492, align 4
  %493 = load i64, i64* @TP_STATUS_VLAN_VALID, align 8
  %494 = load i64, i64* @TP_STATUS_VLAN_TPID_VALID, align 8
  %495 = or i64 %493, %494
  %496 = load i64, i64* %17, align 8
  %497 = or i64 %496, %495
  store i64 %497, i64* %17, align 8
  br label %505

498:                                              ; preds = %448
  %499 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_14__**
  %500 = load %struct.TYPE_14__*, %struct.TYPE_14__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %500, i32 0, i32 7
  store i32 0, i32* %501, align 4
  %502 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_14__**
  %503 = load %struct.TYPE_14__*, %struct.TYPE_14__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %503, i32 0, i32 6
  store i32 0, i32* %504, align 4
  br label %505

505:                                              ; preds = %498, %480
  %506 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_14__**
  %507 = load %struct.TYPE_14__*, %struct.TYPE_14__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %507, i32 0, i32 5
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @memset(i32 %509, i32 0, i32 4)
  store i16 32, i16* %20, align 2
  br label %553

511:                                              ; preds = %410
  %512 = load i64, i64* %17, align 8
  %513 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_15__**
  %514 = load %struct.TYPE_15__*, %struct.TYPE_15__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = or i64 %516, %512
  store i64 %517, i64* %515, align 8
  %518 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %519 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_15__**
  %522 = load %struct.TYPE_15__*, %struct.TYPE_15__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %522, i32 0, i32 1
  store i32 %520, i32* %523, align 8
  %524 = load i32, i32* %15, align 4
  %525 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_15__**
  %526 = load %struct.TYPE_15__*, %struct.TYPE_15__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %526, i32 0, i32 2
  store i32 %524, i32* %527, align 4
  %528 = load i16, i16* %18, align 2
  %529 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_15__**
  %530 = load %struct.TYPE_15__*, %struct.TYPE_15__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %530, i32 0, i32 3
  store i16 %528, i16* %531, align 8
  %532 = load i16, i16* %19, align 2
  %533 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_15__**
  %534 = load %struct.TYPE_15__*, %struct.TYPE_15__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %534, i32 0, i32 4
  store i16 %532, i16* %535, align 2
  %536 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_15__**
  %539 = load %struct.TYPE_15__*, %struct.TYPE_15__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %539, i32 0, i32 7
  store i32 %537, i32* %540, align 4
  %541 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  %543 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_15__**
  %544 = load %struct.TYPE_15__*, %struct.TYPE_15__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %544, i32 0, i32 5
  store i32 %542, i32* %545, align 4
  %546 = bitcast %union.tpacket_uhdr* %12 to %struct.TYPE_15__**
  %547 = load %struct.TYPE_15__*, %struct.TYPE_15__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %547, i32 0, i32 6
  %549 = load i32, i32* %548, align 8
  %550 = call i32 @memset(i32 %549, i32 0, i32 4)
  store i16 32, i16* %20, align 2
  br label %553

551:                                              ; preds = %410
  %552 = call i32 (...) @BUG()
  br label %553

553:                                              ; preds = %551, %511, %505, %417
  %554 = bitcast %union.tpacket_uhdr* %12 to %struct.sockaddr_ll**
  %555 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %554, align 8
  %556 = load i16, i16* %20, align 2
  %557 = call i32 @TPACKET_ALIGN(i16 zeroext %556)
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %555, i64 %558
  store %struct.sockaddr_ll* %559, %struct.sockaddr_ll** %11, align 8
  %560 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %561 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %562 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %561, i32 0, i32 5
  %563 = load i32, i32* %562, align 8
  %564 = call i32 @dev_parse_header(%struct.sk_buff* %560, i32 %563)
  %565 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %566 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %565, i32 0, i32 6
  store i32 %564, i32* %566, align 4
  %567 = load i32, i32* @AF_PACKET, align 4
  %568 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %569 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %568, i32 0, i32 4
  store i32 %567, i32* %569, align 4
  %570 = load %struct.net_device*, %struct.net_device** %6, align 8
  %571 = getelementptr inbounds %struct.net_device, %struct.net_device* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 4
  %573 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %574 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %573, i32 0, i32 3
  store i32 %572, i32* %574, align 8
  %575 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %576 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %575, i32 0, i32 4
  %577 = load i32, i32* %576, align 8
  %578 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %579 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %578, i32 0, i32 2
  store i32 %577, i32* %579, align 4
  %580 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %581 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %580, i32 0, i32 1
  %582 = load i64, i64* %581, align 8
  %583 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %584 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %583, i32 0, i32 0
  store i64 %582, i64* %584, align 8
  %585 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %586 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %585, i32 0, i32 3
  %587 = load i32, i32* %586, align 4
  %588 = call i64 @unlikely(i32 %587)
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %590, label %596

590:                                              ; preds = %553
  %591 = load %struct.net_device*, %struct.net_device** %8, align 8
  %592 = getelementptr inbounds %struct.net_device, %struct.net_device* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %595 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %594, i32 0, i32 1
  store i32 %593, i32* %595, align 8
  br label %602

596:                                              ; preds = %553
  %597 = load %struct.net_device*, %struct.net_device** %6, align 8
  %598 = getelementptr inbounds %struct.net_device, %struct.net_device* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %601 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %600, i32 0, i32 1
  store i32 %599, i32* %601, align 8
  br label %602

602:                                              ; preds = %596, %590
  %603 = call i32 (...) @smp_mb()
  %604 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %605 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 8
  %607 = icmp sle i32 %606, 129
  br i1 %607, label %608, label %619

608:                                              ; preds = %602
  %609 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %610 = bitcast %union.tpacket_uhdr* %12 to %struct.sockaddr_ll**
  %611 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %610, align 8
  %612 = load i64, i64* %17, align 8
  %613 = call i32 @__packet_set_status(%struct.packet_sock* %609, %struct.sockaddr_ll* %611, i64 %612)
  %614 = load %struct.sock*, %struct.sock** %9, align 8
  %615 = getelementptr inbounds %struct.sock, %struct.sock* %614, i32 0, i32 2
  %616 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %615, align 8
  %617 = load %struct.sock*, %struct.sock** %9, align 8
  %618 = call i32 %616(%struct.sock* %617)
  br label %623

619:                                              ; preds = %602
  %620 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %621 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %620, i32 0, i32 5
  %622 = call i32 @prb_clear_blk_fill_status(%struct.TYPE_16__* %621)
  br label %623

623:                                              ; preds = %619, %608
  br label %624

624:                                              ; preds = %652, %623, %114, %107
  %625 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %13, align 8
  %626 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %627 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %626, i32 0, i32 3
  %628 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %627, align 8
  %629 = icmp ne %struct.sockaddr_ll* %625, %628
  br i1 %629, label %630, label %641

630:                                              ; preds = %624
  %631 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %632 = call i64 @skb_shared(%struct.sk_buff* %631)
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %641

634:                                              ; preds = %630
  %635 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %13, align 8
  %636 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %637 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %636, i32 0, i32 3
  store %struct.sockaddr_ll* %635, %struct.sockaddr_ll** %637, align 8
  %638 = load i32, i32* %14, align 4
  %639 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %640 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %639, i32 0, i32 0
  store i32 %638, i32* %640, align 8
  br label %641

641:                                              ; preds = %634, %630, %624
  br label %642

642:                                              ; preds = %641, %61, %48
  %643 = load i32, i32* %24, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %648, label %645

645:                                              ; preds = %642
  %646 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %647 = call i32 @consume_skb(%struct.sk_buff* %646)
  br label %651

648:                                              ; preds = %642
  %649 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %650 = call i32 @kfree_skb(%struct.sk_buff* %649)
  br label %651

651:                                              ; preds = %648, %645
  ret i32 0

652:                                              ; preds = %370, %335
  %653 = load %struct.sock*, %struct.sock** %9, align 8
  %654 = getelementptr inbounds %struct.sock, %struct.sock* %653, i32 0, i32 3
  %655 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %654, i32 0, i32 0
  %656 = call i32 @spin_unlock(i32* %655)
  %657 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %658 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %657, i32 0, i32 4
  %659 = call i32 @atomic_inc(i32* %658)
  store i32 1, i32* %24, align 4
  %660 = load %struct.sock*, %struct.sock** %9, align 8
  %661 = getelementptr inbounds %struct.sock, %struct.sock* %660, i32 0, i32 2
  %662 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %661, align 8
  %663 = load %struct.sock*, %struct.sock** %9, align 8
  %664 = call i32 %662(%struct.sock* %663)
  %665 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %666 = call i32 @kfree_skb(%struct.sk_buff* %665)
  br label %624
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @TPACKET_ALIGN(i16 zeroext) #1

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, %struct.sockaddr_ll*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @run_filter(%struct.sk_buff*, %struct.sock*, i32) #1

declare dso_local i64 @__packet_rcv_has_room(%struct.packet_sock*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_18__* @GET_PBDQC_FROM_RB(%struct.TYPE_16__*) #1

declare dso_local i32 @pr_err_once(i8*, i32, i32, i16 zeroext) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sockaddr_ll* @packet_current_rx_frame(%struct.packet_sock*, %struct.sk_buff*, i32, i16 zeroext) #1

declare dso_local i32 @packet_increment_rx_head(%struct.packet_sock*, %struct.TYPE_16__*) #1

declare dso_local i64 @virtio_net_hdr_from_skb(%struct.sk_buff*, %struct.sockaddr_ll*, i32, i32, i32) #1

declare dso_local i32 @vio_le(...) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_17__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, %struct.sockaddr_ll*, i32) #1

declare dso_local i64 @tpacket_get_timestamp(%struct.sk_buff*, %struct.timespec*, i32) #1

declare dso_local i32 @getnstimeofday(%struct.timespec*) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dev_parse_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @__packet_set_status(%struct.packet_sock*, %struct.sockaddr_ll*, i64) #1

declare dso_local i32 @prb_clear_blk_fill_status(%struct.TYPE_16__*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
