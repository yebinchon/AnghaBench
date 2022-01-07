; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx_state_srej_sent.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx_state_srej_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32, i32, i32 }
%struct.l2cap_ctrl = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"chan %p, control %p, skb %p, event %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Queued %p (queue len %d)\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@CONN_REMOTE_BUSY = common dso_local global i32 0, align 4
@CONN_REJ_ACT = common dso_local global i32 0, align 4
@CONN_SEND_FBIT = common dso_local global i32 0, align 4
@L2CAP_SUPER_RR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Freeing %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32)* @l2cap_rx_state_srej_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_rx_state_srej_sent(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca %struct.l2cap_ctrl*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.l2cap_ctrl, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %5, align 8
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %14 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %17 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %16, %struct.l2cap_ctrl* %17, %struct.sk_buff* %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %225 [
    i32 140, label %22
    i32 137, label %118
    i32 138, label %190
    i32 139, label %217
    i32 136, label %221
  ]

22:                                               ; preds = %4
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @l2cap_classify_txseq(%struct.l2cap_chan* %23, i32 %24)
  switch i32 %25, label %113 [
    i32 133, label %26
    i32 132, label %45
    i32 129, label %68
    i32 128, label %87
    i32 134, label %106
    i32 135, label %110
    i32 130, label %111
    i32 131, label %112
  ]

26:                                               ; preds = %22
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %28 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %29 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %27, %struct.l2cap_ctrl* %28)
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %31 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %30, i32 0, i32 3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @skb_queue_tail(i32* %31, %struct.sk_buff* %32)
  store i32 1, i32* %11, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = bitcast %struct.sk_buff* %34 to %struct.l2cap_chan*
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 3
  %38 = call i32 @skb_queue_len(i32* %37)
  %39 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %35, i32 %38)
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @__next_seq(%struct.l2cap_chan* %40, i32 %41)
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %44 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  br label %117

45:                                               ; preds = %22
  %46 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %47 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %46, i32 0, i32 4
  %48 = call i32 @l2cap_seq_list_pop(i32* %47)
  %49 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %50 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %51 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %49, %struct.l2cap_ctrl* %50)
  %52 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %53 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %52, i32 0, i32 3
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @skb_queue_tail(i32* %53, %struct.sk_buff* %54)
  store i32 1, i32* %11, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = bitcast %struct.sk_buff* %56 to %struct.l2cap_chan*
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %59 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %58, i32 0, i32 3
  %60 = call i32 @skb_queue_len(i32* %59)
  %61 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %57, i32 %60)
  %62 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %63 = call i32 @l2cap_rx_queued_iframes(%struct.l2cap_chan* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  br label %117

67:                                               ; preds = %45
  br label %117

68:                                               ; preds = %22
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %70 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %69, i32 0, i32 3
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call i32 @skb_queue_tail(i32* %70, %struct.sk_buff* %71)
  store i32 1, i32* %11, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = bitcast %struct.sk_buff* %73 to %struct.l2cap_chan*
  %75 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %76 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %75, i32 0, i32 3
  %77 = call i32 @skb_queue_len(i32* %76)
  %78 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %74, i32 %77)
  %79 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %80 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %81 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %79, %struct.l2cap_ctrl* %80)
  %82 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %83 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %84 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @l2cap_send_srej(%struct.l2cap_chan* %82, i32 %85)
  br label %117

87:                                               ; preds = %22
  %88 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %89 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %88, i32 0, i32 3
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call i32 @skb_queue_tail(i32* %89, %struct.sk_buff* %90)
  store i32 1, i32* %11, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = bitcast %struct.sk_buff* %92 to %struct.l2cap_chan*
  %94 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %95 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %94, i32 0, i32 3
  %96 = call i32 @skb_queue_len(i32* %95)
  %97 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %93, i32 %96)
  %98 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %99 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %100 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %98, %struct.l2cap_ctrl* %99)
  %101 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %102 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %103 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @l2cap_send_srej_list(%struct.l2cap_chan* %101, i32 %104)
  br label %117

106:                                              ; preds = %22
  %107 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %108 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %109 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %107, %struct.l2cap_ctrl* %108)
  br label %117

110:                                              ; preds = %22
  br label %117

111:                                              ; preds = %22
  br label %117

112:                                              ; preds = %22
  br label %113

113:                                              ; preds = %22, %112
  %114 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %115 = load i32, i32* @ECONNRESET, align 4
  %116 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %111, %110, %106, %87, %68, %67, %66, %26
  br label %225

