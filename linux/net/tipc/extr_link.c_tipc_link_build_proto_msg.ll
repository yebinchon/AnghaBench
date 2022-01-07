; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_proto_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_build_proto_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i64, i32, i32, i32, i64, %struct.TYPE_3__*, i32, i32, i32, %struct.tipc_mon_state, %struct.sk_buff_head, %struct.tipc_link* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.tipc_mon_state = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@STATE_MSG = common dso_local global i32 0, align 4
@LINK_PROTOCOL = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@tipc_max_domain_size = common dso_local global i64 0, align 8
@MAX_GAP_ACK_BLKS_SZ = common dso_local global i64 0, align 8
@U16_MAX = common dso_local global i32 0, align 4
@TIPC_LINK_PROTO_SEQNO = common dso_local global i32 0, align 4
@TIPC_GAP_ACK_BLOCK = common dso_local global i32 0, align 4
@ACTIVATE_MSG = common dso_local global i32 0, align 4
@TIPC_MAX_IF_NAME = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_link*, i32, i32, i32, i32, i32, i32, %struct.sk_buff_head*)* @tipc_link_build_proto_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_link_build_proto_msg(%struct.tipc_link* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.sk_buff_head* %7) #0 {
  %9 = alloca %struct.tipc_link*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff_head*, align 8
  %17 = alloca %struct.tipc_link*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.tipc_msg*, align 8
  %20 = alloca %struct.sk_buff_head*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.tipc_mon_state*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.sk_buff_head* %7, %struct.sk_buff_head** %16, align 8
  %26 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %27 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %26, i32 0, i32 18
  %28 = load %struct.tipc_link*, %struct.tipc_link** %27, align 8
  store %struct.tipc_link* %28, %struct.tipc_link** %17, align 8
  %29 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %30 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %29, i32 0, i32 17
  store %struct.sk_buff_head* %30, %struct.sk_buff_head** %20, align 8
  %31 = load %struct.tipc_link*, %struct.tipc_link** %17, align 8
  %32 = call i32 @link_is_up(%struct.tipc_link* %31)
  store i32 %32, i32* %21, align 4
  %33 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %34 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %33, i32 0, i32 16
  store %struct.tipc_mon_state* %34, %struct.tipc_mon_state** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %35 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %36 = call i64 @tipc_link_is_blocked(%struct.tipc_link* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %8
  br label %295

39:                                               ; preds = %8
  %40 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %41 = call i32 @tipc_link_is_up(%struct.tipc_link* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @STATE_MSG, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %295

48:                                               ; preds = %43, %39
  %49 = load %struct.sk_buff_head*, %struct.sk_buff_head** %20, align 8
  %50 = call i32 @skb_queue_empty(%struct.sk_buff_head* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load %struct.sk_buff_head*, %struct.sk_buff_head** %20, align 8
  %54 = call i32 @skb_peek(%struct.sk_buff_head* %53)
  %55 = call i32 @buf_seqno(i32 %54)
  %56 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %57 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %52, %48
  %61 = load i32, i32* @LINK_PROTOCOL, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @INT_H_SIZE, align 4
  %64 = load i64, i64* @tipc_max_domain_size, align 8
  %65 = load i64, i64* @MAX_GAP_ACK_BLKS_SZ, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %68 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %67, i32 0, i32 15
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %71 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @tipc_own_addr(i32 %72)
  %74 = call %struct.sk_buff* @tipc_msg_create(i32 %61, i32 %62, i32 %63, i64 %66, i32 %69, i32 %73, i32 0, i32 0, i32 0)
  store %struct.sk_buff* %74, %struct.sk_buff** %18, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %60
  br label %295

78:                                               ; preds = %60
  %79 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %80 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %79)
  store %struct.tipc_msg* %80, %struct.tipc_msg** %19, align 8
  %81 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %82 = call i8* @msg_data(%struct.tipc_msg* %81)
  store i8* %82, i8** %24, align 8
  %83 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %84 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %85 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %84, i32 0, i32 14
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @msg_set_session(%struct.tipc_msg* %83, i32 %86)
  %88 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %89 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %90 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @msg_set_bearer_id(%struct.tipc_msg* %88, i32 %91)
  %93 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %94 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %95 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @msg_set_net_plane(%struct.tipc_msg* %93, i32 %96)
  %98 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %99 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %100 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %99, i32 0, i32 11
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @msg_set_next_sent(%struct.tipc_msg* %98, i64 %101)
  %103 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %104 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %105 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = call i32 @msg_set_ack(%struct.tipc_msg* %103, i32 %107)
  %109 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %110 = load %struct.tipc_link*, %struct.tipc_link** %17, align 8
  %111 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @msg_set_bcast_ack(%struct.tipc_msg* %109, i32 %113)
  %115 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %116 = load i32, i32* %21, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @msg_set_bc_ack_invalid(%struct.tipc_msg* %115, i32 %119)
  %121 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %122 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %123 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %122, i32 0, i32 12
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, 1
  %128 = call i32 @msg_set_last_bcast(%struct.tipc_msg* %121, i64 %127)
  %129 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @msg_set_link_tolerance(%struct.tipc_msg* %129, i32 %130)
  %132 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @msg_set_linkprio(%struct.tipc_msg* %132, i32 %133)
  %135 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %136 = load i32, i32* %21, align 4
  %137 = call i32 @msg_set_redundant_link(%struct.tipc_msg* %135, i32 %136)
  %138 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %139 = call i32 @msg_set_seq_gap(%struct.tipc_msg* %138, i32 0)
  %140 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %141 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %142 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %141, i32 0, i32 11
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @U16_MAX, align 4
  %145 = sdiv i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %143, %146
  %148 = call i32 @msg_set_seqno(%struct.tipc_msg* %140, i64 %147)
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @STATE_MSG, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %232

152:                                              ; preds = %78
  %153 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %154 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @TIPC_LINK_PROTO_SEQNO, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %161 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %162 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = sext i32 %163 to i64
  %166 = call i32 @msg_set_seqno(%struct.tipc_msg* %160, i64 %165)
  br label %167

167:                                              ; preds = %159, %152
  %168 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @msg_set_seq_gap(%struct.tipc_msg* %168, i32 %169)
  %171 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %172 = load %struct.tipc_link*, %struct.tipc_link** %17, align 8
  %173 = call i32 @link_bc_rcv_gap(%struct.tipc_link* %172)
  %174 = call i32 @msg_set_bc_gap(%struct.tipc_msg* %171, i32 %173)
  %175 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @msg_set_probe(%struct.tipc_msg* %175, i32 %176)
  %178 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %167
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br label %184

184:                                              ; preds = %181, %167
  %185 = phi i1 [ true, %167 ], [ %183, %181 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @msg_set_is_keepalive(%struct.tipc_msg* %178, i32 %186)
  %188 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %189 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @TIPC_GAP_ACK_BLOCK, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %184
  %195 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %196 = load i8*, i8** %24, align 8
  %197 = call i32 @tipc_build_gap_ack_blks(%struct.tipc_link* %195, i8* %196)
  store i32 %197, i32* %25, align 4
  br label %198

198:                                              ; preds = %194, %184
  %199 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %200 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %199, i32 0, i32 9
  %201 = load i32, i32* %200, align 4
  %202 = load i8*, i8** %24, align 8
  %203 = load i32, i32* %25, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr i8, i8* %202, i64 %204
  %206 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %22, align 8
  %207 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %208 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %207, i32 0, i32 8
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @tipc_mon_prep(i32 %201, i8* %205, i32* %23, %struct.tipc_mon_state* %206, i32 %209)
  %211 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %212 = load i32, i32* @INT_H_SIZE, align 4
  %213 = load i32, i32* %25, align 4
  %214 = add nsw i32 %212, %213
  %215 = load i32, i32* %23, align 4
  %216 = add nsw i32 %214, %215
  %217 = call i32 @msg_set_size(%struct.tipc_msg* %211, i32 %216)
  %218 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %219 = load i32, i32* @INT_H_SIZE, align 4
  %220 = load i32, i32* %25, align 4
  %221 = add nsw i32 %219, %220
  %222 = load i32, i32* %23, align 4
  %223 = add nsw i32 %221, %222
  %224 = call i32 @skb_trim(%struct.sk_buff* %218, i32 %223)
  %225 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %226 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  %230 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %231 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %230, i32 0, i32 7
  store i64 0, i64* %231, align 8
  br label %265

232:                                              ; preds = %78
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* @ACTIVATE_MSG, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %232
  %237 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %238 = call i32 @msg_set_dest_session_valid(%struct.tipc_msg* %237, i32 1)
  %239 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %240 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %241 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @msg_set_dest_session(%struct.tipc_msg* %239, i32 %242)
  br label %244

244:                                              ; preds = %236, %232
  %245 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %246 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %247 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @msg_set_max_pkt(%struct.tipc_msg* %245, i32 %248)
  %250 = load i8*, i8** %24, align 8
  %251 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %252 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @strcpy(i8* %250, i32 %253)
  %255 = load %struct.tipc_msg*, %struct.tipc_msg** %19, align 8
  %256 = load i32, i32* @INT_H_SIZE, align 4
  %257 = load i32, i32* @TIPC_MAX_IF_NAME, align 4
  %258 = add nsw i32 %256, %257
  %259 = call i32 @msg_set_size(%struct.tipc_msg* %255, i32 %258)
  %260 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %261 = load i32, i32* @INT_H_SIZE, align 4
  %262 = load i32, i32* @TIPC_MAX_IF_NAME, align 4
  %263 = add nsw i32 %261, %262
  %264 = call i32 @skb_trim(%struct.sk_buff* %260, i32 %263)
  br label %265

265:                                              ; preds = %244, %198
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %270 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %268, %265
  %275 = load i32, i32* %13, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %274
  %278 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %279 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %280, align 4
  br label %283

283:                                              ; preds = %277, %274
  %284 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %285 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %286 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 4
  %287 = load %struct.sk_buff_head*, %struct.sk_buff_head** %16, align 8
  %288 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %289 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %287, %struct.sk_buff* %288)
  %290 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %291 = load %struct.tipc_link*, %struct.tipc_link** %9, align 8
  %292 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @trace_tipc_proto_build(%struct.sk_buff* %290, i32 0, i32 %293)
  br label %295

295:                                              ; preds = %283, %77, %47, %38
  ret void
}

declare dso_local i32 @link_is_up(%struct.tipc_link*) #1

declare dso_local i64 @tipc_link_is_blocked(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_is_up(%struct.tipc_link*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @buf_seqno(i32) #1

declare dso_local i32 @skb_peek(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @tipc_msg_create(i32, i32, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tipc_own_addr(i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i8* @msg_data(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_session(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_bearer_id(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_net_plane(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_next_sent(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_ack(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_bcast_ack(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_bc_ack_invalid(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_last_bcast(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_link_tolerance(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_linkprio(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_redundant_link(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_seq_gap(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_seqno(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_bc_gap(%struct.tipc_msg*, i32) #1

declare dso_local i32 @link_bc_rcv_gap(%struct.tipc_link*) #1

declare dso_local i32 @msg_set_probe(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_is_keepalive(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_build_gap_ack_blks(%struct.tipc_link*, i8*) #1

declare dso_local i32 @tipc_mon_prep(i32, i8*, i32*, %struct.tipc_mon_state*, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @msg_set_dest_session_valid(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_dest_session(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_max_pkt(%struct.tipc_msg*, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @trace_tipc_proto_build(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
