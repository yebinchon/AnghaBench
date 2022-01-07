; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_stream_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_stream_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.vsock_sock*, %struct.vsock_transport_send_notify_data*)*, i32 (%struct.vsock_sock*, %struct.vsock_transport_send_notify_data*)*, i32 (%struct.vsock_sock*, %struct.vsock_transport_send_notify_data*)*, i64 (%struct.vsock_sock*, %struct.msghdr*, i64)*, i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_send_notify_data*)* }
%struct.vsock_sock = type { i32, i32, i32 }
%struct.vsock_transport_send_notify_data = type { i32 }
%struct.msghdr = type { i32, i64 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@transport = common dso_local global %struct.TYPE_2__* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @vsock_stream_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_stream_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.vsock_sock*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vsock_transport_send_notify_data, align 4
  %14 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @wait, align 4
  %16 = load i32, i32* @woken_wake_function, align 4
  %17 = call i32 @DEFINE_WAIT_FUNC(i32 %15, i32 %16)
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %8, align 8
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %21)
  store %struct.vsock_sock* %22, %struct.vsock_sock** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MSG_OOB, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %273

32:                                               ; preds = %3
  %33 = load %struct.sock*, %struct.sock** %8, align 8
  %34 = call i32 @lock_sock(%struct.sock* %33)
  %35 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.sock*, %struct.sock** %8, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TCP_ESTABLISHED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EISCONN, align 4
  %47 = sub nsw i32 0, %46
  br label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32 [ %47, %45 ], [ %50, %48 ]
  store i32 %52, i32* %12, align 4
  br label %269

53:                                               ; preds = %32
  %54 = load %struct.sock*, %struct.sock** %8, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SEND_SHUTDOWN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %62 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RCV_SHUTDOWN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %53
  %68 = load i32, i32* @EPIPE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %269

