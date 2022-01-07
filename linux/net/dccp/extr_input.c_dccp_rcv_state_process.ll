; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_rcv_state_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_input.c_dccp_rcv_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)* }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i64 }
%struct.dccp_sock = type { i64 }
%struct.dccp_skb_cb = type { i32, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.sock*, %struct.sk_buff*)* }

@DCCP_LISTEN = common dso_local global i32 0, align 4
@DCCP_PKT_REQUEST = common dso_local global i64 0, align 8
@DCCP_PKT_RESET = common dso_local global i64 0, align 8
@DCCP_RESET_CODE_NO_CONNECTION = common dso_local global i8* null, align 8
@DCCP_CLOSED = common dso_local global i32 0, align 4
@DCCP_ROLE_CLIENT = common dso_local global i64 0, align 8
@DCCP_PKT_RESPONSE = common dso_local global i64 0, align 8
@DCCP_PKT_DATA = common dso_local global i64 0, align 8
@DCCP_PKT_SYNC = common dso_local global i64 0, align 8
@DCCP_PKT_CLOSEREQ = common dso_local global i64 0, align 8
@DCCP_PKT_CLOSE = common dso_local global i64 0, align 8
@DCCP_PKT_ACK = common dso_local global i64 0, align 8
@DCCP_PKT_DATAACK = common dso_local global i64 0, align 8
@SOCK_WAKE_IO = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@DCCP_PKT_SYNCACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_rcv_state_process(%struct.sock* %0, %struct.sk_buff* %1, %struct.dccp_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dccp_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dccp_sock*, align 8
  %11 = alloca %struct.dccp_skb_cb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.dccp_hdr* %2, %struct.dccp_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %15)
  store %struct.dccp_sock* %16, %struct.dccp_sock** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff* %17)
  store %struct.dccp_skb_cb* %18, %struct.dccp_skb_cb** %11, align 8
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DCCP_LISTEN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %4
  %28 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %29 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DCCP_PKT_REQUEST, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = call i32 (...) @rcu_read_lock()
  %35 = call i32 (...) @local_bh_disable()
  %36 = load %struct.sock*, %struct.sock** %6, align 8
  %37 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64 (%struct.sock*, %struct.sk_buff*)*, i64 (%struct.sock*, %struct.sk_buff*)** %40, align 8
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call i64 %41(%struct.sock* %42, %struct.sk_buff* %43)
  %45 = icmp sge i64 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %13, align 4
  %47 = call i32 (...) @local_bh_enable()
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %254

52:                                               ; preds = %33
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call i32 @consume_skb(%struct.sk_buff* %53)
  store i32 0, i32* %5, align 4
  br label %254

55:                                               ; preds = %27
  %56 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %57 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DCCP_PKT_RESET, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %250

62:                                               ; preds = %55
  %63 = load i8*, i8** @DCCP_RESET_CODE_NO_CONNECTION, align 8
  %64 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %65 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  store i32 1, i32* %5, align 4
  br label %254

