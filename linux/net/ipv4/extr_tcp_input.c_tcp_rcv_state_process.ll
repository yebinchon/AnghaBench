; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_rcv_state_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_rcv_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 (%struct.sock*)*, i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.inet_connection_sock = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.sock*, %struct.sk_buff*)* }
%struct.tcphdr = type { i64, i32, i64, i64, i64 }
%struct.request_sock = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }

@FLAG_SLOWPATH = common dso_local global i32 0, align 4
@FLAG_UPDATE_TS_RECENT = common dso_local global i32 0, align 4
@FLAG_NO_CHALLENGE_ACK = common dso_local global i32 0, align 4
@BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB = common dso_local global i32 0, align 4
@SOCK_WAKE_IO = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i32 0, align 4
@tcp_jiffies32 = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@LINUX_MIB_TCPABORTONDATA = common dso_local global i32 0, align 4
@TCP_TIMEWAIT_LEN = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_rcv_state_process(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca %struct.inet_connection_sock*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.request_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %14)
  store %struct.tcp_sock* %15, %struct.tcp_sock** %6, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %16)
  store %struct.inet_connection_sock* %17, %struct.inet_connection_sock** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %18)
  store %struct.tcphdr* %19, %struct.tcphdr** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %92 [
    i32 137, label %23
    i32 130, label %24
    i32 128, label %69
  ]

23:                                               ; preds = %2
  br label %510

24:                                               ; preds = %2
  %25 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %26 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %515

30:                                               ; preds = %24
  %31 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %32 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %510

36:                                               ; preds = %30
  %37 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %38 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %43 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %510

47:                                               ; preds = %41
  %48 = call i32 (...) @rcu_read_lock()
  %49 = call i32 (...) @local_bh_disable()
  %50 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %51 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %53, align 8
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 %54(%struct.sock* %55, %struct.sk_buff* %56)
  %58 = icmp sge i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = call i32 (...) @local_bh_enable()
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %515

65:                                               ; preds = %47
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call i32 @consume_skb(%struct.sk_buff* %66)
  store i32 0, i32* %3, align 4
  br label %515

68:                                               ; preds = %36
  br label %510

