; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i8*, i32 }
%struct.rxrpc_local = type { i64 }
%struct.rxrpc_connection = type { i64, i64, %struct.rxrpc_channel*, i64, i32, %struct.TYPE_4__, i32 }
%struct.rxrpc_channel = type { i64, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rxrpc_call = type { i64, i32, i32, i32, i64 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i64, i64, i32, i64, i32 }
%struct.rxrpc_peer = type { i32 }
%struct.rxrpc_sock = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@rxrpc_skb_received = common dso_local global i32 0, align 4
@CONFIG_AF_RXRPC_INJECT_LOSS = common dso_local global i32 0, align 4
@rxrpc_input_packet.lose = internal global i32 0, align 4
@rxrpc_skb_lost = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@rxrpc_skb_unshared_nomem = common dso_local global i32 0, align 4
@rxrpc_skb_unshared = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Rx Bad Packet Type %u\00", align 1
@RXRPC_CONN_PROBING_FOR_UPGRADE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"CONN %p {%d}\00", align 1
@RXRPC_CHANNELMASK = common dso_local global i32 0, align 4
@RXRPC_CALL_RX_HEARD = common dso_local global i32 0, align 4
@rxrpc_skb_freed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"SEC\00", align 1
@RXKADINCONSISTENCY = common dso_local global i8* null, align 8
@EBADMSG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"INV\00", align 1
@RX_INVALID_OPERATION = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"UPG\00", align 1
@RX_PROTOCOL_ERROR = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"BAD\00", align 1
@RXRPC_SKB_MARK_REJECT_ABORT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c" [badmsg]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxrpc_input_packet(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxrpc_local*, align 8
  %7 = alloca %struct.rxrpc_connection*, align 8
  %8 = alloca %struct.rxrpc_channel*, align 8
  %9 = alloca %struct.rxrpc_call*, align 8
  %10 = alloca %struct.rxrpc_skb_priv*, align 8
  %11 = alloca %struct.rxrpc_peer*, align 8
  %12 = alloca %struct.rxrpc_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.rxrpc_local* @rcu_dereference_sk_user_data(%struct.sock* %16)
  store %struct.rxrpc_local* %17, %struct.rxrpc_local** %6, align 8
  store %struct.rxrpc_call* null, %struct.rxrpc_call** %9, align 8
  store %struct.rxrpc_peer* null, %struct.rxrpc_peer** %11, align 8
  store %struct.rxrpc_sock* null, %struct.rxrpc_sock** %12, align 8
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.sock* %18)
  %20 = load %struct.rxrpc_local*, %struct.rxrpc_local** %6, align 8
  %21 = icmp ne %struct.rxrpc_local* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  store i32 0, i32* %3, align 4
  br label %625

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = call i8* (...) @ktime_get_real()
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @rxrpc_skb_received, align 4
  %42 = call i32 @rxrpc_new_skb(%struct.sk_buff* %40, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @skb_pull(%struct.sk_buff* %43, i32 4)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %45)
  store %struct.rxrpc_skb_priv* %46, %struct.rxrpc_skb_priv** %10, align 8
  %47 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i64 @rxrpc_extract_header(%struct.rxrpc_skb_priv* %47, %struct.sk_buff* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %589

52:                                               ; preds = %39
  %53 = load i32, i32* @CONFIG_AF_RXRPC_INJECT_LOSS, align 4
  %54 = call i64 @IS_ENABLED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* @rxrpc_input_packet.lose, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @rxrpc_input_packet.lose, align 4
  %59 = and i32 %57, 7
  %60 = icmp eq i32 %59, 7
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %63 = call i32 @trace_rxrpc_rx_lose(%struct.rxrpc_skb_priv* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load i32, i32* @rxrpc_skb_lost, align 4
  %66 = call i32 @rxrpc_free_skb(%struct.sk_buff* %64, i32 %65)
  store i32 0, i32* %3, align 4
  br label %625

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %52
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = call i8* (...) @ktime_get_real()
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %80 = call i32 @trace_rxrpc_rx_packet(%struct.rxrpc_skb_priv* %79)
  %81 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %82 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %172 [
    i32 128, label %85
    i32 133, label %94
    i32 135, label %100
    i32 134, label %100
    i32 136, label %108
    i32 131, label %109
    i32 132, label %159
    i32 129, label %165
    i32 130, label %171
    i32 138, label %171
    i32 137, label %171
  ]

85:                                               ; preds = %78
  %86 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %87 = call i64 @rxrpc_to_client(%struct.rxrpc_skb_priv* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %529

90:                                               ; preds = %85
  %91 = load %struct.rxrpc_local*, %struct.rxrpc_local** %6, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = call i32 @rxrpc_post_packet_to_local(%struct.rxrpc_local* %91, %struct.sk_buff* %92)
  br label %533

94:                                               ; preds = %78
  %95 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %96 = call i64 @rxrpc_to_server(%struct.rxrpc_skb_priv* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %529

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %78, %78, %99
  %101 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %102 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %589

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %78, %107
  br label %178

109:                                              ; preds = %78
  %110 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %111 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %117 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115, %109
  br label %589

122:                                              ; preds = %115
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = call i32 @rxrpc_validate_data(%struct.sk_buff* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  br label %589

127:                                              ; preds = %122
  %128 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %129 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %158

133:                                              ; preds = %127
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = load i32, i32* @GFP_ATOMIC, align 4
  %136 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %134, i32 %135)
  store %struct.sk_buff* %136, %struct.sk_buff** %14, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %138 = icmp ne %struct.sk_buff* %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %133
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = load i32, i32* @rxrpc_skb_unshared_nomem, align 4
  %142 = call i32 @rxrpc_eaten_skb(%struct.sk_buff* %140, i32 %141)
  br label %533

143:                                              ; preds = %133
  %144 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = icmp ne %struct.sk_buff* %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = load i32, i32* @rxrpc_skb_received, align 4
  %150 = call i32 @rxrpc_eaten_skb(%struct.sk_buff* %148, i32 %149)
  %151 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %151, %struct.sk_buff** %5, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = load i32, i32* @rxrpc_skb_unshared, align 4
  %154 = call i32 @rxrpc_new_skb(%struct.sk_buff* %152, i32 %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %155)
  store %struct.rxrpc_skb_priv* %156, %struct.rxrpc_skb_priv** %10, align 8
  br label %157

157:                                              ; preds = %147, %143
  br label %158

158:                                              ; preds = %157, %127
  br label %178

159:                                              ; preds = %78
  %160 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %161 = call i64 @rxrpc_to_server(%struct.rxrpc_skb_priv* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %529

164:                                              ; preds = %159
  br label %178

165:                                              ; preds = %78
  %166 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %167 = call i64 @rxrpc_to_client(%struct.rxrpc_skb_priv* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %529

170:                                              ; preds = %165
  br label %178

171:                                              ; preds = %78, %78, %78
  br label %529

172:                                              ; preds = %78
  %173 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %174 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @_proto(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %176)
  br label %589

178:                                              ; preds = %170, %164, %158, %108
  %179 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %180 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %589

185:                                              ; preds = %178
  %186 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %187 = call i64 @rxrpc_to_server(%struct.rxrpc_skb_priv* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %231

189:                                              ; preds = %185
  %190 = load %struct.rxrpc_local*, %struct.rxrpc_local** %6, align 8
  %191 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i8* @rcu_dereference(i64 %192)
  %194 = bitcast i8* %193 to %struct.rxrpc_sock*
  store %struct.rxrpc_sock* %194, %struct.rxrpc_sock** %12, align 8
  %195 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %12, align 8
  %196 = icmp ne %struct.rxrpc_sock* %195, null
  br i1 %196, label %197, label %216

197:                                              ; preds = %189
  %198 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %199 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %12, align 8
  %203 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %201, %205
  br i1 %206, label %207, label %230

207:                                              ; preds = %197
  %208 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %209 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %12, align 8
  %213 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %211, %214
  br i1 %215, label %216, label %230

216:                                              ; preds = %207, %189
  %217 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %218 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 131
  br i1 %221, label %222, label %229

222:                                              ; preds = %216
  %223 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %224 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  br label %554

229:                                              ; preds = %222, %216
  br label %529

230:                                              ; preds = %207, %197
  br label %231

231:                                              ; preds = %230, %185
  %232 = load %struct.rxrpc_local*, %struct.rxrpc_local** %6, align 8
  %233 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %234 = call %struct.rxrpc_connection* @rxrpc_find_connection_rcu(%struct.rxrpc_local* %232, %struct.sk_buff* %233, %struct.rxrpc_peer** %11)
  store %struct.rxrpc_connection* %234, %struct.rxrpc_connection** %7, align 8
  %235 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %236 = icmp ne %struct.rxrpc_connection* %235, null
  br i1 %236, label %237, label %484

237:                                              ; preds = %231
  %238 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %239 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %243 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %241, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %237
  br label %535

247:                                              ; preds = %237
  %248 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %249 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %253 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %251, %254
  br i1 %255, label %256, label %291

256:                                              ; preds = %247
  %257 = load i32, i32* @RXRPC_CONN_PROBING_FOR_UPGRADE, align 4
  %258 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %259 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %258, i32 0, i32 6
  %260 = call i32 @test_bit(i32 %257, i32* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %256
  br label %573

263:                                              ; preds = %256
  %264 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %265 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %264, i32 0, i32 1
  %266 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %267 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %271 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @cmpxchg(i64* %265, i32 %269, i64 %273)
  store i32 %274, i32* %15, align 4
  %275 = load i32, i32* %15, align 4
  %276 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %277 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %276, i32 0, i32 5
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %275, %279
  br i1 %280, label %281, label %290

281:                                              ; preds = %263
  %282 = load i32, i32* %15, align 4
  %283 = sext i32 %282 to i64
  %284 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %285 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %283, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %281
  br label %573

290:                                              ; preds = %281, %263
  br label %291

291:                                              ; preds = %290, %247
  %292 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %293 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %291
  %298 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %299 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %300 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.rxrpc_connection* %298, i32 %301)
  %303 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %304 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %305 = call i32 @rxrpc_post_packet_to_conn(%struct.rxrpc_connection* %303, %struct.sk_buff* %304)
  br label %533

306:                                              ; preds = %291
  %307 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %308 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 6
  %310 = load i64, i64* %309, align 8
  %311 = trunc i64 %310 to i32
  %312 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %313 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = trunc i64 %314 to i32
  %316 = sub nsw i32 %311, %315
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %306
  %319 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %320 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 6
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %324 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %323, i32 0, i32 3
  store i64 %322, i64* %324, align 8
  br label %325

325:                                              ; preds = %318, %306
  %326 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %327 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @RXRPC_CHANNELMASK, align 4
  %331 = and i32 %329, %330
  store i32 %331, i32* %13, align 4
  %332 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %333 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %332, i32 0, i32 2
  %334 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %333, align 8
  %335 = load i32, i32* %13, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %334, i64 %336
  store %struct.rxrpc_channel* %337, %struct.rxrpc_channel** %8, align 8
  %338 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %339 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %8, align 8
  %343 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = icmp slt i64 %341, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %325
  br label %529

347:                                              ; preds = %325
  %348 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %349 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %8, align 8
  %353 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = icmp eq i64 %351, %354
  br i1 %355, label %356, label %405

356:                                              ; preds = %347
  %357 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %8, align 8
  %358 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %357, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %367, label %361

361:                                              ; preds = %356
  %362 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %363 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp eq i32 %365, 136
  br i1 %366, label %367, label %368

367:                                              ; preds = %361, %356
  br label %529

368:                                              ; preds = %361
  %369 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %370 = call i64 @rxrpc_conn_is_service(%struct.rxrpc_connection* %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %368
  %373 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %8, align 8
  %374 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = icmp eq i32 %375, 135
  br i1 %376, label %377, label %378

377:                                              ; preds = %372
  br label %529

378:                                              ; preds = %372, %368
  %379 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %380 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = icmp eq i32 %382, 131
  br i1 %383, label %384, label %401

384:                                              ; preds = %378
  %385 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %8, align 8
  %386 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %389 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %393 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 6
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %397 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @trace_rxrpc_rx_data(i32 %387, i32 %391, i64 %395, i32 %399, i32 0)
  br label %401

401:                                              ; preds = %384, %378
  %402 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %403 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %404 = call i32 @rxrpc_post_packet_to_conn(%struct.rxrpc_connection* %402, %struct.sk_buff* %403)
  br label %533

405:                                              ; preds = %347
  %406 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %8, align 8
  %407 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %406, i32 0, i32 3
  %408 = load i64, i64* %407, align 8
  %409 = call i8* @rcu_dereference(i64 %408)
  %410 = bitcast i8* %409 to %struct.rxrpc_call*
  store %struct.rxrpc_call* %410, %struct.rxrpc_call** %9, align 8
  %411 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %412 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = load %struct.rxrpc_channel*, %struct.rxrpc_channel** %8, align 8
  %416 = getelementptr inbounds %struct.rxrpc_channel, %struct.rxrpc_channel* %415, i32 0, i32 2
  %417 = load i64, i64* %416, align 8
  %418 = icmp sgt i64 %414, %417
  br i1 %418, label %419, label %433

419:                                              ; preds = %405
  %420 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %421 = call i64 @rxrpc_to_client(%struct.rxrpc_skb_priv* %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %419
  br label %613

424:                                              ; preds = %419
  %425 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %426 = icmp ne %struct.rxrpc_call* %425, null
  br i1 %426, label %427, label %432

427:                                              ; preds = %424
  %428 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %12, align 8
  %429 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %430 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %431 = call i32 @rxrpc_input_implicit_end_call(%struct.rxrpc_sock* %428, %struct.rxrpc_connection* %429, %struct.rxrpc_call* %430)
  br label %432

432:                                              ; preds = %427, %424
  store %struct.rxrpc_call* null, %struct.rxrpc_call** %9, align 8
  br label %433

433:                                              ; preds = %432, %405
  %434 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %435 = icmp ne %struct.rxrpc_call* %434, null
  br i1 %435, label %436, label %483

436:                                              ; preds = %433
  %437 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %438 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 4
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %442 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %440, %443
  br i1 %444, label %445, label %452

445:                                              ; preds = %436
  %446 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %447 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 4
  %449 = load i64, i64* %448, align 8
  %450 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %451 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %450, i32 0, i32 0
  store i64 %449, i64* %451, align 8
  br label %452

452:                                              ; preds = %445, %436
  %453 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %454 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i32 0, i32 6
  %456 = load i64, i64* %455, align 8
  %457 = trunc i64 %456 to i32
  %458 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %459 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %458, i32 0, i32 4
  %460 = load i64, i64* %459, align 8
  %461 = trunc i64 %460 to i32
  %462 = sub nsw i32 %457, %461
  %463 = icmp sgt i32 %462, 0
  br i1 %463, label %464, label %471

464:                                              ; preds = %452
  %465 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %466 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %466, i32 0, i32 6
  %468 = load i64, i64* %467, align 8
  %469 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %470 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %469, i32 0, i32 4
  store i64 %468, i64* %470, align 8
  br label %471

471:                                              ; preds = %464, %452
  %472 = load i32, i32* @RXRPC_CALL_RX_HEARD, align 4
  %473 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %474 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %473, i32 0, i32 3
  %475 = call i32 @test_bit(i32 %472, i32* %474)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %482, label %477

477:                                              ; preds = %471
  %478 = load i32, i32* @RXRPC_CALL_RX_HEARD, align 4
  %479 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %480 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %479, i32 0, i32 3
  %481 = call i32 @set_bit(i32 %478, i32* %480)
  br label %482

482:                                              ; preds = %477, %471
  br label %483

483:                                              ; preds = %482, %433
  br label %484

484:                                              ; preds = %483, %231
  %485 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %486 = icmp ne %struct.rxrpc_call* %485, null
  br i1 %486, label %487, label %492

487:                                              ; preds = %484
  %488 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %489 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %488, i32 0, i32 2
  %490 = call i64 @atomic_read(i32* %489)
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %492, label %525

492:                                              ; preds = %487, %484
  %493 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %494 = call i64 @rxrpc_to_client(%struct.rxrpc_skb_priv* %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %502, label %496

496:                                              ; preds = %492
  %497 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %498 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = icmp ne i32 %500, 131
  br i1 %501, label %502, label %503

502:                                              ; preds = %496, %492
  br label %589

503:                                              ; preds = %496
  %504 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %505 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 8
  %508 = icmp ne i32 %507, 1
  br i1 %508, label %509, label %510

509:                                              ; preds = %503
  br label %529

510:                                              ; preds = %503
  %511 = load %struct.rxrpc_local*, %struct.rxrpc_local** %6, align 8
  %512 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %12, align 8
  %513 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %514 = call %struct.rxrpc_call* @rxrpc_new_incoming_call(%struct.rxrpc_local* %511, %struct.rxrpc_sock* %512, %struct.sk_buff* %513)
  store %struct.rxrpc_call* %514, %struct.rxrpc_call** %9, align 8
  %515 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %516 = icmp ne %struct.rxrpc_call* %515, null
  br i1 %516, label %518, label %517

517:                                              ; preds = %510
  br label %613

518:                                              ; preds = %510
  %519 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %520 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %521 = call i32 @rxrpc_send_ping(%struct.rxrpc_call* %519, %struct.sk_buff* %520)
  %522 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %523 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %522, i32 0, i32 1
  %524 = call i32 @mutex_unlock(i32* %523)
  br label %525

525:                                              ; preds = %518, %487
  %526 = load %struct.rxrpc_call*, %struct.rxrpc_call** %9, align 8
  %527 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %528 = call i32 @rxrpc_input_call_packet(%struct.rxrpc_call* %526, %struct.sk_buff* %527)
  br label %533

529:                                              ; preds = %509, %377, %367, %346, %229, %171, %169, %163, %98, %89
  %530 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %531 = load i32, i32* @rxrpc_skb_freed, align 4
  %532 = call i32 @rxrpc_free_skb(%struct.sk_buff* %530, i32 %531)
  br label %533

533:                                              ; preds = %529, %525, %401, %297, %139, %90
  %534 = call i32 @trace_rxrpc_rx_done(i32 0, i8* null)
  store i32 0, i32* %3, align 4
  br label %625

535:                                              ; preds = %246
  %536 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %537 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 5
  %539 = load i32, i32* %538, align 8
  %540 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %541 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %541, i32 0, i32 1
  %543 = load i64, i64* %542, align 8
  %544 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %545 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 8
  %548 = load i8*, i8** @RXKADINCONSISTENCY, align 8
  %549 = load i32, i32* @EBADMSG, align 4
  %550 = call i32 @trace_rxrpc_abort(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %539, i64 %543, i32 %547, i8* %548, i32 %549)
  %551 = load i8*, i8** @RXKADINCONSISTENCY, align 8
  %552 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %553 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %552, i32 0, i32 1
  store i8* %551, i8** %553, align 8
  br label %609

554:                                              ; preds = %228
  %555 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %556 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i32 0, i32 5
  %558 = load i32, i32* %557, align 8
  %559 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %560 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %560, i32 0, i32 1
  %562 = load i64, i64* %561, align 8
  %563 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %564 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %563, i32 0, i32 0
  %565 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %564, i32 0, i32 2
  %566 = load i32, i32* %565, align 8
  %567 = load i8*, i8** @RX_INVALID_OPERATION, align 8
  %568 = load i32, i32* @EOPNOTSUPP, align 4
  %569 = call i32 @trace_rxrpc_abort(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %558, i64 %562, i32 %566, i8* %567, i32 %568)
  %570 = load i8*, i8** @RX_INVALID_OPERATION, align 8
  %571 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %572 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %571, i32 0, i32 1
  store i8* %570, i8** %572, align 8
  br label %609

573:                                              ; preds = %289, %262
  %574 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %575 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %575, i32 0, i32 5
  %577 = load i32, i32* %576, align 8
  %578 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %579 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %579, i32 0, i32 1
  %581 = load i64, i64* %580, align 8
  %582 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %583 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %583, i32 0, i32 2
  %585 = load i32, i32* %584, align 8
  %586 = load i8*, i8** @RX_PROTOCOL_ERROR, align 8
  %587 = load i32, i32* @EBADMSG, align 4
  %588 = call i32 @trace_rxrpc_abort(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %577, i64 %581, i32 %585, i8* %586, i32 %587)
  br label %605

589:                                              ; preds = %502, %184, %172, %126, %121, %106, %51
  %590 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %591 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %591, i32 0, i32 5
  %593 = load i32, i32* %592, align 8
  %594 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %595 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %595, i32 0, i32 1
  %597 = load i64, i64* %596, align 8
  %598 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %599 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %598, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %599, i32 0, i32 2
  %601 = load i32, i32* %600, align 8
  %602 = load i8*, i8** @RX_PROTOCOL_ERROR, align 8
  %603 = load i32, i32* @EBADMSG, align 4
  %604 = call i32 @trace_rxrpc_abort(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %593, i64 %597, i32 %601, i8* %602, i32 %603)
  br label %605

605:                                              ; preds = %589, %573
  %606 = load i8*, i8** @RX_PROTOCOL_ERROR, align 8
  %607 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %608 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %607, i32 0, i32 1
  store i8* %606, i8** %608, align 8
  br label %609

609:                                              ; preds = %605, %554, %535
  %610 = load i32, i32* @RXRPC_SKB_MARK_REJECT_ABORT, align 4
  %611 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %612 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %611, i32 0, i32 2
  store i32 %610, i32* %612, align 8
  br label %613

613:                                              ; preds = %609, %517, %423
  %614 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %615 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %614, i32 0, i32 2
  %616 = load i32, i32* %615, align 8
  %617 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %618 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %617, i32 0, i32 1
  %619 = load i8*, i8** %618, align 8
  %620 = call i32 @trace_rxrpc_rx_done(i32 %616, i8* %619)
  %621 = load %struct.rxrpc_local*, %struct.rxrpc_local** %6, align 8
  %622 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %623 = call i32 @rxrpc_reject_packet(%struct.rxrpc_local* %621, %struct.sk_buff* %622)
  %624 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %625

625:                                              ; preds = %613, %533, %61, %26
  %626 = load i32, i32* %3, align 4
  ret i32 %626
}

declare dso_local %struct.rxrpc_local* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @_enter(i8*, %struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @ktime_get_real(...) #1

declare dso_local i32 @rxrpc_new_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i64 @rxrpc_extract_header(%struct.rxrpc_skb_priv*, %struct.sk_buff*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @trace_rxrpc_rx_lose(%struct.rxrpc_skb_priv*) #1

declare dso_local i32 @rxrpc_free_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @trace_rxrpc_rx_packet(%struct.rxrpc_skb_priv*) #1

declare dso_local i64 @rxrpc_to_client(%struct.rxrpc_skb_priv*) #1

declare dso_local i32 @rxrpc_post_packet_to_local(%struct.rxrpc_local*, %struct.sk_buff*) #1

declare dso_local i64 @rxrpc_to_server(%struct.rxrpc_skb_priv*) #1

declare dso_local i32 @rxrpc_validate_data(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i32 @rxrpc_eaten_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @_proto(i8*, i32) #1

declare dso_local i8* @rcu_dereference(i64) #1

declare dso_local %struct.rxrpc_connection* @rxrpc_find_connection_rcu(%struct.rxrpc_local*, %struct.sk_buff*, %struct.rxrpc_peer**) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cmpxchg(i64*, i32, i64) #1

declare dso_local i32 @_debug(i8*, %struct.rxrpc_connection*, i32) #1

declare dso_local i32 @rxrpc_post_packet_to_conn(%struct.rxrpc_connection*, %struct.sk_buff*) #1

declare dso_local i64 @rxrpc_conn_is_service(%struct.rxrpc_connection*) #1

declare dso_local i32 @trace_rxrpc_rx_data(i32, i32, i64, i32, i32) #1

declare dso_local i32 @rxrpc_input_implicit_end_call(%struct.rxrpc_sock*, %struct.rxrpc_connection*, %struct.rxrpc_call*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.rxrpc_call* @rxrpc_new_incoming_call(%struct.rxrpc_local*, %struct.rxrpc_sock*, %struct.sk_buff*) #1

declare dso_local i32 @rxrpc_send_ping(%struct.rxrpc_call*, %struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rxrpc_input_call_packet(%struct.rxrpc_call*, %struct.sk_buff*) #1

declare dso_local i32 @trace_rxrpc_rx_done(i32, i8*) #1

declare dso_local i32 @trace_rxrpc_abort(i32, i8*, i32, i64, i32, i8*, i32) #1

declare dso_local i32 @rxrpc_reject_packet(%struct.rxrpc_local*, %struct.sk_buff*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