66:                                               ; preds = %4
  %67 = load %struct.sock*, %struct.sock** %6, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DCCP_CLOSED, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i8*, i8** @DCCP_RESET_CODE_NO_CONNECTION, align 8
  %74 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %75 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  store i32 1, i32* %5, align 4
  br label %254

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.sock*, %struct.sock** %6, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 129
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = call i64 @dccp_check_seqno(%struct.sock* %83, %struct.sk_buff* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %250

88:                                               ; preds = %82, %77
  %89 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %90 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DCCP_ROLE_CLIENT, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %96 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DCCP_PKT_RESPONSE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %123, label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %102 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DCCP_ROLE_CLIENT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %108 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DCCP_PKT_REQUEST, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %123, label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.sock*, %struct.sock** %6, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 128
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %119 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DCCP_PKT_DATA, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117, %106, %94
  %124 = load %struct.sock*, %struct.sock** %6, align 8
  %125 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %126 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* @DCCP_PKT_SYNC, align 8
  %129 = call i32 @dccp_send_sync(%struct.sock* %124, i32 %127, i64 %128)
  br label %250

130:                                              ; preds = %117, %112
  %131 = load %struct.sock*, %struct.sock** %6, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = call i64 @dccp_parse_options(%struct.sock* %131, i32* null, %struct.sk_buff* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 1, i32* %5, align 4
  br label %254

136:                                              ; preds = %130
  %137 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %138 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DCCP_PKT_RESET, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %struct.sock*, %struct.sock** %6, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %145 = call i32 @dccp_rcv_reset(%struct.sock* %143, %struct.sk_buff* %144)
  store i32 0, i32* %5, align 4
  br label %254

146:                                              ; preds = %136
  %147 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %148 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @DCCP_PKT_CLOSEREQ, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load %struct.sock*, %struct.sock** %6, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = call i64 @dccp_rcv_closereq(%struct.sock* %153, %struct.sk_buff* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 0, i32* %5, align 4
  br label %254

158:                                              ; preds = %152
  br label %250

159:                                              ; preds = %146
  %160 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %161 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DCCP_PKT_CLOSE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %159
  %166 = load %struct.sock*, %struct.sock** %6, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %168 = call i64 @dccp_rcv_close(%struct.sock* %166, %struct.sk_buff* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store i32 0, i32* %5, align 4
  br label %254

171:                                              ; preds = %165
  br label %250

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.sock*, %struct.sock** %6, align 8
  %176 = getelementptr inbounds %struct.sock, %struct.sock* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  switch i32 %177, label %204 [
    i32 129, label %178
    i32 130, label %191
    i32 128, label %198
  ]

178:                                              ; preds = %174
  %179 = load %struct.sock*, %struct.sock** %6, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %181 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @dccp_rcv_request_sent_state_process(%struct.sock* %179, %struct.sk_buff* %180, %struct.dccp_hdr* %181, i32 %182)
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* %14, align 4
  store i32 %187, i32* %5, align 4
  br label %254

188:                                              ; preds = %178
  %189 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %190 = call i32 @__kfree_skb(%struct.sk_buff* %189)
  store i32 0, i32* %5, align 4
  br label %254

191:                                              ; preds = %174
  %192 = load %struct.sock*, %struct.sock** %6, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %194 = call i32 @dccp_handle_ackvec_processing(%struct.sock* %192, %struct.sk_buff* %193)
  %195 = load %struct.sock*, %struct.sock** %6, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %197 = call i32 @dccp_deliver_input_to_ccids(%struct.sock* %195, %struct.sk_buff* %196)
  br label %198

198:                                              ; preds = %174, %191
  %199 = load %struct.sock*, %struct.sock** %6, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %201 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @dccp_rcv_respond_partopen_state_process(%struct.sock* %199, %struct.sk_buff* %200, %struct.dccp_hdr* %201, i32 %202)
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %174, %198
  %205 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %206 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @DCCP_PKT_ACK, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %216, label %210

210:                                              ; preds = %204
  %211 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %212 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @DCCP_PKT_DATAACK, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %210, %204
  %217 = load i32, i32* %12, align 4
  switch i32 %217, label %228 [
    i32 130, label %218
  ]

218:                                              ; preds = %216
  %219 = load %struct.sock*, %struct.sock** %6, align 8
  %220 = getelementptr inbounds %struct.sock, %struct.sock* %219, i32 0, i32 1
  %221 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %220, align 8
  %222 = load %struct.sock*, %struct.sock** %6, align 8
  %223 = call i32 %221(%struct.sock* %222)
  %224 = load %struct.sock*, %struct.sock** %6, align 8
  %225 = load i32, i32* @SOCK_WAKE_IO, align 4
  %226 = load i32, i32* @POLL_OUT, align 4
  %227 = call i32 @sk_wake_async(%struct.sock* %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %216, %218
  br label %246

229:                                              ; preds = %210
  %230 = load %struct.dccp_hdr*, %struct.dccp_hdr** %8, align 8
  %231 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @DCCP_PKT_SYNC, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = call i64 @unlikely(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %229
  %239 = load %struct.sock*, %struct.sock** %6, align 8
  %240 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %11, align 8
  %241 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i64, i64* @DCCP_PKT_SYNCACK, align 8
  %244 = call i32 @dccp_send_sync(%struct.sock* %239, i32 %242, i64 %243)
  br label %250

245:                                              ; preds = %229
  br label %246

246:                                              ; preds = %245, %228
  %247 = load i32, i32* %14, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %246
  br label %250

250:                                              ; preds = %249, %238, %171, %158, %123, %87, %61
  %251 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %252 = call i32 @__kfree_skb(%struct.sk_buff* %251)
  br label %253

253:                                              ; preds = %250, %246
  store i32 0, i32* %5, align 4
  br label %254

254:                                              ; preds = %253, %188, %186, %170, %157, %142, %135, %72, %62, %52, %51
  %255 = load i32, i32* %5, align 4
  ret i32 %255
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i64 @dccp_check_seqno(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_send_sync(%struct.sock*, i32, i64) #1

declare dso_local i64 @dccp_parse_options(%struct.sock*, i32*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_rcv_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_rcv_closereq(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_rcv_close(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_rcv_request_sent_state_process(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dccp_handle_ackvec_processing(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_deliver_input_to_ccids(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_rcv_respond_partopen_state_process(%struct.sock*, %struct.sk_buff*, %struct.dccp_hdr*, i32) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