69:                                               ; preds = %2
  %70 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %71 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %70, i32 0, i32 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %74 = call i32 @tcp_mstamp_refresh(%struct.tcp_sock* %73)
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %78 = call i32 @tcp_rcv_synsent_state_process(%struct.sock* %75, %struct.sk_buff* %76, %struct.tcphdr* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %515

83:                                               ; preds = %69
  %84 = load %struct.sock*, %struct.sock** %4, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %87 = call i32 @tcp_urg(%struct.sock* %84, %struct.sk_buff* %85, %struct.tcphdr* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call i32 @__kfree_skb(%struct.sk_buff* %88)
  %90 = load %struct.sock*, %struct.sock** %4, align 8
  %91 = call i32 @tcp_data_snd_check(%struct.sock* %90)
  store i32 0, i32* %3, align 4
  br label %515

92:                                               ; preds = %2
  %93 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %94 = call i32 @tcp_mstamp_refresh(%struct.tcp_sock* %93)
  %95 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %96 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %99 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %98, i32 0, i32 13
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.sock*, %struct.sock** %4, align 8
  %102 = call i32 @lockdep_sock_is_held(%struct.sock* %101)
  %103 = call %struct.request_sock* @rcu_dereference_protected(i32 %100, i32 %102)
  store %struct.request_sock* %103, %struct.request_sock** %9, align 8
  %104 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %105 = icmp ne %struct.request_sock* %104, null
  br i1 %105, label %106, label %127

106:                                              ; preds = %92
  %107 = load %struct.sock*, %struct.sock** %4, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 129
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.sock*, %struct.sock** %4, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 133
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i1 [ false, %106 ], [ %115, %111 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @WARN_ON_ONCE(i32 %118)
  %120 = load %struct.sock*, %struct.sock** %4, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %123 = call i32 @tcp_check_req(%struct.sock* %120, %struct.sk_buff* %121, %struct.request_sock* %122, i32 1, i32* %12)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %116
  br label %510

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %92
  %128 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %129 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %127
  %133 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %134 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %139 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  br label %510

143:                                              ; preds = %137, %132, %127
  %144 = load %struct.sock*, %struct.sock** %4, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %147 = call i32 @tcp_validate_incoming(%struct.sock* %144, %struct.sk_buff* %145, %struct.tcphdr* %146, i32 0)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %515

150:                                              ; preds = %143
  %151 = load %struct.sock*, %struct.sock** %4, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = load i32, i32* @FLAG_SLOWPATH, align 4
  %154 = load i32, i32* @FLAG_UPDATE_TS_RECENT, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @FLAG_NO_CHALLENGE_ACK, align 4
  %157 = or i32 %155, %156
  %158 = call i64 @tcp_ack(%struct.sock* %151, %struct.sk_buff* %152, i32 %157)
  %159 = icmp sgt i64 %158, 0
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %150
  %164 = load %struct.sock*, %struct.sock** %4, align 8
  %165 = getelementptr inbounds %struct.sock, %struct.sock* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 129
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 1, i32* %3, align 4
  br label %515

169:                                              ; preds = %163
  %170 = load %struct.sock*, %struct.sock** %4, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = call i32 @tcp_send_challenge_ack(%struct.sock* %170, %struct.sk_buff* %171)
  br label %510

173:                                              ; preds = %150
  %174 = load %struct.sock*, %struct.sock** %4, align 8
  %175 = getelementptr inbounds %struct.sock, %struct.sock* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  switch i32 %176, label %432 [
    i32 129, label %177
    i32 133, label %283
    i32 135, label %405
    i32 131, label %418
  ]

177:                                              ; preds = %173
  %178 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %179 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %178, i32 0, i32 12
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  %182 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %183 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %182, i32 0, i32 11
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %177
  %187 = load %struct.sock*, %struct.sock** %4, align 8
  %188 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %189 = call i32 @tcp_synack_rtt_meas(%struct.sock* %187, %struct.request_sock* %188)
  br label %190

190:                                              ; preds = %186, %177
  %191 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %192 = icmp ne %struct.request_sock* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.sock*, %struct.sock** %4, align 8
  %195 = call i32 @tcp_rcv_synrecv_state_fastopen(%struct.sock* %194)
  br label %211

196:                                              ; preds = %190
  %197 = load %struct.sock*, %struct.sock** %4, align 8
  %198 = call i32 @tcp_try_undo_spurious_syn(%struct.sock* %197)
  %199 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %200 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %199, i32 0, i32 10
  store i32 0, i32* %200, align 4
  %201 = load %struct.sock*, %struct.sock** %4, align 8
  %202 = load i32, i32* @BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB, align 4
  %203 = call i32 @tcp_init_transfer(%struct.sock* %201, i32 %202)
  %204 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %205 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %208 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @WRITE_ONCE(i32 %206, i32 %209)
  br label %211

211:                                              ; preds = %196, %193
  %212 = call i32 (...) @smp_mb()
  %213 = load %struct.sock*, %struct.sock** %4, align 8
  %214 = call i32 @tcp_set_state(%struct.sock* %213, i32 134)
  %215 = load %struct.sock*, %struct.sock** %4, align 8
  %216 = getelementptr inbounds %struct.sock, %struct.sock* %215, i32 0, i32 2
  %217 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %216, align 8
  %218 = load %struct.sock*, %struct.sock** %4, align 8
  %219 = call i32 %217(%struct.sock* %218)
  %220 = load %struct.sock*, %struct.sock** %4, align 8
  %221 = getelementptr inbounds %struct.sock, %struct.sock* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %211
  %225 = load %struct.sock*, %struct.sock** %4, align 8
  %226 = load i32, i32* @SOCK_WAKE_IO, align 4
  %227 = load i32, i32* @POLL_OUT, align 4
  %228 = call i32 @sk_wake_async(%struct.sock* %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %224, %211
  %230 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %231 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %230)
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %235 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 4
  %236 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @ntohs(i32 %238)
  %240 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %241 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %240, i32 0, i32 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = shl i32 %239, %243
  %245 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %246 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %248 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %249 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %248)
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @tcp_init_wl(%struct.tcp_sock* %247, i64 %251)
  %253 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %254 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %253, i32 0, i32 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %229
  %259 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %260 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %261 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %262, %259
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %258, %229
  %265 = load %struct.sock*, %struct.sock** %4, align 8
  %266 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %265)
  %267 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %266, i32 0, i32 0
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %264
  %273 = load %struct.sock*, %struct.sock** %4, align 8
  %274 = call i32 @tcp_update_pacing_rate(%struct.sock* %273)
  br label %275

275:                                              ; preds = %272, %264
  %276 = load i32, i32* @tcp_jiffies32, align 4
  %277 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %278 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %277, i32 0, i32 6
  store i32 %276, i32* %278, align 8
  %279 = load %struct.sock*, %struct.sock** %4, align 8
  %280 = call i32 @tcp_initialize_rcv_mss(%struct.sock* %279)
  %281 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %282 = call i32 @tcp_fast_path_on(%struct.tcp_sock* %281)
  br label %432

283:                                              ; preds = %173
  %284 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %285 = icmp ne %struct.request_sock* %284, null
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load %struct.sock*, %struct.sock** %4, align 8
  %288 = call i32 @tcp_rcv_synrecv_state_fastopen(%struct.sock* %287)
  br label %289

289:                                              ; preds = %286, %283
  %290 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %291 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %294 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %292, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %289
  br label %432

298:                                              ; preds = %289
  %299 = load %struct.sock*, %struct.sock** %4, align 8
  %300 = call i32 @tcp_set_state(%struct.sock* %299, i32 132)
  %301 = load i32, i32* @SEND_SHUTDOWN, align 4
  %302 = load %struct.sock*, %struct.sock** %4, align 8
  %303 = getelementptr inbounds %struct.sock, %struct.sock* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 4
  %306 = load %struct.sock*, %struct.sock** %4, align 8
  %307 = call i32 @sk_dst_confirm(%struct.sock* %306)
  %308 = load %struct.sock*, %struct.sock** %4, align 8
  %309 = load i32, i32* @SOCK_DEAD, align 4
  %310 = call i32 @sock_flag(%struct.sock* %308, i32 %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %318, label %312

312:                                              ; preds = %298
  %313 = load %struct.sock*, %struct.sock** %4, align 8
  %314 = getelementptr inbounds %struct.sock, %struct.sock* %313, i32 0, i32 2
  %315 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %314, align 8
  %316 = load %struct.sock*, %struct.sock** %4, align 8
  %317 = call i32 %315(%struct.sock* %316)
  br label %432

318:                                              ; preds = %298
  %319 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %320 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %318
  %324 = load %struct.sock*, %struct.sock** %4, align 8
  %325 = call i32 @tcp_done(%struct.sock* %324)
  %326 = load %struct.sock*, %struct.sock** %4, align 8
  %327 = call i32 @sock_net(%struct.sock* %326)
  %328 = load i32, i32* @LINUX_MIB_TCPABORTONDATA, align 4
  %329 = call i32 @NET_INC_STATS(i32 %327, i32 %328)
  store i32 1, i32* %3, align 4
  br label %515

330:                                              ; preds = %318
  %331 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %332 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %331)
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %336 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %335)
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %334, %338
  br i1 %339, label %340, label %374

