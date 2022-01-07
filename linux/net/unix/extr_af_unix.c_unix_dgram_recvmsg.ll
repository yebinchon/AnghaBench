; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_dgram_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_dgram_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.msghdr = type { i32, i64 }
%struct.scm_cookie = type { i32 }
%struct.unix_sock = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@SOCK_RCVTSTAMP = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @unix_dgram_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_dgram_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scm_cookie, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.unix_sock*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__, align 8
  %18 = alloca %struct.TYPE_2__, align 8
  %19 = alloca %struct.TYPE_2__, align 8
  %20 = alloca %struct.TYPE_2__, align 8
  %21 = alloca %struct.TYPE_2__, align 8
  %22 = alloca %struct.TYPE_2__, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load %struct.sock*, %struct.sock** %24, align 8
  store %struct.sock* %25, %struct.sock** %10, align 8
  %26 = load %struct.sock*, %struct.sock** %10, align 8
  %27 = call %struct.unix_sock* @unix_sk(%struct.sock* %26)
  store %struct.unix_sock* %27, %struct.unix_sock** %11, align 8
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MSG_OOB, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %253

35:                                               ; preds = %4
  %36 = load %struct.sock*, %struct.sock** %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MSG_DONTWAIT, align 4
  %39 = and i32 %37, %38
  %40 = call i64 @sock_rcvtimeo(%struct.sock* %36, i32 %39)
  store i64 %40, i64* %14, align 8
  br label %41

