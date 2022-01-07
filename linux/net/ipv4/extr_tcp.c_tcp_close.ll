; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 (%struct.sock*, i32)* }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i64, i32, i32 }
%struct.request_sock = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }

@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@TCPHDR_FIN = common dso_local global i32 0, align 4
@LINUX_MIB_TCPABORTONCLOSE = common dso_local global i32 0, align 4
@SOCK_LINGER = common dso_local global i32 0, align 4
@LINUX_MIB_TCPABORTONDATA = common dso_local global i32 0, align 4
@TCP_FIN_WAIT2 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LINUX_MIB_TCPABORTONLINGER = common dso_local global i32 0, align 4
@TCP_TIMEWAIT_LEN = common dso_local global i32 0, align 4
@LINUX_MIB_TCPABORTONMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_close(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.request_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @lock_sock(%struct.sock* %12)
  %14 = load i32, i32* @SHUTDOWN_MASK, align 4
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TCP_LISTEN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = load i32, i32* @TCP_CLOSE, align 4
  %25 = call i32 @tcp_set_state(%struct.sock* %23, i32 %24)
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @inet_csk_listen_stop(%struct.sock* %26)
  br label %138

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %54, %28
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 4
  %32 = call %struct.sk_buff* @__skb_dequeue(i32* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %5, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %38, %42
  store i64 %43, i64* %8, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TCPHDR_FIN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %51, %34
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @__kfree_skb(%struct.sk_buff* %60)
  br label %29

62:                                               ; preds = %29
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = call i32 @sk_mem_reclaim(%struct.sock* %63)
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @TCP_CLOSE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %138

71:                                               ; preds = %62
  %72 = load %struct.sock*, %struct.sock** %3, align 8
  %73 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %72)
  %74 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load %struct.sock*, %struct.sock** %3, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %82, align 8
  %84 = load %struct.sock*, %struct.sock** %3, align 8
  %85 = call i32 %83(%struct.sock* %84, i32 0)
  br label %134

86:                                               ; preds = %71
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load %struct.sock*, %struct.sock** %3, align 8
  %91 = call i32 @sock_net(%struct.sock* %90)
  %92 = load i32, i32* @LINUX_MIB_TCPABORTONCLOSE, align 4
  %93 = call i32 @NET_INC_STATS(i32 %91, i32 %92)
  %94 = load %struct.sock*, %struct.sock** %3, align 8
  %95 = load i32, i32* @TCP_CLOSE, align 4
  %96 = call i32 @tcp_set_state(%struct.sock* %94, i32 %95)
  %97 = load %struct.sock*, %struct.sock** %3, align 8
  %98 = load %struct.sock*, %struct.sock** %3, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @tcp_send_active_reset(%struct.sock* %97, i32 %100)
  br label %133

102:                                              ; preds = %86
  %103 = load %struct.sock*, %struct.sock** %3, align 8
  %104 = load i32, i32* @SOCK_LINGER, align 4
  %105 = call i64 @sock_flag(%struct.sock* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %102
  %108 = load %struct.sock*, %struct.sock** %3, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %107
  %113 = load %struct.sock*, %struct.sock** %3, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %116, align 8
  %118 = load %struct.sock*, %struct.sock** %3, align 8
  %119 = call i32 %117(%struct.sock* %118, i32 0)
  %120 = load %struct.sock*, %struct.sock** %3, align 8
  %121 = call i32 @sock_net(%struct.sock* %120)
  %122 = load i32, i32* @LINUX_MIB_TCPABORTONDATA, align 4
  %123 = call i32 @NET_INC_STATS(i32 %121, i32 %122)
  br label %132

124:                                              ; preds = %107, %102
  %125 = load %struct.sock*, %struct.sock** %3, align 8
  %126 = call i64 @tcp_close_state(%struct.sock* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct.sock*, %struct.sock** %3, align 8
  %130 = call i32 @tcp_send_fin(%struct.sock* %129)
  br label %131

131:                                              ; preds = %128, %124
  br label %132

132:                                              ; preds = %131, %112
  br label %133

133:                                              ; preds = %132, %89
  br label %134

134:                                              ; preds = %133, %78
  %135 = load %struct.sock*, %struct.sock** %3, align 8
  %136 = load i64, i64* %4, align 8
  %137 = call i32 @sk_stream_wait_close(%struct.sock* %135, i64 %136)
  br label %138

138:                                              ; preds = %134, %70, %22
  %139 = load %struct.sock*, %struct.sock** %3, align 8
  %140 = getelementptr inbounds %struct.sock, %struct.sock* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %7, align 4
  %142 = load %struct.sock*, %struct.sock** %3, align 8
  %143 = call i32 @sock_hold(%struct.sock* %142)
  %144 = load %struct.sock*, %struct.sock** %3, align 8
  %145 = call i32 @sock_orphan(%struct.sock* %144)
  %146 = call i32 (...) @local_bh_disable()
  %147 = load %struct.sock*, %struct.sock** %3, align 8
  %148 = call i32 @bh_lock_sock(%struct.sock* %147)
  %149 = load %struct.sock*, %struct.sock** %3, align 8
  %150 = call i32 @__release_sock(%struct.sock* %149)
  %151 = load %struct.sock*, %struct.sock** %3, align 8
  %152 = getelementptr inbounds %struct.sock, %struct.sock* %151, i32 0, i32 1
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @percpu_counter_inc(i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @TCP_CLOSE, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %138
  %161 = load %struct.sock*, %struct.sock** %3, align 8
  %162 = getelementptr inbounds %struct.sock, %struct.sock* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @TCP_CLOSE, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %268

167:                                              ; preds = %160, %138
  %168 = load %struct.sock*, %struct.sock** %3, align 8
  %169 = getelementptr inbounds %struct.sock, %struct.sock* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @TCP_FIN_WAIT2, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %210

173:                                              ; preds = %167
  %174 = load %struct.sock*, %struct.sock** %3, align 8
  %175 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %174)
  store %struct.tcp_sock* %175, %struct.tcp_sock** %9, align 8
  %176 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %177 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %173
  %181 = load %struct.sock*, %struct.sock** %3, align 8
  %182 = load i32, i32* @TCP_CLOSE, align 4
  %183 = call i32 @tcp_set_state(%struct.sock* %181, i32 %182)
  %184 = load %struct.sock*, %struct.sock** %3, align 8
  %185 = load i32, i32* @GFP_ATOMIC, align 4
  %186 = call i32 @tcp_send_active_reset(%struct.sock* %184, i32 %185)
  %187 = load %struct.sock*, %struct.sock** %3, align 8
  %188 = call i32 @sock_net(%struct.sock* %187)
  %189 = load i32, i32* @LINUX_MIB_TCPABORTONLINGER, align 4
  %190 = call i32 @__NET_INC_STATS(i32 %188, i32 %189)
  br label %209

191:                                              ; preds = %173
  %192 = load %struct.sock*, %struct.sock** %3, align 8
  %193 = call i32 @tcp_fin_time(%struct.sock* %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load %struct.sock*, %struct.sock** %3, align 8
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %201 = sub nsw i32 %199, %200
  %202 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %198, i32 %201)
  br label %208

203:                                              ; preds = %191
  %204 = load %struct.sock*, %struct.sock** %3, align 8
  %205 = load i32, i32* @TCP_FIN_WAIT2, align 4
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @tcp_time_wait(%struct.sock* %204, i32 %205, i32 %206)
  br label %268

208:                                              ; preds = %197
  br label %209

209:                                              ; preds = %208, %180
  br label %210

210:                                              ; preds = %209, %167
  %211 = load %struct.sock*, %struct.sock** %3, align 8
  %212 = getelementptr inbounds %struct.sock, %struct.sock* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @TCP_CLOSE, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %244

216:                                              ; preds = %210
  %217 = load %struct.sock*, %struct.sock** %3, align 8
  %218 = call i32 @sk_mem_reclaim(%struct.sock* %217)
  %219 = load %struct.sock*, %struct.sock** %3, align 8
  %220 = call i64 @tcp_check_oom(%struct.sock* %219, i32 0)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %216
  %223 = load %struct.sock*, %struct.sock** %3, align 8
  %224 = load i32, i32* @TCP_CLOSE, align 4
  %225 = call i32 @tcp_set_state(%struct.sock* %223, i32 %224)
  %226 = load %struct.sock*, %struct.sock** %3, align 8
  %227 = load i32, i32* @GFP_ATOMIC, align 4
  %228 = call i32 @tcp_send_active_reset(%struct.sock* %226, i32 %227)
  %229 = load %struct.sock*, %struct.sock** %3, align 8
  %230 = call i32 @sock_net(%struct.sock* %229)
  %231 = load i32, i32* @LINUX_MIB_TCPABORTONMEMORY, align 4
  %232 = call i32 @__NET_INC_STATS(i32 %230, i32 %231)
  br label %243

233:                                              ; preds = %216
  %234 = load %struct.sock*, %struct.sock** %3, align 8
  %235 = call i32 @sock_net(%struct.sock* %234)
  %236 = call i32 @check_net(i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %233
  %239 = load %struct.sock*, %struct.sock** %3, align 8
  %240 = load i32, i32* @TCP_CLOSE, align 4
  %241 = call i32 @tcp_set_state(%struct.sock* %239, i32 %240)
  br label %242

242:                                              ; preds = %238, %233
  br label %243

243:                                              ; preds = %242, %222
  br label %244

244:                                              ; preds = %243, %210
  %245 = load %struct.sock*, %struct.sock** %3, align 8
  %246 = getelementptr inbounds %struct.sock, %struct.sock* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @TCP_CLOSE, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %267

250:                                              ; preds = %244
  %251 = load %struct.sock*, %struct.sock** %3, align 8
  %252 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %251)
  %253 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.sock*, %struct.sock** %3, align 8
  %256 = call i32 @lockdep_sock_is_held(%struct.sock* %255)
  %257 = call %struct.request_sock* @rcu_dereference_protected(i32 %254, i32 %256)
  store %struct.request_sock* %257, %struct.request_sock** %11, align 8
  %258 = load %struct.request_sock*, %struct.request_sock** %11, align 8
  %259 = icmp ne %struct.request_sock* %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %250
  %261 = load %struct.sock*, %struct.sock** %3, align 8
  %262 = load %struct.request_sock*, %struct.request_sock** %11, align 8
  %263 = call i32 @reqsk_fastopen_remove(%struct.sock* %261, %struct.request_sock* %262, i32 0)
  br label %264

264:                                              ; preds = %260, %250
  %265 = load %struct.sock*, %struct.sock** %3, align 8
  %266 = call i32 @inet_csk_destroy_sock(%struct.sock* %265)
  br label %267

267:                                              ; preds = %264, %244
  br label %268

268:                                              ; preds = %267, %203, %166
  %269 = load %struct.sock*, %struct.sock** %3, align 8
  %270 = call i32 @bh_unlock_sock(%struct.sock* %269)
  %271 = call i32 (...) @local_bh_enable()
  %272 = load %struct.sock*, %struct.sock** %3, align 8
  %273 = call i32 @release_sock(%struct.sock* %272)
  %274 = load %struct.sock*, %struct.sock** %3, align 8
  %275 = call i32 @sock_put(%struct.sock* %274)
  ret void
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_listen_stop(%struct.sock*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_send_active_reset(%struct.sock*, i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @tcp_close_state(%struct.sock*) #1

declare dso_local i32 @tcp_send_fin(%struct.sock*) #1

declare dso_local i32 @sk_stream_wait_close(%struct.sock*, i64) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @__release_sock(%struct.sock*) #1

declare dso_local i32 @percpu_counter_inc(i32) #1

declare dso_local i32 @__NET_INC_STATS(i32, i32) #1

declare dso_local i32 @tcp_fin_time(%struct.sock*) #1

declare dso_local i32 @inet_csk_reset_keepalive_timer(%struct.sock*, i32) #1

declare dso_local i32 @tcp_time_wait(%struct.sock*, i32, i32) #1

declare dso_local i64 @tcp_check_oom(%struct.sock*, i32) #1

declare dso_local i32 @check_net(i32) #1

declare dso_local %struct.request_sock* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_sock_is_held(%struct.sock*) #1

declare dso_local i32 @reqsk_fastopen_remove(%struct.sock*, %struct.request_sock*, i32) #1

declare dso_local i32 @inet_csk_destroy_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