340:                                              ; preds = %330
  %341 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %342 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %341)
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %346 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = sub nsw i64 %344, %347
  %349 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %350 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @after(i64 %348, i32 %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %374

354:                                              ; preds = %340
  %355 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %356 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 8
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %367

359:                                              ; preds = %354
  %360 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %361 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = load %struct.sock*, %struct.sock** %4, align 8
  %366 = call i32 @tcp_fastopen_active_disable(%struct.sock* %365)
  br label %367

367:                                              ; preds = %364, %359, %354
  %368 = load %struct.sock*, %struct.sock** %4, align 8
  %369 = call i32 @tcp_done(%struct.sock* %368)
  %370 = load %struct.sock*, %struct.sock** %4, align 8
  %371 = call i32 @sock_net(%struct.sock* %370)
  %372 = load i32, i32* @LINUX_MIB_TCPABORTONDATA, align 4
  %373 = call i32 @NET_INC_STATS(i32 %371, i32 %372)
  store i32 1, i32* %3, align 4
  br label %515

374:                                              ; preds = %340, %330
  %375 = load %struct.sock*, %struct.sock** %4, align 8
  %376 = call i32 @tcp_fin_time(%struct.sock* %375)
  store i32 %376, i32* %13, align 4
  %377 = load i32, i32* %13, align 4
  %378 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %379 = icmp sgt i32 %377, %378
  br i1 %379, label %380, label %386

380:                                              ; preds = %374
  %381 = load %struct.sock*, %struct.sock** %4, align 8
  %382 = load i32, i32* %13, align 4
  %383 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %384 = sub nsw i32 %382, %383
  %385 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %381, i32 %384)
  br label %404