41:                                               ; preds = %73, %35
  %42 = load %struct.unix_sock*, %struct.unix_sock** %11, align 8
  %43 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.sock*, %struct.sock** %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @sk_peek_offset(%struct.sock* %45, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.sk_buff* @__skb_try_recv_datagram(%struct.sock* %48, i32 %49, i32* null, i32* %15, i32* %16, %struct.sk_buff** %13)
  store %struct.sk_buff* %50, %struct.sk_buff** %12, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %75

54:                                               ; preds = %41
  %55 = load %struct.unix_sock*, %struct.unix_sock** %11, align 8
  %56 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %75

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %14, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.sock*, %struct.sock** %10, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %70 = call i32 @__skb_wait_for_more_packets(%struct.sock* %68, i32* %16, i64* %14, %struct.sk_buff* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i1 [ false, %64 ], [ %72, %67 ]
  br i1 %74, label %41, label %75

75:                                               ; preds = %73, %62, %53
  %76 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  br i1 %77, label %102, label %78

78:                                               ; preds = %75
  %79 = load %struct.sock*, %struct.sock** %10, align 8
  %80 = call i32 @unix_state_lock(%struct.sock* %79)
  %81 = load %struct.sock*, %struct.sock** %10, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SOCK_SEQPACKET, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %78
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @EAGAIN, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.sock*, %struct.sock** %10, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @RCV_SHUTDOWN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 0, i32* %16, align 4
  br label %99

99:                                               ; preds = %98, %91, %86, %78
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = call i32 @unix_state_unlock(%struct.sock* %100)
  br label %253

102:                                              ; preds = %75
  %103 = load %struct.unix_sock*, %struct.unix_sock** %11, align 8
  %104 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %103, i32 0, i32 1
  %105 = call i64 @wq_has_sleeper(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load %struct.unix_sock*, %struct.unix_sock** %11, align 8
  %109 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %108, i32 0, i32 1
  %110 = load i32, i32* @EPOLLOUT, align 4
  %111 = load i32, i32* @EPOLLWRNORM, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @EPOLLWRBAND, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @wake_up_interruptible_sync_poll(i32* %109, i32 %114)
  br label %116

116:                                              ; preds = %107, %102
  %117 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %118 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @unix_copy_addr(%struct.msghdr* %122, i32 %125)
  br label %127

127:                                              ; preds = %121, %116
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %15, align 4
  %133 = sub nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = icmp ugt i64 %128, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %127
  %137 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %15, align 4
  %141 = sub nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %7, align 8
  br label %159

143:                                              ; preds = %127
  %144 = load i64, i64* %7, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = icmp ult i64 %144, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %143
  %153 = load i32, i32* @MSG_TRUNC, align 4
  %154 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %155 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %152, %143
  br label %159

159:                                              ; preds = %158, %136
  %160 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %160, i32 %161, %struct.msghdr* %162, i64 %163)
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* %16, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %246

168:                                              ; preds = %159
  %169 = load %struct.sock*, %struct.sock** %10, align 8
  %170 = load i32, i32* @SOCK_RCVTSTAMP, align 4
  %171 = call i64 @sock_flag(%struct.sock* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %175 = load %struct.sock*, %struct.sock** %10, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %177 = call i32 @__sock_recv_timestamp(%struct.msghdr* %174, %struct.sock* %175, %struct.sk_buff* %176)
  br label %178

178:                                              ; preds = %173, %168
  %179 = call i32 @memset(%struct.scm_cookie* %9, i32 0, i32 4)
  %180 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  call void @UNIXCB(%struct.TYPE_2__* sret %17, %struct.sk_buff* %180)
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  call void @UNIXCB(%struct.TYPE_2__* sret %18, %struct.sk_buff* %183)
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  call void @UNIXCB(%struct.TYPE_2__* sret %19, %struct.sk_buff* %186)
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @scm_set_cred(%struct.scm_cookie* %9, i32 %182, i32 %185, i32 %188)
  %190 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %191 = call i32 @unix_set_secdata(%struct.scm_cookie* %9, %struct.sk_buff* %190)
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @MSG_PEEK, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %178
  %197 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  call void @UNIXCB(%struct.TYPE_2__* sret %20, %struct.sk_buff* %197)
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %203 = call i32 @unix_detach_fds(%struct.scm_cookie* %9, %struct.sk_buff* %202)
  br label %204

204:                                              ; preds = %201, %196
  %205 = load %struct.sock*, %struct.sock** %10, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @sk_peek_offset_bwd(%struct.sock* %205, i32 %208)
  br label %225

210:                                              ; preds = %178
  %211 = load %struct.sock*, %struct.sock** %10, align 8
  %212 = load i64, i64* %7, align 8
  %213 = call i32 @sk_peek_offset_fwd(%struct.sock* %211, i64 %212)
  %214 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  call void @UNIXCB(%struct.TYPE_2__* sret %21, %struct.sk_buff* %214)
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %210
  %219 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  call void @UNIXCB(%struct.TYPE_2__* sret %22, %struct.sk_buff* %219)
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @scm_fp_dup(i64 %221)
  %223 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %9, i32 0, i32 0
  store i32 %222, i32* %223, align 4
  br label %224

224:                                              ; preds = %218, %210
  br label %225

225:                                              ; preds = %224, %204
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @MSG_TRUNC, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %15, align 4
  %235 = sub nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  br label %239

237:                                              ; preds = %225
  %238 = load i64, i64* %7, align 8
  br label %239

239:                                              ; preds = %237, %230
  %240 = phi i64 [ %236, %230 ], [ %238, %237 ]
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %16, align 4
  %242 = load %struct.socket*, %struct.socket** %5, align 8
  %243 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @scm_recv(%struct.socket* %242, %struct.msghdr* %243, %struct.scm_cookie* %9, i32 %244)
  br label %246

246:                                              ; preds = %239, %167
  %247 = load %struct.sock*, %struct.sock** %10, align 8
  %248 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %249 = call i32 @skb_free_datagram(%struct.sock* %247, %struct.sk_buff* %248)
  %250 = load %struct.unix_sock*, %struct.unix_sock** %11, align 8
  %251 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %250, i32 0, i32 0
  %252 = call i32 @mutex_unlock(i32* %251)
  br label %253

253:                                              ; preds = %246, %99, %34
  %254 = load i32, i32* %16, align 4
  ret i32 %254
}

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sk_peek_offset(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @__skb_try_recv_datagram(%struct.sock*, i32, i32*, i32*, i32*, %struct.sk_buff**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__skb_wait_for_more_packets(%struct.sock*, i32*, i64*, %struct.sk_buff*) #1

declare dso_local i32 @unix_state_lock(%struct.sock*) #1

declare dso_local i32 @unix_state_unlock(%struct.sock*) #1

declare dso_local i64 @wq_has_sleeper(i32*) #1

declare dso_local i32 @wake_up_interruptible_sync_poll(i32*, i32) #1

declare dso_local i32 @unix_copy_addr(%struct.msghdr*, i32) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i64) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @__sock_recv_timestamp(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.scm_cookie*, i32, i32) #1

declare dso_local i32 @scm_set_cred(%struct.scm_cookie*, i32, i32, i32) #1

declare dso_local void @UNIXCB(%struct.TYPE_2__* sret, %struct.sk_buff*) #1

declare dso_local i32 @unix_set_secdata(%struct.scm_cookie*, %struct.sk_buff*) #1

declare dso_local i32 @unix_detach_fds(%struct.scm_cookie*, %struct.sk_buff*) #1

declare dso_local i32 @sk_peek_offset_bwd(%struct.sock*, i32) #1

declare dso_local i32 @sk_peek_offset_fwd(%struct.sock*, i64) #1

declare dso_local i32 @scm_fp_dup(i64) #1

declare dso_local i32 @scm_recv(%struct.socket*, %struct.msghdr*, %struct.scm_cookie*, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
