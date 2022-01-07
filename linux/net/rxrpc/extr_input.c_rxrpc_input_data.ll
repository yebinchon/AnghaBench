; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.sk_buff**, i64*, i32 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"{%u,%u},{%u,%u}\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Rx DATA %%%u { #%u f=%02x n=%u }\00", align 1
@RXRPC_CALL_COMPLETE = common dso_local global i32 0, align 4
@rxrpc_skb_freed = common dso_local global i32 0, align 4
@RXRPC_CALL_SERVER_RECV_REQUEST = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@rxrpc_timer_set_for_idle = common dso_local global i32 0, align 4
@RXRPC_CALL_CLIENT_SEND_REQUEST = common dso_local global i32 0, align 4
@RXRPC_CALL_CLIENT_AWAIT_REPLY = common dso_local global i32 0, align 4
@RXRPC_ACK_NOSPACE = common dso_local global i64 0, align 8
@RXRPC_RXTX_BUFF_MASK = common dso_local global i32 0, align 4
@RXRPC_SKB_INCL_LAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Rx DATA+%u %%%u { #%x t=%u l=%u }\00", align 1
@RXRPC_CALL_RX_LAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"LSN\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"LSA\00", align 1
@RXRPC_LAST_PACKET = common dso_local global i64 0, align 8
@RXRPC_JUMBO_PACKET = common dso_local global i64 0, align 8
@RXRPC_REQUEST_ACK = common dso_local global i64 0, align 8
@RXRPC_ACK_DUPLICATE = common dso_local global i64 0, align 8
@RXRPC_ACK_EXCEEDS_WINDOW = common dso_local global i64 0, align 8
@RXRPC_ACK_REQUESTED = common dso_local global i64 0, align 8
@rxrpc_skb_got = common dso_local global i32 0, align 4
@RXRPC_ACK_DELAY = common dso_local global i64 0, align 8
@rxrpc_receive_queue_last = common dso_local global i32 0, align 4
@rxrpc_receive_queue = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"OOS %u > %u\00", align 1
@RXRPC_ACK_OUT_OF_SEQUENCE = common dso_local global i64 0, align 8
@rxrpc_propose_ack_input_data = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c" [queued]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, %struct.sk_buff*)* @rxrpc_input_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_input_data(%struct.rxrpc_call* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rxrpc_skb_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %25)
  store %struct.rxrpc_skb_priv* %26, %struct.rxrpc_skb_priv** %5, align 8
  %27 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %28 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %31 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %32 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %36 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %39 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @_enter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %40, i32 %43, i32 %44)
  %46 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %47 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %53 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %57 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, i32, i32, i32, i32, ...) @_proto(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51, i32 %55, i32 %58)
  %60 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %61 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @READ_ONCE(i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @RXRPC_CALL_COMPLETE, align 4
  %66 = icmp uge i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %2
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* @rxrpc_skb_freed, align 4
  %70 = call i32 @rxrpc_free_skb(%struct.sk_buff* %68, i32 %69)
  br label %478

71:                                               ; preds = %2
  %72 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %73 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RXRPC_CALL_SERVER_RECV_REQUEST, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %79 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @READ_ONCE(i64 %80)
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %15, align 8
  %83 = load i64, i64* %15, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %77
  %86 = load i64, i64* @jiffies, align 8
  store i64 %86, i64* %16, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %15, align 8
  %89 = add i64 %87, %88
  store i64 %89, i64* %17, align 8
  %90 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %91 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %90, i32 0, i32 13
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %17, align 8
  %94 = call i32 @WRITE_ONCE(i32 %92, i64 %93)
  %95 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i32, i32* @rxrpc_timer_set_for_idle, align 4
  %99 = call i32 @rxrpc_reduce_call_timer(%struct.rxrpc_call* %95, i64 %96, i64 %97, i32 %98)
  br label %100

100:                                              ; preds = %85, %77
  br label %101

101:                                              ; preds = %100, %71
  %102 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %103 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %102, i32 0, i32 8
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @RXRPC_CALL_CLIENT_SEND_REQUEST, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @RXRPC_CALL_CLIENT_AWAIT_REPLY, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108, %101
  %113 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %114 = call i32 @rxrpc_receiving_reply(%struct.rxrpc_call* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  br label %470

117:                                              ; preds = %112, %108
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %120 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %122 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @READ_ONCE(i64 %123)
  store i32 %124, i32* %11, align 4
  %125 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %126 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %138

129:                                              ; preds = %117
  %130 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %131 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 3
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i64, i64* @RXRPC_ACK_NOSPACE, align 8
  store i64 %135, i64* %14, align 8
  %136 = load i64, i64* %8, align 8
  store i64 %136, i64* %9, align 8
  br label %437

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %117
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %433, %138
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %142 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ult i32 %140, %143
  br i1 %144, label %145, label %436

145:                                              ; preds = %139
  %146 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %147 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = zext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  store i64 %152, i64* %18, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %7, align 4
  %155 = add i32 %153, %154
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* @RXRPC_RXTX_BUFF_MASK, align 4
  %158 = and i32 %156, %157
  store i32 %158, i32* %20, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %161 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %162, 1
  %164 = icmp eq i32 %159, %163
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %21, align 4
  %166 = load i32, i32* %21, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %145
  %169 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %170 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @RXRPC_SKB_INCL_LAST, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br label %175

175:                                              ; preds = %168, %145
  %176 = phi i1 [ false, %145 ], [ %174, %168 ]
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %22, align 4
  %178 = load i32, i32* %7, align 4
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %24, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load i64, i64* %18, align 8
  %182 = trunc i64 %181 to i32
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* %22, align 4
  %186 = call i32 (i8*, i32, i32, i32, i32, ...) @_proto(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %180, i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %22, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %175
  %190 = load i32, i32* @RXRPC_CALL_RX_LAST, align 4
  %191 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %192 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %191, i32 0, i32 10
  %193 = call i64 @test_bit(i32 %190, i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %189
  %196 = load i32, i32* %19, align 4
  %197 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %198 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %196, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %203 = load i32, i32* %19, align 4
  %204 = call i32 @rxrpc_proto_abort(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.rxrpc_call* %202, i32 %203)
  br label %470

205:                                              ; preds = %195, %189
  br label %224

206:                                              ; preds = %175
  %207 = load i32, i32* @RXRPC_CALL_RX_LAST, align 4
  %208 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %209 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %208, i32 0, i32 10
  %210 = call i64 @test_bit(i32 %207, i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %206
  %213 = load i32, i32* %19, align 4
  %214 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %215 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @after_eq(i32 %213, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %212
  %220 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %221 = load i32, i32* %19, align 4
  %222 = call i32 @rxrpc_proto_abort(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.rxrpc_call* %220, i32 %221)
  br label %470

223:                                              ; preds = %212, %206
  br label %224

224:                                              ; preds = %223, %205
  store i64 0, i64* %23, align 8
  %225 = load i32, i32* %22, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load i64, i64* @RXRPC_LAST_PACKET, align 8
  %229 = load i64, i64* %23, align 8
  %230 = or i64 %229, %228
  store i64 %230, i64* %23, align 8
  br label %231

231:                                              ; preds = %227, %224
  %232 = load i32, i32* %21, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = load i64, i64* @RXRPC_JUMBO_PACKET, align 8
  %236 = load i64, i64* %23, align 8
  %237 = or i64 %236, %235
  store i64 %237, i64* %23, align 8
  br label %238

238:                                              ; preds = %234, %231
  %239 = load i32, i32* %7, align 4
  %240 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %241 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = call i64 @test_bit(i32 %239, i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = load i64, i64* @RXRPC_REQUEST_ACK, align 8
  %247 = load i64, i64* %23, align 8
  %248 = or i64 %247, %246
  store i64 %248, i64* %23, align 8
  br label %249

249:                                              ; preds = %245, %238
  %250 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %251 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %250, i32 0, i32 9
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %19, align 4
  %254 = load i64, i64* %18, align 8
  %255 = load i64, i64* %23, align 8
  %256 = load i64, i64* %24, align 8
  %257 = call i32 @trace_rxrpc_rx_data(i32 %252, i32 %253, i64 %254, i64 %255, i64 %256)
  %258 = load i32, i32* %19, align 4
  %259 = load i32, i32* %11, align 4
  %260 = call i64 @before_eq(i32 %258, i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %249
  %263 = load i64, i64* @RXRPC_ACK_DUPLICATE, align 8
  store i64 %263, i64* %14, align 8
  %264 = load i64, i64* %18, align 8
  store i64 %264, i64* %9, align 8
  br label %433

265:                                              ; preds = %249
  %266 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %267 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %266, i32 0, i32 11
  %268 = load %struct.sk_buff**, %struct.sk_buff*** %267, align 8
  %269 = load i32, i32* %20, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %268, i64 %270
  %272 = load %struct.sk_buff*, %struct.sk_buff** %271, align 8
  %273 = icmp ne %struct.sk_buff* %272, null
  br i1 %273, label %274, label %290

274:                                              ; preds = %265
  %275 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %276 = load i32, i32* %19, align 4
  %277 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %5, align 8
  %278 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp sgt i32 %279, 1
  %281 = zext i1 %280 to i32
  %282 = call i32 @rxrpc_input_dup_data(%struct.rxrpc_call* %275, i32 %276, i32 %281, i32* %13)
  %283 = load i64, i64* %14, align 8
  %284 = load i64, i64* @RXRPC_ACK_DUPLICATE, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %274
  %287 = load i64, i64* @RXRPC_ACK_DUPLICATE, align 8
  store i64 %287, i64* %14, align 8
  %288 = load i64, i64* %18, align 8
  store i64 %288, i64* %9, align 8
  br label %289

289:                                              ; preds = %286, %274
  store i32 1, i32* %12, align 4
  br label %433

290:                                              ; preds = %265
  %291 = load i32, i32* %19, align 4
  %292 = load i32, i32* %11, align 4
  %293 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %294 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 8
  %296 = add i32 %292, %295
  %297 = call i64 @after(i32 %291, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %316

299:                                              ; preds = %290
  %300 = load i64, i64* @RXRPC_ACK_EXCEEDS_WINDOW, align 8
  store i64 %300, i64* %14, align 8
  %301 = load i64, i64* %18, align 8
  store i64 %301, i64* %9, align 8
  %302 = load i64, i64* %23, align 8
  %303 = load i64, i64* @RXRPC_JUMBO_PACKET, align 8
  %304 = and i64 %302, %303
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %299
  %307 = load i32, i32* %13, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %306
  %310 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %311 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 4
  store i32 1, i32* %13, align 4
  br label %314

314:                                              ; preds = %309, %306
  br label %315

315:                                              ; preds = %314, %299
  br label %437

316:                                              ; preds = %290
  %317 = load i64, i64* %23, align 8
  %318 = load i64, i64* @RXRPC_REQUEST_ACK, align 8
  %319 = and i64 %317, %318
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %316
  %322 = load i64, i64* %14, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %321
  %325 = load i64, i64* @RXRPC_ACK_REQUESTED, align 8
  store i64 %325, i64* %14, align 8
  %326 = load i64, i64* %18, align 8
  store i64 %326, i64* %9, align 8
  br label %327

327:                                              ; preds = %324, %321, %316
  %328 = load i32, i32* %21, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %334, label %330

330:                                              ; preds = %327
  %331 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %332 = load i32, i32* @rxrpc_skb_got, align 4
  %333 = call i32 @rxrpc_get_skb(%struct.sk_buff* %331, i32 %332)
  br label %334

334:                                              ; preds = %330, %327
  %335 = load i64, i64* %24, align 8
  %336 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %337 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %336, i32 0, i32 12
  %338 = load i64*, i64** %337, align 8
  %339 = load i32, i32* %20, align 4
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  store i64 %335, i64* %341, align 8
  %342 = call i32 (...) @smp_wmb()
  %343 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %344 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %345 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %344, i32 0, i32 11
  %346 = load %struct.sk_buff**, %struct.sk_buff*** %345, align 8
  %347 = load i32, i32* %20, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %346, i64 %348
  store %struct.sk_buff* %343, %struct.sk_buff** %349, align 8
  %350 = load i32, i32* %19, align 4
  %351 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %352 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = call i64 @after(i32 %350, i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %334
  %357 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %358 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %357, i32 0, i32 1
  %359 = load i32, i32* %19, align 4
  %360 = call i32 @smp_store_release(i32* %358, i32 %359)
  br label %376

361:                                              ; preds = %334
  %362 = load i32, i32* %19, align 4
  %363 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %364 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = call i64 @before(i32 %362, i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %361
  %369 = load i64, i64* %14, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %374, label %371

371:                                              ; preds = %368
  %372 = load i64, i64* @RXRPC_ACK_DELAY, align 8
  store i64 %372, i64* %14, align 8
  %373 = load i64, i64* %18, align 8
  store i64 %373, i64* %9, align 8
  br label %374

374:                                              ; preds = %371, %368
  store i32 1, i32* %12, align 4
  br label %375

375:                                              ; preds = %374, %361
  br label %376

376:                                              ; preds = %375, %356
  %377 = load i32, i32* %21, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %376
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %380

380:                                              ; preds = %379, %376
  %381 = load i32, i32* %22, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %399

383:                                              ; preds = %380
  %384 = load i32, i32* @RXRPC_CALL_RX_LAST, align 4
  %385 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %386 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %385, i32 0, i32 10
  %387 = call i32 @set_bit(i32 %384, i32* %386)
  %388 = load i64, i64* %14, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %383
  %391 = load i64, i64* @RXRPC_ACK_DELAY, align 8
  store i64 %391, i64* %14, align 8
  %392 = load i64, i64* %18, align 8
  store i64 %392, i64* %9, align 8
  br label %393

393:                                              ; preds = %390, %383
  %394 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %395 = load i32, i32* @rxrpc_receive_queue_last, align 4
  %396 = load i64, i64* %18, align 8
  %397 = load i32, i32* %19, align 4
  %398 = call i32 @trace_rxrpc_receive(%struct.rxrpc_call* %394, i32 %395, i64 %396, i32 %397)
  br label %405

399:                                              ; preds = %380
  %400 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %401 = load i32, i32* @rxrpc_receive_queue, align 4
  %402 = load i64, i64* %18, align 8
  %403 = load i32, i32* %19, align 4
  %404 = call i32 @trace_rxrpc_receive(%struct.rxrpc_call* %400, i32 %401, i64 %402, i32 %403)
  br label %405

405:                                              ; preds = %399, %393
  %406 = load i32, i32* %19, align 4
  %407 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %408 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %407, i32 0, i32 7
  %409 = load i32, i32* %408, align 4
  %410 = call i64 @after_eq(i32 %406, i32 %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %432

412:                                              ; preds = %405
  %413 = load i32, i32* %19, align 4
  %414 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %415 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %414, i32 0, i32 7
  %416 = load i32, i32* %415, align 4
  %417 = call i64 @after(i32 %413, i32 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %427

419:                                              ; preds = %412
  %420 = load i32, i32* %19, align 4
  %421 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %422 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %421, i32 0, i32 7
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @_net(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %420, i32 %423)
  %425 = load i64, i64* @RXRPC_ACK_OUT_OF_SEQUENCE, align 8
  store i64 %425, i64* %14, align 8
  %426 = load i64, i64* %18, align 8
  store i64 %426, i64* %9, align 8
  br label %427

427:                                              ; preds = %419, %412
  %428 = load i32, i32* %19, align 4
  %429 = add i32 %428, 1
  %430 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %431 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %430, i32 0, i32 7
  store i32 %429, i32* %431, align 4
  br label %432

432:                                              ; preds = %427, %405
  br label %433

433:                                              ; preds = %432, %289, %262
  %434 = load i32, i32* %7, align 4
  %435 = add i32 %434, 1
  store i32 %435, i32* %7, align 4
  br label %139

436:                                              ; preds = %139
  br label %437

437:                                              ; preds = %436, %315, %134
  %438 = load i64, i64* %14, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %447

440:                                              ; preds = %437
  %441 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %442 = load i64, i64* %14, align 8
  %443 = load i64, i64* %9, align 8
  %444 = load i32, i32* %12, align 4
  %445 = load i32, i32* @rxrpc_propose_ack_input_data, align 4
  %446 = call i32 @rxrpc_propose_ACK(%struct.rxrpc_call* %441, i64 %442, i64 %443, i32 %444, i32 1, i32 %445)
  br label %453

447:                                              ; preds = %437
  %448 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %449 = load i64, i64* @RXRPC_ACK_DELAY, align 8
  %450 = load i64, i64* %8, align 8
  %451 = load i32, i32* @rxrpc_propose_ack_input_data, align 4
  %452 = call i32 @rxrpc_propose_ACK(%struct.rxrpc_call* %448, i64 %449, i64 %450, i32 0, i32 1, i32 %451)
  br label %453

453:                                              ; preds = %447, %440
  %454 = load i32, i32* %10, align 4
  %455 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %456 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = call i32 @READ_ONCE(i64 %457)
  %459 = add nsw i32 %458, 1
  %460 = icmp eq i32 %454, %459
  br i1 %460, label %461, label %469

461:                                              ; preds = %453
  %462 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %463 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %462, i32 0, i32 9
  %464 = load i32, i32* %463, align 4
  %465 = load i64, i64* %8, align 8
  %466 = call i32 @trace_rxrpc_notify_socket(i32 %464, i64 %465)
  %467 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %468 = call i32 @rxrpc_notify_socket(%struct.rxrpc_call* %467)
  br label %469

469:                                              ; preds = %461, %453
  br label %470

470:                                              ; preds = %469, %219, %201, %116
  %471 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %472 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %471, i32 0, i32 8
  %473 = call i32 @spin_unlock(i32* %472)
  %474 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %475 = load i32, i32* @rxrpc_skb_freed, align 4
  %476 = call i32 @rxrpc_free_skb(%struct.sk_buff* %474, i32 %475)
  %477 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %478

478:                                              ; preds = %470, %67
  ret void
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_enter(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @_proto(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @READ_ONCE(i64) #1

declare dso_local i32 @rxrpc_free_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @rxrpc_reduce_call_timer(%struct.rxrpc_call*, i64, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rxrpc_receiving_reply(%struct.rxrpc_call*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_proto_abort(i8*, %struct.rxrpc_call*, i32) #1

declare dso_local i64 @after_eq(i32, i32) #1

declare dso_local i32 @trace_rxrpc_rx_data(i32, i32, i64, i64, i64) #1

declare dso_local i64 @before_eq(i32, i32) #1

declare dso_local i32 @rxrpc_input_dup_data(%struct.rxrpc_call*, i32, i32, i32*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @rxrpc_get_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @trace_rxrpc_receive(%struct.rxrpc_call*, i32, i64, i32) #1

declare dso_local i32 @_net(i8*, i32, i32) #1

declare dso_local i32 @rxrpc_propose_ACK(%struct.rxrpc_call*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @trace_rxrpc_notify_socket(i32, i64) #1

declare dso_local i32 @rxrpc_notify_socket(%struct.rxrpc_call*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