118:                                              ; preds = %4
  %119 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %120 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %121 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %119, %struct.l2cap_ctrl* %120)
  %122 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %123 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %118
  %127 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %128 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %129 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %128, i32 0, i32 1
  %130 = call i32 @clear_bit(i32 %127, i32* %129)
  %131 = load i32, i32* @CONN_REJ_ACT, align 4
  %132 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %133 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %132, i32 0, i32 1
  %134 = call i32 @test_and_clear_bit(i32 %131, i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %126
  %137 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %138 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %137, i32 0, i32 4
  store i32 0, i32* %138, align 4
  %139 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %140 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %141 = call i32 @l2cap_retransmit_all(%struct.l2cap_chan* %139, %struct.l2cap_ctrl* %140)
  br label %142

142:                                              ; preds = %136, %126
  %143 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %144 = call i32 @l2cap_ertm_send(%struct.l2cap_chan* %143)
  br label %189

145:                                              ; preds = %118
  %146 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %147 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %145
  %151 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %152 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %153 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %152, i32 0, i32 1
  %154 = call i32 @test_and_clear_bit(i32 %151, i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %158 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %163 = call i32 @__set_retrans_timer(%struct.l2cap_chan* %162)
  br label %164

164:                                              ; preds = %161, %156, %150
  %165 = load i32, i32* @CONN_SEND_FBIT, align 4
  %166 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %167 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %166, i32 0, i32 1
  %168 = call i32 @set_bit(i32 %165, i32* %167)
  %169 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %170 = call i32 @l2cap_send_srej_tail(%struct.l2cap_chan* %169)
  br label %188

171:                                              ; preds = %145
  %172 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %173 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %174 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %173, i32 0, i32 1
  %175 = call i32 @test_and_clear_bit(i32 %172, i32* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %171
  %178 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %179 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %184 = call i32 @__set_retrans_timer(%struct.l2cap_chan* %183)
  br label %185

185:                                              ; preds = %182, %177, %171
  %186 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %187 = call i32 @l2cap_send_ack(%struct.l2cap_chan* %186)
  br label %188

188:                                              ; preds = %185, %164
  br label %189

189:                                              ; preds = %188, %142
  br label %225

190:                                              ; preds = %4
  %191 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %192 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %193 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %192, i32 0, i32 1
  %194 = call i32 @set_bit(i32 %191, i32* %193)
  %195 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %196 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %197 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %195, %struct.l2cap_ctrl* %196)
  %198 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %199 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %190
  %203 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %204 = call i32 @l2cap_send_srej_tail(%struct.l2cap_chan* %203)
  br label %216

205:                                              ; preds = %190
  %206 = call i32 @memset(%struct.l2cap_ctrl* %12, i32 0, i32 24)
  %207 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %12, i32 0, i32 0
  store i32 1, i32* %207, align 4
  %208 = load i32, i32* @L2CAP_SUPER_RR, align 4
  %209 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %12, i32 0, i32 2
  store i32 %208, i32* %209, align 4
  %210 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %211 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %12, i32 0, i32 1
  store i32 %212, i32* %213, align 4
  %214 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %215 = call i32 @l2cap_send_sframe(%struct.l2cap_chan* %214, %struct.l2cap_ctrl* %12)
  br label %216

216:                                              ; preds = %205, %202
  br label %225

217:                                              ; preds = %4
  %218 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %219 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %220 = call i32 @l2cap_handle_rej(%struct.l2cap_chan* %218, %struct.l2cap_ctrl* %219)
  br label %225

221:                                              ; preds = %4
  %222 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %223 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %224 = call i32 @l2cap_handle_srej(%struct.l2cap_chan* %222, %struct.l2cap_ctrl* %223)
  br label %225

225:                                              ; preds = %4, %221, %217, %216, %189, %117
  %226 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %227 = icmp ne %struct.sk_buff* %226, null
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %228
  %232 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %233 = bitcast %struct.sk_buff* %232 to %struct.l2cap_chan*
  %234 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.l2cap_chan* %233)
  %235 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %236 = call i32 @kfree_skb(%struct.sk_buff* %235)
  br label %237

237:                                              ; preds = %231, %228, %225
  %238 = load i32, i32* %9, align 4
  ret i32 %238
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, ...) #1

declare dso_local i32 @l2cap_classify_txseq(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_pass_to_tx(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @__next_seq(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_seq_list_pop(i32*) #1

declare dso_local i32 @l2cap_rx_queued_iframes(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_srej(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_send_srej_list(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @l2cap_retransmit_all(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @l2cap_ertm_send(%struct.l2cap_chan*) #1

declare dso_local i32 @__set_retrans_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_send_srej_tail(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_ack(%struct.l2cap_chan*) #1

declare dso_local i32 @memset(%struct.l2cap_ctrl*, i32, i32) #1

declare dso_local i32 @l2cap_send_sframe(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @l2cap_handle_rej(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @l2cap_handle_srej(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
