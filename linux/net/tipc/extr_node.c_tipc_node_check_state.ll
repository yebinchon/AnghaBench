; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_check_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_check_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tipc_link* }
%struct.tipc_link = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.tipc_media_addr = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"skb for node state check\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@SELF_UP_PEER_UP = common dso_local global i32 0, align 4
@TUNNEL_PROTOCOL = common dso_local global i32 0, align 4
@MAX_BEARERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"PROTO invalid (2)!\00", align 1
@TIPC_DUMP_NONE = common dso_local global i32 0, align 4
@SELF_UP_PEER_COMING = common dso_local global i32 0, align 4
@PEER_ESTABL_CONTACT_EVT = common dso_local global i32 0, align 4
@SELF_DOWN_PEER_LEAVING = common dso_local global i32 0, align 4
@PEER_LOST_CONTACT_EVT = common dso_local global i32 0, align 4
@SELF_LEAVING_PEER_DOWN = common dso_local global i32 0, align 4
@LINK_PROTOCOL = common dso_local global i32 0, align 4
@FAILOVER_MSG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"node link down <- failover!\00", align 1
@NODE_FAILINGOVER = common dso_local global i32 0, align 4
@NODE_FAILOVER_END_EVT = common dso_local global i32 0, align 4
@LINK_FAILOVER_END_EVT = common dso_local global i32 0, align 4
@SYNCH_MSG = common dso_local global i32 0, align 4
@TIPC_TUNNEL_ENHANCED = common dso_local global i32 0, align 4
@LINK_SYNCH_BEGIN_EVT = common dso_local global i32 0, align 4
@NODE_SYNCH_BEGIN_EVT = common dso_local global i32 0, align 4
@NODE_SYNCHING = common dso_local global i32 0, align 4
@LINK_SYNCH_END_EVT = common dso_local global i32 0, align 4
@NODE_SYNCH_END_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_node*, %struct.sk_buff*, i32, %struct.sk_buff_head*)* @tipc_node_check_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_node_check_state(%struct.tipc_node* %0, %struct.sk_buff* %1, i32 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_node*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff_head*, align 8
  %10 = alloca %struct.tipc_msg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.tipc_link*, align 8
  %21 = alloca %struct.tipc_link*, align 8
  %22 = alloca %struct.tipc_link*, align 8
  %23 = alloca %struct.tipc_media_addr*, align 8
  %24 = alloca i32, align 4
  store %struct.tipc_node* %0, %struct.tipc_node** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %25)
  store %struct.tipc_msg* %26, %struct.tipc_msg** %10, align 8
  %27 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %28 = call i32 @msg_user(%struct.tipc_msg* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %30 = call i32 @msg_type(%struct.tipc_msg* %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %32 = call i32 @msg_seqno(%struct.tipc_msg* %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %34 = call i32 @msg_msgcnt(%struct.tipc_msg* %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %36 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %19, align 4
  store %struct.tipc_link* null, %struct.tipc_link** %22, align 8
  %38 = call i64 (...) @trace_tipc_node_check_state_enabled()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call i32 @trace_tipc_skb_dump(%struct.sk_buff* %41, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %44 = call i32 @trace_tipc_node_check_state(%struct.tipc_node* %43, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %4
  %46 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %47 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.tipc_link*, %struct.tipc_link** %52, align 8
  store %struct.tipc_link* %53, %struct.tipc_link** %20, align 8
  %54 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %55 = icmp ne %struct.tipc_link* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %364

57:                                               ; preds = %45
  %58 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %59 = call i32 @tipc_link_rcv_nxt(%struct.tipc_link* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* @SELF_UP_PEER_UP, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @TUNNEL_PROTOCOL, align 4
  %66 = icmp ne i32 %64, %65
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i1 [ false, %57 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @likely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %5, align 4
  br label %364

73:                                               ; preds = %67
  store i32 0, i32* %24, align 4
  br label %74

74:                                               ; preds = %102, %73
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* @MAX_BEARERS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %74
  %79 = load i32, i32* %24, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %84 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %24, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load %struct.tipc_link*, %struct.tipc_link** %89, align 8
  %91 = icmp ne %struct.tipc_link* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %82
  %93 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %94 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %93, i32 0, i32 3
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %24, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load %struct.tipc_link*, %struct.tipc_link** %99, align 8
  store %struct.tipc_link* %100, %struct.tipc_link** %22, align 8
  br label %105

101:                                              ; preds = %82, %78
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %24, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %24, align 4
  br label %74

105:                                              ; preds = %92, %74
  %106 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %107 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %108 = call i32 @tipc_link_validate_msg(%struct.tipc_link* %106, %struct.tipc_msg* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %112 = call i32 @trace_tipc_skb_dump(%struct.sk_buff* %111, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %113 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %114 = load i32, i32* @TIPC_DUMP_NONE, align 4
  %115 = call i32 @trace_tipc_link_dump(%struct.tipc_link* %113, i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %364

116:                                              ; preds = %105
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* @SELF_UP_PEER_COMING, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %122 = call i64 @tipc_link_is_up(%struct.tipc_link* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  store i32 1, i32* %5, align 4
  br label %364

125:                                              ; preds = %120
  %126 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %127 = call i32 @msg_peer_link_is_up(%struct.tipc_msg* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  store i32 1, i32* %5, align 4
  br label %364

130:                                              ; preds = %125
  %131 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %132 = load i32, i32* @PEER_ESTABL_CONTACT_EVT, align 4
  %133 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %116
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* @SELF_DOWN_PEER_LEAVING, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %140 = call i64 @msg_peer_node_is_up(%struct.tipc_msg* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %364

143:                                              ; preds = %138
  %144 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %145 = load i32, i32* @PEER_LOST_CONTACT_EVT, align 4
  %146 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %144, i32 %145)
  store i32 1, i32* %5, align 4
  br label %364

147:                                              ; preds = %134
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* @SELF_LEAVING_PEER_DOWN, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 0, i32* %5, align 4
  br label %364

152:                                              ; preds = %147
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @LINK_PROTOCOL, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %15, align 4
  %159 = call i64 @less(i32 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 1, i32* %5, align 4
  br label %364

162:                                              ; preds = %156, %152
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @TUNNEL_PROTOCOL, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %216

166:                                              ; preds = %162
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* @FAILOVER_MSG, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %216

170:                                              ; preds = %166
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %171, %172
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  %175 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %176 = icmp ne %struct.tipc_link* %175, null
  br i1 %176, label %177, label %192

177:                                              ; preds = %170
  %178 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %179 = call i32 @tipc_link_is_reset(%struct.tipc_link* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %177
  %182 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %183 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %184 = call i32 @__tipc_node_link_down(%struct.tipc_node* %182, i32* %24, %struct.sk_buff_head* %183, %struct.tipc_media_addr** %23)
  %185 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %186 = call i32 @trace_tipc_node_link_down(%struct.tipc_node* %185, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %187 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %188 = call i32 @tipc_link_inputq(%struct.tipc_link* %187)
  %189 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %190 = call i32 @tipc_link_inputq(%struct.tipc_link* %189)
  %191 = call i32 @tipc_skb_queue_splice_tail_init(i32 %188, i32 %190)
  br label %192

192:                                              ; preds = %181, %177, %170
  %193 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %194 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @NODE_FAILINGOVER, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %192
  %199 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %200 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %201 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %202 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %203 = call i32 @tipc_node_link_failover(%struct.tipc_node* %199, %struct.tipc_link* %200, %struct.tipc_link* %201, %struct.sk_buff_head* %202)
  br label %204

204:                                              ; preds = %198, %192
  %205 = load i32, i32* %16, align 4
  %206 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %207 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @less(i32 %205, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %204
  %212 = load i32, i32* %16, align 4
  %213 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %214 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  br label %215

215:                                              ; preds = %211, %204
  br label %216

216:                                              ; preds = %215, %166, %162
  %217 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %218 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @NODE_FAILINGOVER, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %245

222:                                              ; preds = %216
  %223 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %224 = call i64 @tipc_link_is_up(%struct.tipc_link* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %222
  %227 = load i32, i32* %15, align 4
  %228 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %229 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @more(i32 %227, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %226
  store i32 1, i32* %5, align 4
  br label %364

234:                                              ; preds = %226
  %235 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %236 = load i32, i32* @NODE_FAILOVER_END_EVT, align 4
  %237 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %235, i32 %236)
  %238 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %239 = icmp ne %struct.tipc_link* %238, null
  br i1 %239, label %240, label %244

240:                                              ; preds = %234
  %241 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %242 = load i32, i32* @LINK_FAILOVER_END_EVT, align 4
  %243 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %241, i32 %242)
  br label %244

244:                                              ; preds = %240, %234
  store i32 1, i32* %5, align 4
  br label %364

245:                                              ; preds = %222, %216
  %246 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %247 = icmp ne %struct.tipc_link* %246, null
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %250 = call i64 @tipc_link_is_up(%struct.tipc_link* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %248, %245
  store i32 1, i32* %5, align 4
  br label %364

253:                                              ; preds = %248
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* @TUNNEL_PROTOCOL, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %307

257:                                              ; preds = %253
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* @SYNCH_MSG, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %307

261:                                              ; preds = %257
  %262 = load i32, i32* %13, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %307

264:                                              ; preds = %261
  %265 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %266 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @TIPC_TUNNEL_ENHANCED, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %273 = call i32 @msg_syncpt(%struct.tipc_msg* %272)
  store i32 %273, i32* %16, align 4
  br label %281

274:                                              ; preds = %264
  %275 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %276 = call %struct.tipc_msg* @msg_inner_hdr(%struct.tipc_msg* %275)
  %277 = call i32 @msg_seqno(%struct.tipc_msg* %276)
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %277, %278
  %280 = sub nsw i32 %279, 1
  store i32 %280, i32* %16, align 4
  br label %281

281:                                              ; preds = %274, %271
  %282 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %283 = call i64 @tipc_link_is_up(%struct.tipc_link* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %281
  %286 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %287 = load i32, i32* %8, align 4
  %288 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %289 = call i32 @__tipc_node_link_up(%struct.tipc_node* %286, i32 %287, %struct.sk_buff_head* %288)
  br label %290

290:                                              ; preds = %285, %281
  %291 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %292 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @SELF_UP_PEER_UP, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %290
  %297 = load i32, i32* %16, align 4
  %298 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %299 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  %300 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %301 = load i32, i32* @LINK_SYNCH_BEGIN_EVT, align 4
  %302 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %300, i32 %301)
  %303 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %304 = load i32, i32* @NODE_SYNCH_BEGIN_EVT, align 4
  %305 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %303, i32 %304)
  br label %306

306:                                              ; preds = %296, %290
  br label %307

307:                                              ; preds = %306, %261, %257, %253
  %308 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %309 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @NODE_SYNCHING, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %363

313:                                              ; preds = %307
  %314 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %315 = call i64 @tipc_link_is_synching(%struct.tipc_link* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  store %struct.tipc_link* %318, %struct.tipc_link** %21, align 8
  br label %322

319:                                              ; preds = %313
  %320 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  store %struct.tipc_link* %320, %struct.tipc_link** %21, align 8
  %321 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  store %struct.tipc_link* %321, %struct.tipc_link** %22, align 8
  br label %322

322:                                              ; preds = %319, %317
  %323 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %324 = call i32 @tipc_link_inputq(%struct.tipc_link* %323)
  %325 = call i32 @skb_queue_len(i32 %324)
  store i32 %325, i32* %18, align 4
  %326 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %327 = call i32 @tipc_link_rcv_nxt(%struct.tipc_link* %326)
  %328 = load i32, i32* %18, align 4
  %329 = sub nsw i32 %327, %328
  store i32 %329, i32* %17, align 4
  %330 = load i32, i32* %17, align 4
  %331 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %332 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = call i64 @more(i32 %330, i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %322
  %337 = load %struct.tipc_link*, %struct.tipc_link** %21, align 8
  %338 = load i32, i32* @LINK_SYNCH_END_EVT, align 4
  %339 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %337, i32 %338)
  %340 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %341 = load i32, i32* @NODE_SYNCH_END_EVT, align 4
  %342 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %340, i32 %341)
  store i32 1, i32* %5, align 4
  br label %364

343:                                              ; preds = %322
  %344 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %345 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %346 = icmp eq %struct.tipc_link* %344, %345
  br i1 %346, label %347, label %348

347:                                              ; preds = %343
  store i32 1, i32* %5, align 4
  br label %364

348:                                              ; preds = %343
  %349 = load i32, i32* %11, align 4
  %350 = load i32, i32* @TUNNEL_PROTOCOL, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %357

352:                                              ; preds = %348
  %353 = load i32, i32* %12, align 4
  %354 = load i32, i32* @SYNCH_MSG, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %352
  store i32 1, i32* %5, align 4
  br label %364

357:                                              ; preds = %352, %348
  %358 = load i32, i32* %11, align 4
  %359 = load i32, i32* @LINK_PROTOCOL, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %357
  store i32 1, i32* %5, align 4
  br label %364

362:                                              ; preds = %357
  store i32 0, i32* %5, align 4
  br label %364

363:                                              ; preds = %307
  store i32 1, i32* %5, align 4
  br label %364

364:                                              ; preds = %363, %362, %361, %356, %347, %336, %252, %244, %233, %161, %151, %143, %142, %129, %124, %110, %72, %56
  %365 = load i32, i32* %5, align 4
  ret i32 %365
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @msg_seqno(%struct.tipc_msg*) #1

declare dso_local i32 @msg_msgcnt(%struct.tipc_msg*) #1

declare dso_local i64 @trace_tipc_node_check_state_enabled(...) #1

declare dso_local i32 @trace_tipc_skb_dump(%struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @trace_tipc_node_check_state(%struct.tipc_node*, i32, i8*) #1

declare dso_local i32 @tipc_link_rcv_nxt(%struct.tipc_link*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tipc_link_validate_msg(%struct.tipc_link*, %struct.tipc_msg*) #1

declare dso_local i32 @trace_tipc_link_dump(%struct.tipc_link*, i32, i8*) #1

declare dso_local i64 @tipc_link_is_up(%struct.tipc_link*) #1

declare dso_local i32 @msg_peer_link_is_up(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_node_fsm_evt(%struct.tipc_node*, i32) #1

declare dso_local i64 @msg_peer_node_is_up(%struct.tipc_msg*) #1

declare dso_local i64 @less(i32, i32) #1

declare dso_local i32 @tipc_link_is_reset(%struct.tipc_link*) #1

declare dso_local i32 @__tipc_node_link_down(%struct.tipc_node*, i32*, %struct.sk_buff_head*, %struct.tipc_media_addr**) #1

declare dso_local i32 @trace_tipc_node_link_down(%struct.tipc_node*, i32, i8*) #1

declare dso_local i32 @tipc_skb_queue_splice_tail_init(i32, i32) #1

declare dso_local i32 @tipc_link_inputq(%struct.tipc_link*) #1

declare dso_local i32 @tipc_node_link_failover(%struct.tipc_node*, %struct.tipc_link*, %struct.tipc_link*, %struct.sk_buff_head*) #1

declare dso_local i64 @more(i32, i32) #1

declare dso_local i32 @tipc_link_fsm_evt(%struct.tipc_link*, i32) #1

declare dso_local i32 @msg_syncpt(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @msg_inner_hdr(%struct.tipc_msg*) #1

declare dso_local i32 @__tipc_node_link_up(%struct.tipc_node*, i32, %struct.sk_buff_head*) #1

declare dso_local i64 @tipc_link_is_synching(%struct.tipc_link*) #1

declare dso_local i32 @skb_queue_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
