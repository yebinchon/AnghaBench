; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx_state_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx_state_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.l2cap_ctrl = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"chan %p, control %p, skb %p, event %d\00", align 1
@CONN_LOCAL_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Busy, discarding expected seq %d\00", align 1
@CONN_REJ_ACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Busy, discarding unexpected seq %d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Queued %p (queue len %d)\00", align 1
@CONN_SREJ_ACT = common dso_local global i32 0, align 4
@L2CAP_RX_STATE_SREJ_SENT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@CONN_REMOTE_BUSY = common dso_local global i32 0, align 4
@CONN_SEND_FBIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Freeing %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32)* @l2cap_rx_state_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_rx_state_recv(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca %struct.l2cap_ctrl*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %5, align 8
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %12 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %11, %struct.l2cap_ctrl* %12, %struct.sk_buff* %13, i32 %14)
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %234 [
    i32 137, label %17
    i32 134, label %140
    i32 135, label %198
    i32 136, label %226
    i32 133, label %230
  ]

17:                                               ; preds = %4
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %19 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %20 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %19, i32 0, i32 2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %22 = call i32 @l2cap_classify_txseq(%struct.l2cap_chan* %18, %struct.sk_buff* %21)
  switch i32 %22, label %135 [
    i32 131, label %23
    i32 128, label %88
    i32 132, label %129
    i32 129, label %133
    i32 130, label %134
  ]

23:                                               ; preds = %17
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %25 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %26 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %24, %struct.l2cap_ctrl* %25)
  %27 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %29 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %28, i32 0, i32 1
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %34 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %33, i32 0, i32 2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %36 = bitcast %struct.sk_buff* %35 to %struct.l2cap_chan*
  %37 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %36)
  br label %139

38:                                               ; preds = %23
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %40 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %41 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %40, i32 0, i32 2
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  %43 = call i32 @__next_seq(%struct.l2cap_chan* %39, %struct.sk_buff* %42)
  %44 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %45 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %47 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %50 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  store i32 1, i32* %10, align 4
  %51 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %54 = call i32 @l2cap_reassemble_sdu(%struct.l2cap_chan* %51, %struct.sk_buff* %52, %struct.l2cap_ctrl* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  br label %139

58:                                               ; preds = %38
  %59 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %60 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load i32, i32* @CONN_REJ_ACT, align 4
  %65 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %66 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %65, i32 0, i32 1
  %67 = call i32 @test_and_clear_bit(i32 %64, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %63
  %70 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %71 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %73 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %74 = call i32 @l2cap_retransmit_all(%struct.l2cap_chan* %72, %struct.l2cap_ctrl* %73)
  %75 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %76 = call i32 @l2cap_ertm_send(%struct.l2cap_chan* %75)
  br label %77

77:                                               ; preds = %69, %63
  br label %78

78:                                               ; preds = %77, %58
  %79 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %81 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %80, i32 0, i32 1
  %82 = call i32 @test_bit(i32 %79, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %86 = call i32 @l2cap_send_ack(%struct.l2cap_chan* %85)
  br label %87

87:                                               ; preds = %84, %78
  br label %139

88:                                               ; preds = %17
  %89 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %90 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %91 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %89, %struct.l2cap_ctrl* %90)
  %92 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %93 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %94 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %93, i32 0, i32 1
  %95 = call i32 @test_bit(i32 %92, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %99 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %98, i32 0, i32 2
  %100 = load %struct.sk_buff*, %struct.sk_buff** %99, align 8
  %101 = bitcast %struct.sk_buff* %100 to %struct.l2cap_chan*
  %102 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.l2cap_chan* %101)
  br label %139

103:                                              ; preds = %88
  %104 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %105 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %104, i32 0, i32 5
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = call i32 @skb_queue_tail(i32* %105, %struct.sk_buff* %106)
  store i32 1, i32* %10, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = bitcast %struct.sk_buff* %108 to %struct.l2cap_chan*
  %110 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %111 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %110, i32 0, i32 5
  %112 = call i32 @skb_queue_len(i32* %111)
  %113 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), %struct.l2cap_chan* %109, i32 %112)
  %114 = load i32, i32* @CONN_SREJ_ACT, align 4
  %115 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %116 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %115, i32 0, i32 1
  %117 = call i32 @clear_bit(i32 %114, i32* %116)
  %118 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %119 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %118, i32 0, i32 4
  %120 = call i32 @l2cap_seq_list_clear(i32* %119)
  %121 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %122 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %123 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %122, i32 0, i32 2
  %124 = load %struct.sk_buff*, %struct.sk_buff** %123, align 8
  %125 = call i32 @l2cap_send_srej(%struct.l2cap_chan* %121, %struct.sk_buff* %124)
  %126 = load i32, i32* @L2CAP_RX_STATE_SREJ_SENT, align 4
  %127 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %128 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  br label %139