70:                                               ; preds = %60
  %71 = load %struct.sock*, %struct.sock** %8, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TCP_ESTABLISHED, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %78 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %77, i32 0, i32 2
  %79 = call i32 @vsock_addr_bound(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76, %70
  %82 = load i32, i32* @ENOTCONN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %12, align 4
  br label %269

84:                                               ; preds = %76
  %85 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %86 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %85, i32 0, i32 1
  %87 = call i32 @vsock_addr_bound(i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @EDESTADDRREQ, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  br label %269

92:                                               ; preds = %84
  %93 = load %struct.sock*, %struct.sock** %8, align 8
  %94 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %95 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MSG_DONTWAIT, align 4
  %98 = and i32 %96, %97
  %99 = call i64 @sock_sndtimeo(%struct.sock* %93, i32 %98)
  store i64 %99, i64* %11, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.vsock_sock*, %struct.vsock_transport_send_notify_data*)*, i32 (%struct.vsock_sock*, %struct.vsock_transport_send_notify_data*)** %101, align 8
  %103 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %104 = call i32 %102(%struct.vsock_sock* %103, %struct.vsock_transport_send_notify_data* %13)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  br label %269

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %260, %108
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %261

113:                                              ; preds = %109
  %114 = load %struct.sock*, %struct.sock** %8, align 8
  %115 = call i32 @sk_sleep(%struct.sock* %114)
  %116 = call i32 @add_wait_queue(i32 %115, i32* @wait)
  br label %117

117:                                              ; preds = %191, %113
  %118 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %119 = call i64 @vsock_stream_has_space(%struct.vsock_sock* %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = load %struct.sock*, %struct.sock** %8, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %121
  %127 = load %struct.sock*, %struct.sock** %8, align 8
  %128 = getelementptr inbounds %struct.sock, %struct.sock* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SEND_SHUTDOWN, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %126
  %134 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %135 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @RCV_SHUTDOWN, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br label %141

141:                                              ; preds = %133, %126, %121, %117
  %142 = phi i1 [ false, %126 ], [ false, %121 ], [ false, %117 ], [ %140, %133 ]
  br i1 %142, label %143, label %192

143:                                              ; preds = %141
  %144 = load i64, i64* %11, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* @EAGAIN, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %12, align 4
  %149 = load %struct.sock*, %struct.sock** %8, align 8
  %150 = call i32 @sk_sleep(%struct.sock* %149)
  %151 = call i32 @remove_wait_queue(i32 %150, i32* @wait)
  br label %262

152:                                              ; preds = %143
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32 (%struct.vsock_sock*, %struct.vsock_transport_send_notify_data*)*, i32 (%struct.vsock_sock*, %struct.vsock_transport_send_notify_data*)** %154, align 8
  %156 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %157 = call i32 %155(%struct.vsock_sock* %156, %struct.vsock_transport_send_notify_data* %13)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %152
  %161 = load %struct.sock*, %struct.sock** %8, align 8
  %162 = call i32 @sk_sleep(%struct.sock* %161)
  %163 = call i32 @remove_wait_queue(i32 %162, i32* @wait)
  br label %262

164:                                              ; preds = %152
  %165 = load %struct.sock*, %struct.sock** %8, align 8
  %166 = call i32 @release_sock(%struct.sock* %165)
  %167 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %168 = load i64, i64* %11, align 8
  %169 = call i64 @wait_woken(i32* @wait, i32 %167, i64 %168)
  store i64 %169, i64* %11, align 8
  %170 = load %struct.sock*, %struct.sock** %8, align 8
  %171 = call i32 @lock_sock(%struct.sock* %170)
  %172 = load i32, i32* @current, align 4
  %173 = call i64 @signal_pending(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %164
  %176 = load i64, i64* %11, align 8
  %177 = call i32 @sock_intr_errno(i64 %176)
  store i32 %177, i32* %12, align 4
  %178 = load %struct.sock*, %struct.sock** %8, align 8
  %179 = call i32 @sk_sleep(%struct.sock* %178)
  %180 = call i32 @remove_wait_queue(i32 %179, i32* @wait)
  br label %262

181:                                              ; preds = %164
  %182 = load i64, i64* %11, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load i32, i32* @EAGAIN, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %12, align 4
  %187 = load %struct.sock*, %struct.sock** %8, align 8
  %188 = call i32 @sk_sleep(%struct.sock* %187)
  %189 = call i32 @remove_wait_queue(i32 %188, i32* @wait)
  br label %262

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190
  br label %117

192:                                              ; preds = %141
  %193 = load %struct.sock*, %struct.sock** %8, align 8
  %194 = call i32 @sk_sleep(%struct.sock* %193)
  %195 = call i32 @remove_wait_queue(i32 %194, i32* @wait)
  %196 = load %struct.sock*, %struct.sock** %8, align 8
  %197 = getelementptr inbounds %struct.sock, %struct.sock* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %192
  %201 = load %struct.sock*, %struct.sock** %8, align 8
  %202 = getelementptr inbounds %struct.sock, %struct.sock* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %12, align 4
  br label %262

205:                                              ; preds = %192
  %206 = load %struct.sock*, %struct.sock** %8, align 8
  %207 = getelementptr inbounds %struct.sock, %struct.sock* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @SEND_SHUTDOWN, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %205
  %213 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %214 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @RCV_SHUTDOWN, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %212, %205
  %220 = load i32, i32* @EPIPE, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %12, align 4
  br label %262

222:                                              ; preds = %212
  br label %223

223:                                              ; preds = %222
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  %226 = load i32 (%struct.vsock_sock*, %struct.vsock_transport_send_notify_data*)*, i32 (%struct.vsock_sock*, %struct.vsock_transport_send_notify_data*)** %225, align 8
  %227 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %228 = call i32 %226(%struct.vsock_sock* %227, %struct.vsock_transport_send_notify_data* %13)
  store i32 %228, i32* %12, align 4
  %229 = load i32, i32* %12, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %262

232:                                              ; preds = %223
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 3
  %235 = load i64 (%struct.vsock_sock*, %struct.msghdr*, i64)*, i64 (%struct.vsock_sock*, %struct.msghdr*, i64)** %234, align 8
  %236 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %237 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %238 = load i64, i64* %7, align 8
  %239 = load i64, i64* %10, align 8
  %240 = sub i64 %238, %239
  %241 = call i64 %235(%struct.vsock_sock* %236, %struct.msghdr* %237, i64 %240)
  store i64 %241, i64* %14, align 8
  %242 = load i64, i64* %14, align 8
  %243 = icmp ult i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %232
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %12, align 4
  br label %262

247:                                              ; preds = %232
  %248 = load i64, i64* %14, align 8
  %249 = load i64, i64* %10, align 8
  %250 = add i64 %249, %248
  store i64 %250, i64* %10, align 8
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 4
  %253 = load i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_send_notify_data*)*, i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_send_notify_data*)** %252, align 8
  %254 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %255 = load i64, i64* %14, align 8
  %256 = call i32 %253(%struct.vsock_sock* %254, i64 %255, %struct.vsock_transport_send_notify_data* %13)
  store i32 %256, i32* %12, align 4
  %257 = load i32, i32* %12, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %247
  br label %262

260:                                              ; preds = %247
  br label %109

261:                                              ; preds = %109
  br label %262

262:                                              ; preds = %261, %259, %244, %231, %219, %200, %184, %175, %160, %146
  %263 = load i64, i64* %10, align 8
  %264 = icmp ugt i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i64, i64* %10, align 8
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %12, align 4
  br label %268

268:                                              ; preds = %265, %262
  br label %269

269:                                              ; preds = %268, %107, %89, %81, %67, %51
  %270 = load %struct.sock*, %struct.sock** %8, align 8
  %271 = call i32 @release_sock(%struct.sock* %270)
  %272 = load i32, i32* %12, align 4
  store i32 %272, i32* %4, align 4
  br label %273

273:                                              ; preds = %269, %29
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @vsock_addr_bound(i32*) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @vsock_stream_has_space(%struct.vsock_sock*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @wait_woken(i32*, i32, i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