386:                                              ; preds = %374
  %387 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %388 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %395, label %391

391:                                              ; preds = %386
  %392 = load %struct.sock*, %struct.sock** %4, align 8
  %393 = call i32 @sock_owned_by_user(%struct.sock* %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %391, %386
  %396 = load %struct.sock*, %struct.sock** %4, align 8
  %397 = load i32, i32* %13, align 4
  %398 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %396, i32 %397)
  br label %403

399:                                              ; preds = %391
  %400 = load %struct.sock*, %struct.sock** %4, align 8
  %401 = load i32, i32* %13, align 4
  %402 = call i32 @tcp_time_wait(%struct.sock* %400, i32 132, i32 %401)
  br label %510

403:                                              ; preds = %395
  br label %404

404:                                              ; preds = %403, %380
  br label %432

405:                                              ; preds = %173
  %406 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %407 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %410 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = icmp eq i32 %408, %411
  br i1 %412, label %413, label %417

413:                                              ; preds = %405
  %414 = load %struct.sock*, %struct.sock** %4, align 8
  %415 = load i32, i32* @TCP_TIME_WAIT, align 4
  %416 = call i32 @tcp_time_wait(%struct.sock* %414, i32 %415, i32 0)
  br label %510

417:                                              ; preds = %405
  br label %432

418:                                              ; preds = %173
  %419 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %420 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %423 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = icmp eq i32 %421, %424
  br i1 %425, label %426, label %431

426:                                              ; preds = %418
  %427 = load %struct.sock*, %struct.sock** %4, align 8
  %428 = call i32 @tcp_update_metrics(%struct.sock* %427)
  %429 = load %struct.sock*, %struct.sock** %4, align 8
  %430 = call i32 @tcp_done(%struct.sock* %429)
  br label %510

431:                                              ; preds = %418
  br label %432

432:                                              ; preds = %173, %431, %417, %404, %312, %297, %275
  %433 = load %struct.sock*, %struct.sock** %4, align 8
  %434 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %435 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %436 = call i32 @tcp_urg(%struct.sock* %433, %struct.sk_buff* %434, %struct.tcphdr* %435)
  %437 = load %struct.sock*, %struct.sock** %4, align 8
  %438 = getelementptr inbounds %struct.sock, %struct.sock* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  switch i32 %439, label %496 [
    i32 136, label %440
    i32 135, label %440
    i32 131, label %440
    i32 133, label %452
    i32 132, label %452
    i32 134, label %492
  ]

440:                                              ; preds = %432, %432, %432
  %441 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %442 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %441)
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %446 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @before(i64 %444, i32 %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %451, label %450

450:                                              ; preds = %440
  br label %496

451:                                              ; preds = %440
  br label %452

452:                                              ; preds = %432, %432, %451
  %453 = load %struct.sock*, %struct.sock** %4, align 8
  %454 = getelementptr inbounds %struct.sock, %struct.sock* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @RCV_SHUTDOWN, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %491

459:                                              ; preds = %452
  %460 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %461 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %460)
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %465 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %464)
  %466 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %465, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %463, %467
  br i1 %468, label %469, label %490

469:                                              ; preds = %459
  %470 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %471 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %470)
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %475 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = sub nsw i64 %473, %476
  %478 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %479 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = call i32 @after(i64 %477, i32 %480)
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %490