129:                                              ; preds = %17
  %130 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %131 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %132 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %130, %struct.l2cap_ctrl* %131)
  br label %139

133:                                              ; preds = %17
  br label %139

134:                                              ; preds = %17
  br label %135

135:                                              ; preds = %17, %134
  %136 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %137 = load i32, i32* @ECONNRESET, align 4
  %138 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %133, %129, %103, %97, %87, %57, %32
  br label %235

140:                                              ; preds = %4
  %141 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %142 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %143 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %141, %struct.l2cap_ctrl* %142)
  %144 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %145 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %140
  %149 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %150 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %151 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %150, i32 0, i32 1
  %152 = call i32 @clear_bit(i32 %149, i32* %151)
  %153 = load i32, i32* @CONN_REJ_ACT, align 4
  %154 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %155 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %154, i32 0, i32 1
  %156 = call i32 @test_and_clear_bit(i32 %153, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %148
  %159 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %160 = call i32 @__chan_is_moving(%struct.l2cap_chan* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %158
  %163 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %164 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %163, i32 0, i32 1
  store i32 0, i32* %164, align 4
  %165 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %166 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %167 = call i32 @l2cap_retransmit_all(%struct.l2cap_chan* %165, %struct.l2cap_ctrl* %166)
  br label %168

168:                                              ; preds = %162, %158, %148
  %169 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %170 = call i32 @l2cap_ertm_send(%struct.l2cap_chan* %169)
  br label %197

171:                                              ; preds = %140
  %172 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %173 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %178 = call i32 @l2cap_send_i_or_rr_or_rnr(%struct.l2cap_chan* %177)
  br label %196

179:                                              ; preds = %171
  %180 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %181 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %182 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %181, i32 0, i32 1
  %183 = call i32 @test_and_clear_bit(i32 %180, i32* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %179
  %186 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %187 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %192 = call i32 @__set_retrans_timer(%struct.l2cap_chan* %191)
  br label %193

193:                                              ; preds = %190, %185, %179
  %194 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %195 = call i32 @l2cap_ertm_send(%struct.l2cap_chan* %194)
  br label %196

196:                                              ; preds = %193, %176
  br label %197

197:                                              ; preds = %196, %168
  br label %235

198:                                              ; preds = %4
  %199 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %200 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %201 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %200, i32 0, i32 1
  %202 = call i32 @set_bit(i32 %199, i32* %201)
  %203 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %204 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %205 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %203, %struct.l2cap_ctrl* %204)
  %206 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %207 = icmp ne %struct.l2cap_ctrl* %206, null
  br i1 %207, label %208, label %220

208:                                              ; preds = %198
  %209 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %210 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %208
  %214 = load i32, i32* @CONN_SEND_FBIT, align 4
  %215 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %216 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %215, i32 0, i32 1
  %217 = call i32 @set_bit(i32 %214, i32* %216)
  %218 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %219 = call i32 @l2cap_send_rr_or_rnr(%struct.l2cap_chan* %218, i32 0)
  br label %220

220:                                              ; preds = %213, %208, %198
  %221 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %222 = call i32 @__clear_retrans_timer(%struct.l2cap_chan* %221)
  %223 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %224 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %223, i32 0, i32 0
  %225 = call i32 @l2cap_seq_list_clear(i32* %224)
  br label %235

226:                                              ; preds = %4
  %227 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %228 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %229 = call i32 @l2cap_handle_rej(%struct.l2cap_chan* %227, %struct.l2cap_ctrl* %228)
  br label %235

230:                                              ; preds = %4
  %231 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %232 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %233 = call i32 @l2cap_handle_srej(%struct.l2cap_chan* %231, %struct.l2cap_ctrl* %232)
  br label %235

234:                                              ; preds = %4
  br label %235

235:                                              ; preds = %234, %230, %226, %220, %197, %139
  %236 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %237 = icmp ne %struct.sk_buff* %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %238
  %242 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %243 = bitcast %struct.sk_buff* %242 to %struct.l2cap_chan*
  %244 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.l2cap_chan* %243)
  %245 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %246 = call i32 @kfree_skb(%struct.sk_buff* %245)
  br label %247

247:                                              ; preds = %241, %238, %235
  %248 = load i32, i32* %9, align 4
  ret i32 %248
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, ...) #1

declare dso_local i32 @l2cap_classify_txseq(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_pass_to_tx(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__next_seq(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_reassemble_sdu(%struct.l2cap_chan*, %struct.sk_buff*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @l2cap_retransmit_all(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @l2cap_ertm_send(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_ack(%struct.l2cap_chan*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @l2cap_seq_list_clear(i32*) #1

declare dso_local i32 @l2cap_send_srej(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @__chan_is_moving(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_i_or_rr_or_rnr(%struct.l2cap_chan*) #1

declare dso_local i32 @__set_retrans_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_send_rr_or_rnr(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @__clear_retrans_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_handle_rej(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @l2cap_handle_srej(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
