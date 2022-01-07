; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c___tipc_node_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c___tipc_node_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32*, %struct.tipc_link_entry*, i64, i32, i32, i32, i32, i32 }
%struct.tipc_link_entry = type { %struct.tipc_media_addr, %struct.tipc_link*, i32 }
%struct.tipc_media_addr = type { i32 }
%struct.tipc_link = type { i32 }
%struct.sk_buff_head = type { i32 }

@TIPC_NOTIFY_LINK_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Lost link <%s> on network plane %c\0A\00", align 1
@INVALID_BEARER_ID = common dso_local global i32 0, align 4
@MAX_BEARERS = common dso_local global i32 0, align 4
@PEER_LOST_CONTACT_EVT = common dso_local global i32 0, align 4
@SELF_LOST_CONTACT_EVT = common dso_local global i32 0, align 4
@TIPC_DUMP_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"link down!\00", align 1
@LINK_RESET_EVT = common dso_local global i32 0, align 4
@LINK_SYNCH_END_EVT = common dso_local global i32 0, align 4
@NODE_SYNCH_END_EVT = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i32 0, align 4
@FAILOVER_MSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"link down -> failover!\00", align 1
@LINK_FAILOVER_BEGIN_EVT = common dso_local global i32 0, align 4
@NODE_FAILOVER_BEGIN_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node*, i32*, %struct.sk_buff_head*, %struct.tipc_media_addr**)* @__tipc_node_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tipc_node_link_down(%struct.tipc_node* %0, i32* %1, %struct.sk_buff_head* %2, %struct.tipc_media_addr** %3) #0 {
  %5 = alloca %struct.tipc_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.tipc_media_addr**, align 8
  %9 = alloca %struct.tipc_link_entry*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tipc_link*, align 8
  %16 = alloca %struct.tipc_link*, align 8
  %17 = alloca %struct.tipc_link*, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  store %struct.tipc_media_addr** %3, %struct.tipc_media_addr*** %8, align 8
  %18 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %19 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %18, i32 0, i32 1
  %20 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %19, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %20, i64 %23
  store %struct.tipc_link_entry* %24, %struct.tipc_link_entry** %9, align 8
  %25 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %26 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32* %28, i32** %10, align 8
  %29 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %30 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %32, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %33 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %34 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %33, i32 0, i32 1
  %35 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %35, i64 %38
  %40 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %39, i32 0, i32 1
  %41 = load %struct.tipc_link*, %struct.tipc_link** %40, align 8
  store %struct.tipc_link* %41, %struct.tipc_link** %15, align 8
  %42 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %43 = icmp ne %struct.tipc_link* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %4
  %45 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %46 = call i64 @tipc_link_is_reset(%struct.tipc_link* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %4
  br label %240

49:                                               ; preds = %44
  %50 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %51 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @TIPC_NOTIFY_LINK_DOWN, align 4
  %55 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %56 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %60 = call i32 @tipc_link_id(%struct.tipc_link* %59)
  %61 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %62 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %64 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %69 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tipc_bearer_remove_dest(i32 %65, i32 %67, i32 %70)
  %72 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %73 = call i32 @tipc_link_name(%struct.tipc_link* %72)
  %74 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %75 = call i32 @tipc_link_plane(%struct.tipc_link* %74)
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %75)
  %77 = load i32, i32* @INVALID_BEARER_ID, align 4
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @INVALID_BEARER_ID, align 4
  %80 = load i32*, i32** %11, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %126, %49
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @MAX_BEARERS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %129

