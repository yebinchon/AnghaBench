; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_rx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i16*, i32, i32, %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32 }
%struct.net_device = type { i32 }
%struct.nr_sock = type { i32, i16, i16, i32, i32, i16, i16, i32, i32, i64, i64, i64, i64, i8*, i8*, i8* }

@NR_PROTOEXT = common dso_local global i16 0, align 2
@NR_PROTO_IP = common dso_local global i16 0, align 2
@NR_NETWORK_LEN = common dso_local global i64 0, align 8
@NR_TRANSPORT_LEN = common dso_local global i64 0, align 8
@NR_CONNACK = common dso_local global i16 0, align 2
@NR_CHOKE_FLAG = common dso_local global i16 0, align 2
@NR_CONNREQ = common dso_local global i16 0, align 2
@sysctl_netrom_reset_circuit = common dso_local global i64 0, align 8
@NR_RESET = common dso_local global i16 0, align 2
@sock_efree = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@circuit = common dso_local global i32 0, align 4
@HZ = common dso_local global i16 0, align 2
@NR_STATE_3 = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nr_rx_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.nr_sock*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @skb_orphan(%struct.sk_buff* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i16*, i16** %24, align 8
  %26 = getelementptr inbounds i16, i16* %25, i64 0
  %27 = bitcast i16* %26 to i8**
  store i8** %27, i8*** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i16*, i16** %29, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 7
  %32 = bitcast i16* %31 to i8**
  store i8** %32, i8*** %10, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i16*, i16** %34, align 8
  %36 = getelementptr inbounds i16, i16* %35, i64 15
  %37 = load i16, i16* %36, align 2
  store i16 %37, i16* %12, align 2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i16*, i16** %39, align 8
  %41 = getelementptr inbounds i16, i16* %40, i64 16
  %42 = load i16, i16* %41, align 2
  store i16 %42, i16* %13, align 2
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i16*, i16** %44, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 17
  %47 = load i16, i16* %46, align 2
  store i16 %47, i16* %14, align 2
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i16*, i16** %49, align 8
  %51 = getelementptr inbounds i16, i16* %50, i64 18
  %52 = load i16, i16* %51, align 2
  store i16 %52, i16* %15, align 2
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i16*, i16** %54, align 8
  %56 = getelementptr inbounds i16, i16* %55, i64 19
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 15
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %16, align 2
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i16*, i16** %62, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 19
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 240
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %17, align 2
  %69 = load i16, i16* %16, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* @NR_PROTOEXT, align 2
  %72 = zext i16 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %2
  %75 = load i16, i16* %12, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* @NR_PROTO_IP, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load i16, i16* %13, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, i16* @NR_PROTO_IP, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load i64, i64* @NR_NETWORK_LEN, align 8
  %89 = load i64, i64* @NR_TRANSPORT_LEN, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @skb_pull(%struct.sk_buff* %87, i64 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @skb_reset_transport_header(%struct.sk_buff* %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = call i32 @nr_rx_ip(%struct.sk_buff* %94, %struct.net_device* %95)
  store i32 %96, i32* %3, align 4
  br label %379

97:                                               ; preds = %80, %74, %2
  store %struct.sock* null, %struct.sock** %6, align 8
  %98 = load i16, i16* %12, align 2
  %99 = zext i16 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = load i16, i16* %13, align 2
  %103 = zext i16 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load i16, i16* %16, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* @NR_CONNACK, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load i16, i16* %17, align 2
  %113 = zext i16 %112 to i32
  %114 = load i16, i16* @NR_CHOKE_FLAG, align 2
  %115 = zext i16 %114 to i32
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i16, i16* %14, align 2
  %119 = load i16, i16* %15, align 2
  %120 = load i8**, i8*** %9, align 8
  %121 = call %struct.sock* @nr_find_peer(i16 zeroext %118, i16 zeroext %119, i8** %120)
  store %struct.sock* %121, %struct.sock** %6, align 8
  br label %122

122:                                              ; preds = %117, %111, %105
  br label %139

123:                                              ; preds = %101, %97
  %124 = load i16, i16* %16, align 2
  %125 = zext i16 %124 to i32
  %126 = load i16, i16* @NR_CONNREQ, align 2
  %127 = zext i16 %126 to i32
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i16, i16* %12, align 2
  %131 = load i16, i16* %13, align 2
  %132 = load i8**, i8*** %9, align 8
  %133 = call %struct.sock* @nr_find_peer(i16 zeroext %130, i16 zeroext %131, i8** %132)
  store %struct.sock* %133, %struct.sock** %6, align 8
  br label %138

134:                                              ; preds = %123
  %135 = load i16, i16* %12, align 2
  %136 = load i16, i16* %13, align 2
  %137 = call %struct.sock* @nr_find_socket(i16 zeroext %135, i16 zeroext %136)
  store %struct.sock* %137, %struct.sock** %6, align 8
  br label %138

138:                                              ; preds = %134, %129
  br label %139

139:                                              ; preds = %138, %122
  %140 = load %struct.sock*, %struct.sock** %6, align 8
  %141 = icmp ne %struct.sock* %140, null
  br i1 %141, label %142, label %174

142:                                              ; preds = %139
  %143 = load %struct.sock*, %struct.sock** %6, align 8
  %144 = call i32 @bh_lock_sock(%struct.sock* %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = call i32 @skb_reset_transport_header(%struct.sk_buff* %145)
  %147 = load i16, i16* %16, align 2
  %148 = zext i16 %147 to i32
  %149 = load i16, i16* @NR_CONNACK, align 2
  %150 = zext i16 %149 to i32
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %142
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 22
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load %struct.sock*, %struct.sock** %6, align 8
  %159 = call %struct.nr_sock* @nr_sk(%struct.sock* %158)
  %160 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  br label %165

161:                                              ; preds = %152, %142
  %162 = load %struct.sock*, %struct.sock** %6, align 8
  %163 = call %struct.nr_sock* @nr_sk(%struct.sock* %162)
  %164 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  br label %165

165:                                              ; preds = %161, %157
  %166 = load %struct.sock*, %struct.sock** %6, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %168 = call i32 @nr_process_rx_frame(%struct.sock* %166, %struct.sk_buff* %167)
  store i32 %168, i32* %20, align 4
  %169 = load %struct.sock*, %struct.sock** %6, align 8
  %170 = call i32 @bh_unlock_sock(%struct.sock* %169)
  %171 = load %struct.sock*, %struct.sock** %6, align 8
  %172 = call i32 @sock_put(%struct.sock* %171)
  %173 = load i32, i32* %20, align 4
  store i32 %173, i32* %3, align 4
  br label %379

174:                                              ; preds = %139
  %175 = load i16, i16* %16, align 2
  %176 = zext i16 %175 to i32
  %177 = load i16, i16* @NR_CONNREQ, align 2
  %178 = zext i16 %177 to i32
  %179 = icmp ne i32 %176, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %174
  %181 = load i64, i64* @sysctl_netrom_reset_circuit, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %180
  %184 = load i16, i16* %16, align 2
  %185 = zext i16 %184 to i32
  %186 = load i16, i16* @NR_RESET, align 2
  %187 = zext i16 %186 to i32
  %188 = icmp ne i32 %185, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %183
  %190 = load i16, i16* %17, align 2
  %191 = zext i16 %190 to i32
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189, %183
  %194 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %195 = call i32 @nr_transmit_reset(%struct.sk_buff* %194, i32 1)
  br label %196

196:                                              ; preds = %193, %189, %180
  store i32 0, i32* %3, align 4
  br label %379

197:                                              ; preds = %174
  %198 = load i8**, i8*** %10, align 8
  %199 = call %struct.sock* @nr_find_listener(i8** %198)
  store %struct.sock* %199, %struct.sock** %6, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 0
  %202 = load i16*, i16** %201, align 8
  %203 = getelementptr inbounds i16, i16* %202, i64 21
  %204 = bitcast i16* %203 to i8**
  store i8** %204, i8*** %11, align 8
  %205 = load %struct.sock*, %struct.sock** %6, align 8
  %206 = icmp eq %struct.sock* %205, null
  br i1 %206, label %215, label %207

207:                                              ; preds = %197
  %208 = load %struct.sock*, %struct.sock** %6, align 8
  %209 = call i64 @sk_acceptq_is_full(%struct.sock* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = load %struct.sock*, %struct.sock** %6, align 8
  %213 = call %struct.sock* @nr_make_new(%struct.sock* %212)
  store %struct.sock* %213, %struct.sock** %7, align 8
  %214 = icmp eq %struct.sock* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %211, %207, %197
  %216 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %217 = call i32 @nr_transmit_refusal(%struct.sk_buff* %216, i32 0)
  %218 = load %struct.sock*, %struct.sock** %6, align 8
  %219 = icmp ne %struct.sock* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load %struct.sock*, %struct.sock** %6, align 8
  %222 = call i32 @sock_put(%struct.sock* %221)
  br label %223

223:                                              ; preds = %220, %215
  store i32 0, i32* %3, align 4
  br label %379

224:                                              ; preds = %211
  %225 = load %struct.sock*, %struct.sock** %6, align 8
  %226 = call i32 @bh_lock_sock(%struct.sock* %225)
  %227 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %228 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %227, i32 0, i32 0
  %229 = load i16*, i16** %228, align 8
  %230 = getelementptr inbounds i16, i16* %229, i64 20
  %231 = load i16, i16* %230, align 2
  store i16 %231, i16* %18, align 2
  %232 = load %struct.sock*, %struct.sock** %7, align 8
  %233 = call i32 @sock_hold(%struct.sock* %232)
  %234 = load %struct.sock*, %struct.sock** %7, align 8
  %235 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %236 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %235, i32 0, i32 3
  store %struct.sock* %234, %struct.sock** %236, align 8
  %237 = load i32, i32* @sock_efree, align 4
  %238 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %239 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %238, i32 0, i32 2
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* @TCP_ESTABLISHED, align 4
  %241 = load %struct.sock*, %struct.sock** %7, align 8
  %242 = getelementptr inbounds %struct.sock, %struct.sock* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 4
  %243 = load %struct.sock*, %struct.sock** %7, align 8
  %244 = call %struct.nr_sock* @nr_sk(%struct.sock* %243)
  store %struct.nr_sock* %244, %struct.nr_sock** %8, align 8
  %245 = load i8**, i8*** %10, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %248 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %247, i32 0, i32 15
  store i8* %246, i8** %248, align 8
  %249 = load i8**, i8*** %9, align 8
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %252 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %251, i32 0, i32 14
  store i8* %250, i8** %252, align 8
  %253 = load i8**, i8*** %11, align 8
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %256 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %255, i32 0, i32 13
  store i8* %254, i8** %256, align 8
  %257 = load i16, i16* %12, align 2
  %258 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %259 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %258, i32 0, i32 1
  store i16 %257, i16* %259, align 4
  %260 = load i16, i16* %13, align 2
  %261 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %262 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %261, i32 0, i32 2
  store i16 %260, i16* %262, align 2
  %263 = load %struct.sock*, %struct.sock** %6, align 8
  %264 = call i32 @bh_unlock_sock(%struct.sock* %263)
  %265 = call i32 (...) @nr_find_next_circuit()
  store i32 %265, i32* @circuit, align 4
  %266 = load %struct.sock*, %struct.sock** %6, align 8
  %267 = call i32 @bh_lock_sock(%struct.sock* %266)
  %268 = load i32, i32* @circuit, align 4
  %269 = sdiv i32 %268, 256
  %270 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %271 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %270, i32 0, i32 3
  store i32 %269, i32* %271, align 8
  %272 = load i32, i32* @circuit, align 4
  %273 = srem i32 %272, 256
  %274 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %275 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %274, i32 0, i32 4
  store i32 %273, i32* %275, align 4
  %276 = load i32, i32* @circuit, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* @circuit, align 4
  %278 = load i16, i16* %18, align 2
  %279 = zext i16 %278 to i32
  %280 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %281 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %280, i32 0, i32 5
  %282 = load i16, i16* %281, align 8
  %283 = zext i16 %282 to i32
  %284 = icmp slt i32 %279, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %224
  %286 = load i16, i16* %18, align 2
  %287 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %288 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %287, i32 0, i32 5
  store i16 %286, i16* %288, align 8
  br label %289

289:                                              ; preds = %285, %224
  %290 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %291 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = icmp eq i32 %292, 37
  br i1 %293, label %294, label %332

294:                                              ; preds = %289
  %295 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %296 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %295, i32 0, i32 0
  %297 = load i16*, i16** %296, align 8
  %298 = getelementptr inbounds i16, i16* %297, i64 36
  %299 = load i16, i16* %298, align 2
  %300 = zext i16 %299 to i32
  %301 = mul nsw i32 %300, 256
  %302 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %303 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %302, i32 0, i32 0
  %304 = load i16*, i16** %303, align 8
  %305 = getelementptr inbounds i16, i16* %304, i64 35
  %306 = load i16, i16* %305, align 2
  %307 = zext i16 %306 to i32
  %308 = add nsw i32 %301, %307
  %309 = trunc i32 %308 to i16
  store i16 %309, i16* %19, align 2
  %310 = load i16, i16* %19, align 2
  %311 = zext i16 %310 to i32
  %312 = load i16, i16* @HZ, align 2
  %313 = zext i16 %312 to i32
  %314 = mul nsw i32 %311, %313
  %315 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %316 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %315, i32 0, i32 6
  %317 = load i16, i16* %316, align 2
  %318 = zext i16 %317 to i32
  %319 = icmp slt i32 %314, %318
  br i1 %319, label %320, label %329

320:                                              ; preds = %294
  %321 = load i16, i16* %19, align 2
  %322 = zext i16 %321 to i32
  %323 = load i16, i16* @HZ, align 2
  %324 = zext i16 %323 to i32
  %325 = mul nsw i32 %322, %324
  %326 = trunc i32 %325 to i16
  %327 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %328 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %327, i32 0, i32 6
  store i16 %326, i16* %328, align 2
  br label %329

329:                                              ; preds = %320, %294
  %330 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %331 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %330, i32 0, i32 0
  store i32 1, i32* %331, align 8
  br label %335

332:                                              ; preds = %289
  %333 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %334 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %333, i32 0, i32 0
  store i32 0, i32* %334, align 8
  br label %335

335:                                              ; preds = %332, %329
  %336 = load %struct.sock*, %struct.sock** %7, align 8
  %337 = load i16, i16* @NR_CONNACK, align 2
  %338 = call i32 @nr_write_internal(%struct.sock* %336, i16 zeroext %337)
  %339 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %340 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %339, i32 0, i32 7
  store i32 0, i32* %340, align 4
  %341 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %342 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %341, i32 0, i32 12
  store i64 0, i64* %342, align 8
  %343 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %344 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %343, i32 0, i32 11
  store i64 0, i64* %344, align 8
  %345 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %346 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %345, i32 0, i32 10
  store i64 0, i64* %346, align 8
  %347 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %348 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %347, i32 0, i32 9
  store i64 0, i64* %348, align 8
  %349 = load i32, i32* @NR_STATE_3, align 4
  %350 = load %struct.nr_sock*, %struct.nr_sock** %8, align 8
  %351 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %350, i32 0, i32 8
  store i32 %349, i32* %351, align 8
  %352 = load %struct.sock*, %struct.sock** %6, align 8
  %353 = call i32 @sk_acceptq_added(%struct.sock* %352)
  %354 = load %struct.sock*, %struct.sock** %6, align 8
  %355 = getelementptr inbounds %struct.sock, %struct.sock* %354, i32 0, i32 1
  %356 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %357 = call i32 @skb_queue_head(i32* %355, %struct.sk_buff* %356)
  %358 = load %struct.sock*, %struct.sock** %6, align 8
  %359 = load i32, i32* @SOCK_DEAD, align 4
  %360 = call i32 @sock_flag(%struct.sock* %358, i32 %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %368, label %362

362:                                              ; preds = %335
  %363 = load %struct.sock*, %struct.sock** %6, align 8
  %364 = getelementptr inbounds %struct.sock, %struct.sock* %363, i32 0, i32 0
  %365 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %364, align 8
  %366 = load %struct.sock*, %struct.sock** %6, align 8
  %367 = call i32 %365(%struct.sock* %366)
  br label %368

368:                                              ; preds = %362, %335
  %369 = load %struct.sock*, %struct.sock** %6, align 8
  %370 = call i32 @bh_unlock_sock(%struct.sock* %369)
  %371 = load %struct.sock*, %struct.sock** %6, align 8
  %372 = call i32 @sock_put(%struct.sock* %371)
  %373 = load %struct.sock*, %struct.sock** %7, align 8
  %374 = call i32 @nr_insert_socket(%struct.sock* %373)
  %375 = load %struct.sock*, %struct.sock** %7, align 8
  %376 = call i32 @nr_start_heartbeat(%struct.sock* %375)
  %377 = load %struct.sock*, %struct.sock** %7, align 8
  %378 = call i32 @nr_start_idletimer(%struct.sock* %377)
  store i32 1, i32* %3, align 4
  br label %379

379:                                              ; preds = %368, %223, %196, %165, %86
  %380 = load i32, i32* %3, align 4
  ret i32 %380
}

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @nr_rx_ip(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local %struct.sock* @nr_find_peer(i16 zeroext, i16 zeroext, i8**) #1

declare dso_local %struct.sock* @nr_find_socket(i16 zeroext, i16 zeroext) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @nr_process_rx_frame(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @nr_transmit_reset(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock* @nr_find_listener(i8**) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.sock* @nr_make_new(%struct.sock*) #1

declare dso_local i32 @nr_transmit_refusal(%struct.sk_buff*, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @nr_find_next_circuit(...) #1

declare dso_local i32 @nr_write_internal(%struct.sock*, i16 zeroext) #1

declare dso_local i32 @sk_acceptq_added(%struct.sock*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @nr_insert_socket(%struct.sock*) #1

declare dso_local i32 @nr_start_heartbeat(%struct.sock*) #1

declare dso_local i32 @nr_start_idletimer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
