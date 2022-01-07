; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_call_accept.c_rxrpc_new_incoming_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_call_accept.c_rxrpc_new_incoming_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32, i32, %struct.rxrpc_connection*, i32, i32 }
%struct.rxrpc_connection = type { i32, i32, i32, i32, i32 }
%struct.rxrpc_local = type { i32 }
%struct.rxrpc_sock = type { i32, i32, %struct.TYPE_5__, i32 (%struct.TYPE_5__*, %struct.rxrpc_call.0*, i32)* }
%struct.TYPE_5__ = type { i64 }
%struct.rxrpc_call.0 = type opaque
%struct.sk_buff = type { i32, i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.rxrpc_peer = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RXRPC_SERVER_LISTEN_DISABLED = common dso_local global i64 0, align 8
@RXRPC_CLOSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"CLS\00", align 1
@RX_INVALID_OPERATION = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@RXRPC_SKB_MARK_REJECT_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c" = NULL [close]\00", align 1
@RXRPC_SKB_MARK_REJECT_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c" = NULL [busy]\00", align 1
@rxrpc_receive_incoming = common dso_local global i32 0, align 4
@RXRPC_CONN_SERVICE_CHALLENGING = common dso_local global i32 0, align 4
@RXRPC_CONN_EV_CHALLENGE = common dso_local global i32 0, align 4
@RXRPC_CALL_COMPLETE = common dso_local global i64 0, align 8
@RXRPC_CALL_SERVER_RECV_REQUEST = common dso_local global i64 0, align 8
@RXRPC_CALL_SERVER_ACCEPTING = common dso_local global i64 0, align 8
@RXRPC_CALL_REMOTELY_ABORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"CON\00", align 1
@rxrpc_call_put = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c" = %p{%d}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxrpc_call* @rxrpc_new_incoming_call(%struct.rxrpc_local* %0, %struct.rxrpc_sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.rxrpc_local*, align 8
  %5 = alloca %struct.rxrpc_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rxrpc_skb_priv*, align 8
  %8 = alloca %struct.rxrpc_connection*, align 8
  %9 = alloca %struct.rxrpc_peer*, align 8
  %10 = alloca %struct.rxrpc_call*, align 8
  store %struct.rxrpc_local* %0, %struct.rxrpc_local** %4, align 8
  store %struct.rxrpc_sock* %1, %struct.rxrpc_sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %11)
  store %struct.rxrpc_skb_priv* %12, %struct.rxrpc_skb_priv** %7, align 8
  store %struct.rxrpc_peer* null, %struct.rxrpc_peer** %9, align 8
  %13 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %15 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %18 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RXRPC_SERVER_LISTEN_DISABLED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %25 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RXRPC_CLOSE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %23, %3
  %31 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %32 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %36 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %40 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RX_INVALID_OPERATION, align 4
  %44 = load i32, i32* @ESHUTDOWN, align 4
  %45 = call i32 @trace_rxrpc_abort(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @RXRPC_SKB_MARK_REJECT_ABORT, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @RX_INVALID_OPERATION, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.rxrpc_call* null, %struct.rxrpc_call** %10, align 8
  br label %210

53:                                               ; preds = %23
  %54 = load %struct.rxrpc_local*, %struct.rxrpc_local** %4, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call %struct.rxrpc_connection* @rxrpc_find_connection_rcu(%struct.rxrpc_local* %54, %struct.sk_buff* %55, %struct.rxrpc_peer** %9)
  store %struct.rxrpc_connection* %56, %struct.rxrpc_connection** %8, align 8
  %57 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %58 = load %struct.rxrpc_local*, %struct.rxrpc_local** %4, align 8
  %59 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %9, align 8
  %60 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call %struct.rxrpc_call* @rxrpc_alloc_incoming_call(%struct.rxrpc_sock* %57, %struct.rxrpc_local* %58, %struct.rxrpc_peer* %59, %struct.rxrpc_connection* %60, %struct.sk_buff* %61)
  store %struct.rxrpc_call* %62, %struct.rxrpc_call** %10, align 8
  %63 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %64 = icmp ne %struct.rxrpc_call* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* @RXRPC_SKB_MARK_REJECT_BUSY, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store %struct.rxrpc_call* null, %struct.rxrpc_call** %10, align 8
  br label %210

70:                                               ; preds = %53
  %71 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %72 = load i32, i32* @rxrpc_receive_incoming, align 4
  %73 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %74 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %78 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @trace_rxrpc_receive(%struct.rxrpc_call* %71, i32 %72, i32 %76, i32 %80)
  %82 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %83 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %82, i32 0, i32 5
  %84 = call i32 @mutex_trylock(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %70
  %87 = call i32 (...) @BUG()
  br label %88

88:                                               ; preds = %86, %70
  %89 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %90 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = call i32 @rxrpc_incoming_call(%struct.rxrpc_sock* %89, %struct.rxrpc_call* %90, %struct.sk_buff* %91)
  %93 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %94 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %93, i32 0, i32 3
  %95 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %94, align 8
  store %struct.rxrpc_connection* %95, %struct.rxrpc_connection** %8, align 8
  %96 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %97 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %96, i32 0, i32 3
  %98 = load i32 (%struct.TYPE_5__*, %struct.rxrpc_call.0*, i32)*, i32 (%struct.TYPE_5__*, %struct.rxrpc_call.0*, i32)** %97, align 8
  %99 = icmp ne i32 (%struct.TYPE_5__*, %struct.rxrpc_call.0*, i32)* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %88
  %101 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %102 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %101, i32 0, i32 3
  %103 = load i32 (%struct.TYPE_5__*, %struct.rxrpc_call.0*, i32)*, i32 (%struct.TYPE_5__*, %struct.rxrpc_call.0*, i32)** %102, align 8
  %104 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %105 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %104, i32 0, i32 2
  %106 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %107 = bitcast %struct.rxrpc_call* %106 to %struct.rxrpc_call.0*
  %108 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %109 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 %103(%struct.TYPE_5__* %105, %struct.rxrpc_call.0* %107, i32 %110)
  br label %116

112:                                              ; preds = %88
  %113 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %114 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %113, i32 0, i32 2
  %115 = call i32 @sk_acceptq_added(%struct.TYPE_5__* %114)
  br label %116

116:                                              ; preds = %112, %100
  %117 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %118 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %117, i32 0, i32 1
  %119 = call i32 @spin_lock(i32* %118)
  %120 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %121 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %187 [
    i32 128, label %123
    i32 129, label %137
    i32 130, label %164
    i32 131, label %174
  ]

123:                                              ; preds = %116
  %124 = load i32, i32* @RXRPC_CONN_SERVICE_CHALLENGING, align 4
  %125 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %126 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @RXRPC_CONN_EV_CHALLENGE, align 4
  %128 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %129 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %128, i32 0, i32 3
  %130 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %129, align 8
  %131 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %130, i32 0, i32 4
  %132 = call i32 @set_bit(i32 %127, i32* %131)
  %133 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %134 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %133, i32 0, i32 3
  %135 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %134, align 8
  %136 = call i32 @rxrpc_queue_conn(%struct.rxrpc_connection* %135)
  br label %189

137:                                              ; preds = %116
  %138 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %139 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %138, i32 0, i32 2
  %140 = call i32 @write_lock(i32* %139)
  %141 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %142 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @RXRPC_CALL_COMPLETE, align 8
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %137
  %147 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %148 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i64, i64* @RXRPC_CALL_SERVER_RECV_REQUEST, align 8
  %153 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %154 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %159

155:                                              ; preds = %146
  %156 = load i64, i64* @RXRPC_CALL_SERVER_ACCEPTING, align 8
  %157 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %158 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %151
  br label %160

160:                                              ; preds = %159, %137
  %161 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %162 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %161, i32 0, i32 2
  %163 = call i32 @write_unlock(i32* %162)
  br label %189

164:                                              ; preds = %116
  %165 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %166 = load i32, i32* @RXRPC_CALL_REMOTELY_ABORTED, align 4
  %167 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %168 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %171 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @rxrpc_set_call_completion(%struct.rxrpc_call* %165, i32 %166, i32 %169, i32 %172)
  br label %189

174:                                              ; preds = %116
  %175 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %176 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %177 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %181 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %184 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @rxrpc_abort_call(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.rxrpc_call* %175, i32 %179, i32 %182, i32 %185)
  br label %189

187:                                              ; preds = %116
  %188 = call i32 (...) @BUG()
  br label %189

189:                                              ; preds = %187, %174, %164, %160, %123
  %190 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %8, align 8
  %191 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %190, i32 0, i32 1
  %192 = call i32 @spin_unlock(i32* %191)
  %193 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %194 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @RXRPC_CALL_SERVER_ACCEPTING, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %189
  %199 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %200 = call i32 @rxrpc_notify_socket(%struct.rxrpc_call* %199)
  br label %201

201:                                              ; preds = %198, %189
  %202 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %203 = load i32, i32* @rxrpc_call_put, align 4
  %204 = call i32 @rxrpc_put_call(%struct.rxrpc_call* %202, i32 %203)
  %205 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %206 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  %207 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.rxrpc_call* %205, i32 %208)
  br label %210

210:                                              ; preds = %201, %65, %30
  %211 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %212 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %211, i32 0, i32 0
  %213 = call i32 @spin_unlock(i32* %212)
  %214 = load %struct.rxrpc_call*, %struct.rxrpc_call** %10, align 8
  ret %struct.rxrpc_call* %214
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace_rxrpc_abort(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local %struct.rxrpc_connection* @rxrpc_find_connection_rcu(%struct.rxrpc_local*, %struct.sk_buff*, %struct.rxrpc_peer**) #1

declare dso_local %struct.rxrpc_call* @rxrpc_alloc_incoming_call(%struct.rxrpc_sock*, %struct.rxrpc_local*, %struct.rxrpc_peer*, %struct.rxrpc_connection*, %struct.sk_buff*) #1

declare dso_local i32 @trace_rxrpc_receive(%struct.rxrpc_call*, i32, i32, i32) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @rxrpc_incoming_call(%struct.rxrpc_sock*, %struct.rxrpc_call*, %struct.sk_buff*) #1

declare dso_local i32 @sk_acceptq_added(%struct.TYPE_5__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_conn(%struct.rxrpc_connection*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @rxrpc_set_call_completion(%struct.rxrpc_call*, i32, i32, i32) #1

declare dso_local i32 @rxrpc_abort_call(i8*, %struct.rxrpc_call*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rxrpc_notify_socket(%struct.rxrpc_call*) #1

declare dso_local i32 @rxrpc_put_call(%struct.rxrpc_call*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