85:                                               ; preds = %81
  %86 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %87 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %86, i32 0, i32 1
  %88 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %88, i64 %90
  %92 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %91, i32 0, i32 1
  %93 = load %struct.tipc_link*, %struct.tipc_link** %92, align 8
  store %struct.tipc_link* %93, %struct.tipc_link** %16, align 8
  %94 = load %struct.tipc_link*, %struct.tipc_link** %16, align 8
  %95 = icmp ne %struct.tipc_link* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load %struct.tipc_link*, %struct.tipc_link** %16, align 8
  %98 = call i32 @tipc_link_is_up(%struct.tipc_link* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96, %85
  br label %126

101:                                              ; preds = %96
  %102 = load %struct.tipc_link*, %struct.tipc_link** %16, align 8
  %103 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %104 = icmp eq %struct.tipc_link* %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %126

106:                                              ; preds = %101
  %107 = load %struct.tipc_link*, %struct.tipc_link** %16, align 8
  %108 = call i32 @tipc_link_prio(%struct.tipc_link* %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %126

113:                                              ; preds = %106
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32*, i32** %11, align 8
  store i32 %121, i32* %122, align 4
  br label %126

123:                                              ; preds = %113
  %124 = load i32, i32* %12, align 4
  %125 = load i32*, i32** %11, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %117, %112, %105, %100
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %81

129:                                              ; preds = %81
  %130 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %131 = call i32 @node_is_up(%struct.tipc_node* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %175, label %133

133:                                              ; preds = %129
  %134 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %135 = call i64 @tipc_link_peer_is_down(%struct.tipc_link* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %139 = load i32, i32* @PEER_LOST_CONTACT_EVT, align 4
  %140 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %133
  %142 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %143 = load i32, i32* @SELF_LOST_CONTACT_EVT, align 4
  %144 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %142, i32 %143)
  %145 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %146 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %147 = call i32 @trace_tipc_link_reset(%struct.tipc_link* %145, i32 %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %148 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %149 = load i32, i32* @LINK_RESET_EVT, align 4
  %150 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %148, i32 %149)
  %151 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %152 = call i32 @tipc_link_reset(%struct.tipc_link* %151)
  %153 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %154 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %155 = call i32 @tipc_link_build_reset_msg(%struct.tipc_link* %153, %struct.sk_buff_head* %154)
  %156 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %157 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %156, i32 0, i32 1
  %158 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %157, align 8
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %158, i64 %161
  %163 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %162, i32 0, i32 0
  %164 = load %struct.tipc_media_addr**, %struct.tipc_media_addr*** %8, align 8
  store %struct.tipc_media_addr* %163, %struct.tipc_media_addr** %164, align 8
  %165 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %166 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %9, align 8
  %167 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %166, i32 0, i32 2
  %168 = call i32 @node_lost_contact(%struct.tipc_node* %165, i32* %167)
  %169 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %170 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @tipc_bcast_dec_bearer_dst_cnt(i32 %171, i32 %173)
  br label %240

175:                                              ; preds = %129
  %176 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %177 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load i32*, i32** %6, align 8
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @tipc_bcast_dec_bearer_dst_cnt(i32 %178, i32 %180)
  %182 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %183 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %6, align 8
  store i32 %186, i32* %187, align 4
  %188 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %189 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %188, i32 0, i32 1
  %190 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %189, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %190, i64 %193
  %195 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %194, i32 0, i32 1
  %196 = load %struct.tipc_link*, %struct.tipc_link** %195, align 8
  store %struct.tipc_link* %196, %struct.tipc_link** %17, align 8
  %197 = load %struct.tipc_link*, %struct.tipc_link** %17, align 8
  %198 = load i32, i32* @LINK_SYNCH_END_EVT, align 4
  %199 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %197, i32 %198)
  %200 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %201 = load i32, i32* @NODE_SYNCH_END_EVT, align 4
  %202 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %200, i32 %201)
  %203 = load %struct.tipc_link*, %struct.tipc_link** %17, align 8
  %204 = call i64 @tipc_link_rcv_nxt(%struct.tipc_link* %203)
  %205 = load i32, i32* @U16_MAX, align 4
  %206 = sdiv i32 %205, 2
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %204, %208
  %210 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %211 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  %212 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %213 = load %struct.tipc_link*, %struct.tipc_link** %17, align 8
  %214 = load i32, i32* @FAILOVER_MSG, align 4
  %215 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %216 = call i32 @tipc_link_tnl_prepare(%struct.tipc_link* %212, %struct.tipc_link* %213, i32 %214, %struct.sk_buff_head* %215)
  %217 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %218 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %219 = call i32 @trace_tipc_link_reset(%struct.tipc_link* %217, i32 %218, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %220 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %221 = call i32 @tipc_link_reset(%struct.tipc_link* %220)
  %222 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %223 = load i32, i32* @LINK_RESET_EVT, align 4
  %224 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %222, i32 %223)
  %225 = load %struct.tipc_link*, %struct.tipc_link** %15, align 8
  %226 = load i32, i32* @LINK_FAILOVER_BEGIN_EVT, align 4
  %227 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %225, i32 %226)
  %228 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %229 = load i32, i32* @NODE_FAILOVER_BEGIN_EVT, align 4
  %230 = call i32 @tipc_node_fsm_evt(%struct.tipc_node* %228, i32 %229)
  %231 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %232 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %231, i32 0, i32 1
  %233 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %232, align 8
  %234 = load i32*, i32** %6, align 8
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %233, i64 %236
  %238 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %237, i32 0, i32 0
  %239 = load %struct.tipc_media_addr**, %struct.tipc_media_addr*** %8, align 8
  store %struct.tipc_media_addr* %238, %struct.tipc_media_addr** %239, align 8
  br label %240

240:                                              ; preds = %175, %141, %48
  ret void
}

declare dso_local i64 @tipc_link_is_reset(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_id(%struct.tipc_link*) #1

declare dso_local i32 @tipc_bearer_remove_dest(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @tipc_link_name(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_plane(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_is_up(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_prio(%struct.tipc_link*) #1

declare dso_local i32 @node_is_up(%struct.tipc_node*) #1

declare dso_local i64 @tipc_link_peer_is_down(%struct.tipc_link*) #1

declare dso_local i32 @tipc_node_fsm_evt(%struct.tipc_node*, i32) #1

declare dso_local i32 @trace_tipc_link_reset(%struct.tipc_link*, i32, i8*) #1

declare dso_local i32 @tipc_link_fsm_evt(%struct.tipc_link*, i32) #1

declare dso_local i32 @tipc_link_reset(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_build_reset_msg(%struct.tipc_link*, %struct.sk_buff_head*) #1

declare dso_local i32 @node_lost_contact(%struct.tipc_node*, i32*) #1

declare dso_local i32 @tipc_bcast_dec_bearer_dst_cnt(i32, i32) #1

declare dso_local i64 @tipc_link_rcv_nxt(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_tnl_prepare(%struct.tipc_link*, %struct.tipc_link*, i32, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
