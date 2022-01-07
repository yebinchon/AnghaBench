; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_bearer = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_node = type { i64, %struct.TYPE_3__, %struct.tipc_link_entry* }
%struct.TYPE_3__ = type { %struct.sk_buff_head, %struct.sk_buff_head, i32 }
%struct.tipc_link_entry = type { i32, %struct.sk_buff_head, i64, i32 }
%struct.tipc_msg = type { i32 }
%struct.TYPE_4__ = type { i32 }

@LINK_CONFIG = common dso_local global i32 0, align 4
@LINK_PROTOCOL = common dso_local global i32 0, align 4
@SELF_UP_PEER_UP = common dso_local global i64 0, align 8
@TUNNEL_PROTOCOL = common dso_local global i32 0, align 4
@TIPC_LINK_UP_EVT = common dso_local global i32 0, align 4
@TIPC_LINK_DOWN_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_rcv(%struct.net* %0, %struct.sk_buff* %1, %struct.tipc_bearer* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_bearer*, align 8
  %7 = alloca %struct.sk_buff_head, align 4
  %8 = alloca %struct.tipc_node*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tipc_link_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.tipc_bearer* %2, %struct.tipc_bearer** %6, align 8
  %16 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %17 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.net*, %struct.net** %4, align 8
  %20 = call i64 @tipc_own_addr(%struct.net* %19)
  store i64 %20, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %21 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %7)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.TYPE_4__* @TIPC_SKB_CB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = call i32 @tipc_msg_validate(%struct.sk_buff** %5)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %265

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %33)
  store %struct.tipc_msg* %34, %struct.tipc_msg** %9, align 8
  %35 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %36 = call i32 @msg_user(%struct.tipc_msg* %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %38 = call i64 @msg_bcast_ack(%struct.tipc_msg* %37)
  store i64 %38, i64* %15, align 8
  %39 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %40 = call i32 @msg_non_seq(%struct.tipc_msg* %39)
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %32
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @LINK_CONFIG, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.net*, %struct.net** %4, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  call void @tipc_disc_rcv(%struct.net* %51, %struct.sk_buff* %52, %struct.tipc_bearer* %53)
  br label %268

54:                                               ; preds = %43
  %55 = load %struct.net*, %struct.net** %4, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load i32, i32* %10, align 4
  call void @tipc_node_bc_rcv(%struct.net* %55, %struct.sk_buff* %56, i32 %57)
  br label %268

58:                                               ; preds = %32
  %59 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %60 = call i32 @msg_short(%struct.tipc_msg* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %64 = call i64 @msg_destnode(%struct.tipc_msg* %63)
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %64, %65
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i1 [ false, %58 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %265

73:                                               ; preds = %67
  %74 = load %struct.net*, %struct.net** %4, align 8
  %75 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %76 = call i32 @msg_prevnode(%struct.tipc_msg* %75)
  %77 = call %struct.tipc_node* @tipc_node_find(%struct.net* %74, i32 %76)
  store %struct.tipc_node* %77, %struct.tipc_node** %8, align 8
  %78 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %79 = icmp ne %struct.tipc_node* %78, null
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %265

85:                                               ; preds = %73
  %86 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %87 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %86, i32 0, i32 2
  %88 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %88, i64 %90
  store %struct.tipc_link_entry* %91, %struct.tipc_link_entry** %11, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @LINK_PROTOCOL, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %100 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @tipc_node_bc_sync_rcv(%struct.tipc_node* %99, %struct.tipc_msg* %100, i32 %101, %struct.sk_buff_head* %7)
  br label %123

103:                                              ; preds = %85
  %104 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %105 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @tipc_link_acked(i32 %107)
  %109 = load i64, i64* %15, align 8
  %110 = icmp ne i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %103
  %115 = load %struct.net*, %struct.net** %4, align 8
  %116 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %117 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %121 = call i32 @tipc_bcast_ack_rcv(%struct.net* %115, i32 %119, %struct.tipc_msg* %120)
  br label %122

122:                                              ; preds = %114, %103
  br label %123

123:                                              ; preds = %122, %98
  %124 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %125 = call i32 @tipc_node_read_lock(%struct.tipc_node* %124)
  %126 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %127 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SELF_UP_PEER_UP, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @TUNNEL_PROTOCOL, align 4
  %134 = icmp ne i32 %132, %133
  br label %135

135:                                              ; preds = %131, %123
  %136 = phi i1 [ false, %123 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %138 = call i64 @likely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %135
  %141 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %11, align 8
  %142 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %141, i32 0, i32 3
  %143 = call i32 @spin_lock_bh(i32* %142)
  %144 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %11, align 8
  %145 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %11, align 8
  %150 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = call i32 @tipc_link_rcv(i64 %151, %struct.sk_buff* %152, %struct.sk_buff_head* %7)
  store i32 %153, i32* %14, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %154

154:                                              ; preds = %148, %140
  %155 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %11, align 8
  %156 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %155, i32 0, i32 3
  %157 = call i32 @spin_unlock_bh(i32* %156)
  br label %158

158:                                              ; preds = %154, %135
  %159 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %160 = call i32 @tipc_node_read_unlock(%struct.tipc_node* %159)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %162 = ptrtoint %struct.sk_buff* %161 to i32
  %163 = call i64 @unlikely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %194

165:                                              ; preds = %158
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = call i32 @skb_linearize(%struct.sk_buff* %166)
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %265

171:                                              ; preds = %165
  %172 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %173 = call i32 @tipc_node_write_lock(%struct.tipc_node* %172)
  %174 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %176 = load i32, i32* %10, align 4
  %177 = call i64 @tipc_node_check_state(%struct.tipc_node* %174, %struct.sk_buff* %175, i32 %176, %struct.sk_buff_head* %7)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %171
  %180 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %11, align 8
  %181 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %11, align 8
  %186 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %189 = call i32 @tipc_link_rcv(i64 %187, %struct.sk_buff* %188, %struct.sk_buff_head* %7)
  store i32 %189, i32* %14, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %190

190:                                              ; preds = %184, %179
  br label %191

191:                                              ; preds = %190, %171
  %192 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %193 = call i32 @tipc_node_write_unlock(%struct.tipc_node* %192)
  br label %194

194:                                              ; preds = %191, %158
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* @TIPC_LINK_UP_EVT, align 4
  %197 = and i32 %195, %196
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @tipc_node_link_up(%struct.tipc_node* %201, i32 %202, %struct.sk_buff_head* %7)
  br label %204

204:                                              ; preds = %200, %194
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* @TIPC_LINK_DOWN_EVT, align 4
  %207 = and i32 %205, %206
  %208 = call i64 @unlikely(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @tipc_node_link_down(%struct.tipc_node* %211, i32 %212, i32 0)
  br label %214

214:                                              ; preds = %210, %204
  %215 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %216 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  %218 = call i32 @skb_queue_empty(%struct.sk_buff_head* %217)
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  %222 = call i64 @unlikely(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %214
  %225 = load %struct.net*, %struct.net** %4, align 8
  %226 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %227 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  %229 = call i32 @tipc_named_rcv(%struct.net* %225, %struct.sk_buff_head* %228)
  br label %230

230:                                              ; preds = %224, %214
  %231 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %232 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  %234 = call i32 @skb_queue_empty(%struct.sk_buff_head* %233)
  %235 = icmp ne i32 %234, 0
  %236 = xor i1 %235, true
  %237 = zext i1 %236 to i32
  %238 = call i64 @unlikely(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %230
  %241 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %242 = call i32 @tipc_node_mcast_rcv(%struct.tipc_node* %241)
  br label %243

243:                                              ; preds = %240, %230
  %244 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %11, align 8
  %245 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %244, i32 0, i32 1
  %246 = call i32 @skb_queue_empty(%struct.sk_buff_head* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %243
  %249 = load %struct.net*, %struct.net** %4, align 8
  %250 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %11, align 8
  %251 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %250, i32 0, i32 1
  %252 = call i32 @tipc_sk_rcv(%struct.net* %249, %struct.sk_buff_head* %251)
  br label %253

253:                                              ; preds = %248, %243
  %254 = call i32 @skb_queue_empty(%struct.sk_buff_head* %7)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %262, label %256

256:                                              ; preds = %253
  %257 = load %struct.net*, %struct.net** %4, align 8
  %258 = load i32, i32* %10, align 4
  %259 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %11, align 8
  %260 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %259, i32 0, i32 0
  %261 = call i32 @tipc_bearer_xmit(%struct.net* %257, i32 %258, %struct.sk_buff_head* %7, i32* %260)
  br label %262

262:                                              ; preds = %256, %253
  %263 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %264 = call i32 @tipc_node_put(%struct.tipc_node* %263)
  br label %265

265:                                              ; preds = %262, %170, %84, %72, %31
  %266 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %267 = call i32 @kfree_skb(%struct.sk_buff* %266)
  br label %268

268:                                              ; preds = %265, %54, %50
  ret void
}

declare dso_local i64 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local %struct.TYPE_4__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tipc_msg_validate(%struct.sk_buff**) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i64 @msg_bcast_ack(%struct.tipc_msg*) #1

declare dso_local i32 @msg_non_seq(%struct.tipc_msg*) #1

declare dso_local void @tipc_disc_rcv(%struct.net*, %struct.sk_buff*, %struct.tipc_bearer*) #1

declare dso_local void @tipc_node_bc_rcv(%struct.net*, %struct.sk_buff*, i32) #1

declare dso_local i32 @msg_short(%struct.tipc_msg*) #1

declare dso_local i64 @msg_destnode(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_node* @tipc_node_find(%struct.net*, i32) #1

declare dso_local i32 @msg_prevnode(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_node_bc_sync_rcv(%struct.tipc_node*, %struct.tipc_msg*, i32, %struct.sk_buff_head*) #1

declare dso_local i64 @tipc_link_acked(i32) #1

declare dso_local i32 @tipc_bcast_ack_rcv(%struct.net*, i32, %struct.tipc_msg*) #1

declare dso_local i32 @tipc_node_read_lock(%struct.tipc_node*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tipc_link_rcv(i64, %struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_node_read_unlock(%struct.tipc_node*) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @tipc_node_write_lock(%struct.tipc_node*) #1

declare dso_local i64 @tipc_node_check_state(%struct.tipc_node*, %struct.sk_buff*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_write_unlock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_link_up(%struct.tipc_node*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_link_down(%struct.tipc_node*, i32, i32) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_named_rcv(%struct.net*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_mcast_rcv(%struct.tipc_node*) #1

declare dso_local i32 @tipc_sk_rcv(%struct.net*, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_bearer_xmit(%struct.net*, i32, %struct.sk_buff_head*, i32*) #1

declare dso_local i32 @tipc_node_put(%struct.tipc_node*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