483:                                              ; preds = %469
  %484 = load %struct.sock*, %struct.sock** %4, align 8
  %485 = call i32 @sock_net(%struct.sock* %484)
  %486 = load i32, i32* @LINUX_MIB_TCPABORTONDATA, align 4
  %487 = call i32 @NET_INC_STATS(i32 %485, i32 %486)
  %488 = load %struct.sock*, %struct.sock** %4, align 8
  %489 = call i32 @tcp_reset(%struct.sock* %488)
  store i32 1, i32* %3, align 4
  br label %515

490:                                              ; preds = %469, %459
  br label %491

491:                                              ; preds = %490, %452
  br label %492

492:                                              ; preds = %432, %491
  %493 = load %struct.sock*, %struct.sock** %4, align 8
  %494 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %495 = call i32 @tcp_data_queue(%struct.sock* %493, %struct.sk_buff* %494)
  store i32 1, i32* %10, align 4
  br label %496

496:                                              ; preds = %432, %492, %450
  %497 = load %struct.sock*, %struct.sock** %4, align 8
  %498 = getelementptr inbounds %struct.sock, %struct.sock* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = icmp ne i32 %499, 137
  br i1 %500, label %501, label %506

501:                                              ; preds = %496
  %502 = load %struct.sock*, %struct.sock** %4, align 8
  %503 = call i32 @tcp_data_snd_check(%struct.sock* %502)
  %504 = load %struct.sock*, %struct.sock** %4, align 8
  %505 = call i32 @tcp_ack_snd_check(%struct.sock* %504)
  br label %506

506:                                              ; preds = %501, %496
  %507 = load i32, i32* %10, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %514, label %509

509:                                              ; preds = %506
  br label %510

510:                                              ; preds = %509, %426, %413, %399, %169, %142, %125, %68, %46, %35, %23
  %511 = load %struct.sock*, %struct.sock** %4, align 8
  %512 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %513 = call i32 @tcp_drop(%struct.sock* %511, %struct.sk_buff* %512)
  br label %514

514:                                              ; preds = %510, %506
  store i32 0, i32* %3, align 4
  br label %515

515:                                              ; preds = %514, %483, %367, %323, %168, %149, %83, %81, %65, %64, %29
  %516 = load i32, i32* %3, align 4
  ret i32 %516
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @tcp_mstamp_refresh(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_rcv_synsent_state_process(%struct.sock*, %struct.sk_buff*, %struct.tcphdr*) #1

declare dso_local i32 @tcp_urg(%struct.sock*, %struct.sk_buff*, %struct.tcphdr*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @tcp_data_snd_check(%struct.sock*) #1

declare dso_local %struct.request_sock* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_sock_is_held(%struct.sock*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @tcp_check_req(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32, i32*) #1

declare dso_local i32 @tcp_validate_incoming(%struct.sock*, %struct.sk_buff*, %struct.tcphdr*, i32) #1

declare dso_local i64 @tcp_ack(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @tcp_send_challenge_ack(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_synack_rtt_meas(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @tcp_rcv_synrecv_state_fastopen(%struct.sock*) #1

declare dso_local i32 @tcp_try_undo_spurious_syn(%struct.sock*) #1

declare dso_local i32 @tcp_init_transfer(%struct.sock*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @tcp_init_wl(%struct.tcp_sock*, i64) #1

declare dso_local i32 @tcp_update_pacing_rate(%struct.sock*) #1

declare dso_local i32 @tcp_initialize_rcv_mss(%struct.sock*) #1

declare dso_local i32 @tcp_fast_path_on(%struct.tcp_sock*) #1

declare dso_local i32 @sk_dst_confirm(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @after(i64, i32) #1

declare dso_local i32 @tcp_fastopen_active_disable(%struct.sock*) #1

declare dso_local i32 @tcp_fin_time(%struct.sock*) #1

declare dso_local i32 @inet_csk_reset_keepalive_timer(%struct.sock*, i32) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @tcp_time_wait(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_update_metrics(%struct.sock*) #1

declare dso_local i32 @before(i64, i32) #1

declare dso_local i32 @tcp_reset(%struct.sock*) #1

declare dso_local i32 @tcp_data_queue(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_ack_snd_check(%struct.sock*) #1

declare dso_local i32 @tcp_drop(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
