; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32*, %struct.net_device* }
%struct.packet_type = type { %struct.sock* }
%struct.sock = type { i64, i64, i32, i32 (%struct.sock*)*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.net_device = type { i32, i32, i64 }
%struct.sockaddr_ll = type { i64, i32, i32, i32, i32 }
%struct.packet_sock = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.sockaddr_ll }

@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@PACKET_OUTGOING = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@MAX_ADDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @packet_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sockaddr_ll*, align 8
  %12 = alloca %struct.packet_sock*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PACKET_LOOPBACK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %253

31:                                               ; preds = %4
  %32 = load %struct.packet_type*, %struct.packet_type** %8, align 8
  %33 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %32, i32 0, i32 0
  %34 = load %struct.sock*, %struct.sock** %33, align 8
  store %struct.sock* %34, %struct.sock** %10, align 8
  %35 = load %struct.sock*, %struct.sock** %10, align 8
  %36 = call %struct.packet_sock* @pkt_sk(%struct.sock* %35)
  store %struct.packet_sock* %36, %struct.packet_sock** %12, align 8
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = call i32 @dev_net(%struct.net_device* %37)
  %39 = load %struct.sock*, %struct.sock** %10, align 8
  %40 = call i32 @sock_net(%struct.sock* %39)
  %41 = call i32 @net_eq(i32 %38, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %253

44:                                               ; preds = %31
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 3
  store %struct.net_device* %45, %struct.net_device** %47, align 8
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %44
  %53 = load %struct.sock*, %struct.sock** %10, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SOCK_DGRAM, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call i32 @skb_mac_header(%struct.sk_buff* %63)
  %65 = sext i32 %64 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = call i32 @skb_push(%struct.sk_buff* %59, i32* %67)
  br label %81

69:                                               ; preds = %52
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PACKET_OUTGOING, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @skb_network_offset(%struct.sk_buff* %77)
  %79 = call i32 @skb_pull(%struct.sk_buff* %76, i32 %78)
  br label %80

80:                                               ; preds = %75, %69
  br label %81

81:                                               ; preds = %80, %58
  br label %82

82:                                               ; preds = %81, %44
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %15, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = load %struct.sock*, %struct.sock** %10, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @run_filter(%struct.sk_buff* %86, %struct.sock* %87, i32 %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %82
  br label %235

93:                                               ; preds = %82
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ugt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 5
  %102 = call i64 @atomic_read(i32* %101)
  %103 = load %struct.sock*, %struct.sock** %10, align 8
  %104 = getelementptr inbounds %struct.sock, %struct.sock* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %228

108:                                              ; preds = %99
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call i64 @skb_shared(%struct.sk_buff* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %108
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = load i32, i32* @GFP_ATOMIC, align 4
  %115 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %113, i32 %114)
  store %struct.sk_buff* %115, %struct.sk_buff** %18, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %117 = icmp eq %struct.sk_buff* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %228

119:                                              ; preds = %112
  %120 = load i32*, i32** %13, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %120, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load i32*, i32** %13, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 2
  store i32* %126, i32** %128, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %125, %119
  %133 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %134 = call i32 @consume_skb(%struct.sk_buff* %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %135, %struct.sk_buff** %6, align 8
  br label %136

136:                                              ; preds = %132, %108
  %137 = load i64, i64* @MAX_ADDR_LEN, align 8
  %138 = add i64 32, %137
  %139 = sub i64 %138, 8
  %140 = call i32 @sock_skb_cb_check_size(i64 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = call %struct.TYPE_10__* @PACKET_SKB_CB(%struct.sk_buff* %141)
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  store %struct.sockaddr_ll* %144, %struct.sockaddr_ll** %11, align 8
  %145 = load %struct.net_device*, %struct.net_device** %7, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %149 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %154 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.packet_sock*, %struct.packet_sock** %12, align 8
  %156 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @unlikely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %136
  %161 = load %struct.net_device*, %struct.net_device** %9, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %165 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  br label %172

166:                                              ; preds = %136
  %167 = load %struct.net_device*, %struct.net_device** %7, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %171 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %166, %160
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %174 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %175 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @dev_parse_header(%struct.sk_buff* %173, i32 %176)
  %178 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %11, align 8
  %179 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %184 = call %struct.TYPE_10__* @PACKET_SKB_CB(%struct.sk_buff* %183)
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  store i32 %182, i32* %186, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %188 = load i32, i32* %15, align 4
  %189 = call i64 @pskb_trim(%struct.sk_buff* %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %172
  br label %228

192:                                              ; preds = %172
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = load %struct.sock*, %struct.sock** %10, align 8
  %195 = call i32 @skb_set_owner_r(%struct.sk_buff* %193, %struct.sock* %194)
  %196 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 3
  store %struct.net_device* null, %struct.net_device** %197, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %199 = call i32 @skb_dst_drop(%struct.sk_buff* %198)
  %200 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %201 = call i32 @nf_reset_ct(%struct.sk_buff* %200)
  %202 = load %struct.sock*, %struct.sock** %10, align 8
  %203 = getelementptr inbounds %struct.sock, %struct.sock* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = call i32 @spin_lock(i32* %204)
  %206 = load %struct.packet_sock*, %struct.packet_sock** %12, align 8
  %207 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load %struct.sock*, %struct.sock** %10, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %214 = call i32 @sock_skb_set_dropcount(%struct.sock* %212, %struct.sk_buff* %213)
  %215 = load %struct.sock*, %struct.sock** %10, align 8
  %216 = getelementptr inbounds %struct.sock, %struct.sock* %215, i32 0, i32 4
  %217 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %218 = call i32 @__skb_queue_tail(%struct.TYPE_9__* %216, %struct.sk_buff* %217)
  %219 = load %struct.sock*, %struct.sock** %10, align 8
  %220 = getelementptr inbounds %struct.sock, %struct.sock* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = call i32 @spin_unlock(i32* %221)
  %223 = load %struct.sock*, %struct.sock** %10, align 8
  %224 = getelementptr inbounds %struct.sock, %struct.sock* %223, i32 0, i32 3
  %225 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %224, align 8
  %226 = load %struct.sock*, %struct.sock** %10, align 8
  %227 = call i32 %225(%struct.sock* %226)
  store i32 0, i32* %5, align 4
  br label %263

228:                                              ; preds = %191, %118, %107
  store i32 1, i32* %17, align 4
  %229 = load %struct.packet_sock*, %struct.packet_sock** %12, align 8
  %230 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %229, i32 0, i32 0
  %231 = call i32 @atomic_inc(i32* %230)
  %232 = load %struct.sock*, %struct.sock** %10, align 8
  %233 = getelementptr inbounds %struct.sock, %struct.sock* %232, i32 0, i32 2
  %234 = call i32 @atomic_inc(i32* %233)
  br label %235

235:                                              ; preds = %228, %92
  %236 = load i32*, i32** %13, align 8
  %237 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %238 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = icmp ne i32* %236, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %235
  %242 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %243 = call i64 @skb_shared(%struct.sk_buff* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %241
  %246 = load i32*, i32** %13, align 8
  %247 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %248 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %247, i32 0, i32 2
  store i32* %246, i32** %248, align 8
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %251 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  br label %252

252:                                              ; preds = %245, %241, %235
  br label %253

253:                                              ; preds = %252, %43, %30
  %254 = load i32, i32* %17, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %258 = call i32 @consume_skb(%struct.sk_buff* %257)
  br label %262

259:                                              ; preds = %253
  %260 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %261 = call i32 @kfree_skb(%struct.sk_buff* %260)
  br label %262

262:                                              ; preds = %259, %256
  store i32 0, i32* %5, align 4
  br label %263

263:                                              ; preds = %262, %192
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @run_filter(%struct.sk_buff*, %struct.sock*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @sock_skb_cb_check_size(i64) #1

declare dso_local %struct.TYPE_10__* @PACKET_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_parse_header(%struct.sk_buff*, i32) #1

declare dso_local i64 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sock_skb_set_dropcount(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_9__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
