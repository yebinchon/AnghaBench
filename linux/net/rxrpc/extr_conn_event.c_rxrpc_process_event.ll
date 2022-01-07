; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_event.c_rxrpc_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_conn_event.c_rxrpc_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i64, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { {}*, {}*, i32 (%struct.rxrpc_connection*)*, i32 (%struct.rxrpc_connection*)* }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@RXRPC_CONN_REMOTELY_ABORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c" = -ECONNABORTED [%u]\00", align 1
@ECONNABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"{%d},{%u,%%%u},\00", align 1
@RXRPC_CHANNELMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"bad_abort\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Rx ABORT %%%u { ac=%d }\00", align 1
@RXRPC_CALL_REMOTELY_ABORTED = common dso_local global i32 0, align 4
@RXRPC_CONN_SERVICE_CHALLENGING = common dso_local global i64 0, align 8
@RXRPC_CONN_SERVICE = common dso_local global i64 0, align 8
@RXRPC_MAXCALLS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"bad_conn_pkt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)* @rxrpc_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_process_event(%struct.rxrpc_connection* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_connection*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rxrpc_skb_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %13)
  store %struct.rxrpc_skb_priv* %14, %struct.rxrpc_skb_priv** %8, align 8
  %15 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %16 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RXRPC_CONN_REMOTELY_ABORTED, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %22 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @_leave(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @ECONNABORTED, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %204

27:                                               ; preds = %3
  %28 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %29 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %32 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %36 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @_enter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %34, i32 %38)
  %40 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %41 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %195 [
    i32 129, label %44
    i32 132, label %44
    i32 131, label %54
    i32 133, label %55
    i32 130, label %96
    i32 128, label %107
  ]

44:                                               ; preds = %27, %27
  %45 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %48 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RXRPC_CHANNELMASK, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @rxrpc_conn_retransmit_call(%struct.rxrpc_connection* %45, %struct.sk_buff* %46, i32 %52)
  store i32 0, i32* %4, align 4
  br label %204

54:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %204

55:                                               ; preds = %27
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @skb_copy_bits(%struct.sk_buff* %56, i32 4, i32* %9, i32 4)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %61 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @tracepoint_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 @trace_rxrpc_rx_eproto(i32* null, i32 %63, i32 %64)
  %66 = load i32, i32* @EPROTO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %204

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ntohl(i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %72 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @_proto(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* @ECONNABORTED, align 4
  %78 = sub nsw i32 0, %77
  %79 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %80 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %83 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* @RXRPC_CONN_REMOTELY_ABORTED, align 8
  %85 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %86 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %88 = load i32, i32* @RXRPC_CALL_REMOTELY_ABORTED, align 4
  %89 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %90 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @rxrpc_abort_calls(%struct.rxrpc_connection* %87, i32 %88, i32 %92)
  %94 = load i32, i32* @ECONNABORTED, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %204

96:                                               ; preds = %27
  %97 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %98 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %97, i32 0, i32 5
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = bitcast {}** %100 to i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)**
  %102 = load i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)*, i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)** %101, align 8
  %103 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 %102(%struct.rxrpc_connection* %103, %struct.sk_buff* %104, i32* %105)
  store i32 %106, i32* %4, align 4
  br label %204

107:                                              ; preds = %27
  %108 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %109 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %108, i32 0, i32 5
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = bitcast {}** %111 to i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)**
  %113 = load i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)*, i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)** %112, align 8
  %114 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 %113(%struct.rxrpc_connection* %114, %struct.sk_buff* %115, i32* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %107
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %4, align 4
  br label %204

122:                                              ; preds = %107
  %123 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %124 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %123, i32 0, i32 5
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32 (%struct.rxrpc_connection*)*, i32 (%struct.rxrpc_connection*)** %126, align 8
  %128 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %129 = call i32 %127(%struct.rxrpc_connection* %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %4, align 4
  br label %204

134:                                              ; preds = %122
  %135 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %136 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %135, i32 0, i32 5
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32 (%struct.rxrpc_connection*)*, i32 (%struct.rxrpc_connection*)** %138, align 8
  %140 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %141 = call i32 %139(%struct.rxrpc_connection* %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %4, align 4
  br label %204

146:                                              ; preds = %134
  %147 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %148 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %147, i32 0, i32 2
  %149 = call i32 @spin_lock(i32* %148)
  %150 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %151 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %150, i32 0, i32 3
  %152 = call i32 @spin_lock(i32* %151)
  %153 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %154 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @RXRPC_CONN_SERVICE_CHALLENGING, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %187

158:                                              ; preds = %146
  %159 = load i64, i64* @RXRPC_CONN_SERVICE, align 8
  %160 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %161 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %163 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %162, i32 0, i32 3
  %164 = call i32 @spin_unlock(i32* %163)
  store i32 0, i32* %11, align 4
  br label %165

165:                                              ; preds = %183, %158
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @RXRPC_MAXCALLS, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %165
  %170 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %171 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %170, i32 0, i32 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %179 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %178, i32 0, i32 2
  %180 = call i32 @lockdep_is_held(i32* %179)
  %181 = call i32 @rcu_dereference_protected(i32 %177, i32 %180)
  %182 = call i32 @rxrpc_call_is_secure(i32 %181)
  br label %183

183:                                              ; preds = %169
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  br label %165

186:                                              ; preds = %165
  br label %191

187:                                              ; preds = %146
  %188 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %189 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %188, i32 0, i32 3
  %190 = call i32 @spin_unlock(i32* %189)
  br label %191

191:                                              ; preds = %187, %186
  %192 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %193 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %192, i32 0, i32 2
  %194 = call i32 @spin_unlock(i32* %193)
  store i32 0, i32* %4, align 4
  br label %204

195:                                              ; preds = %27
  %196 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %197 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @tracepoint_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %201 = call i32 @trace_rxrpc_rx_eproto(i32* null, i32 %199, i32 %200)
  %202 = load i32, i32* @EPROTO, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %195, %191, %144, %132, %120, %96, %68, %59, %54, %44, %20
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_leave(i8*, i64) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @rxrpc_conn_retransmit_call(%struct.rxrpc_connection*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @trace_rxrpc_rx_eproto(i32*, i32, i32) #1

declare dso_local i32 @tracepoint_string(i8*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @_proto(i8*, i32, i32) #1

declare dso_local i32 @rxrpc_abort_calls(%struct.rxrpc_connection*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rxrpc_call_is_secure(i32) #1

declare dso_local i32 @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
