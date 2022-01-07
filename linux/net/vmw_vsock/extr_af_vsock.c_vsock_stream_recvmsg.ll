; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_stream_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_stream_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.vsock_sock*)*, i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_recv_notify_data*)*, i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_recv_notify_data*)*, i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_recv_notify_data*)*, i64 (%struct.vsock_sock*, %struct.msghdr*, i64, i32)*, i32 (%struct.vsock_sock*, i64, i64, i32, %struct.vsock_transport_recv_notify_data*)* }
%struct.vsock_sock = type { i32 }
%struct.vsock_transport_recv_notify_data = type { i32 }
%struct.msghdr = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, i64 }

@wait = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@SOCK_DONE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@transport = common dso_local global %struct.TYPE_2__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @vsock_stream_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_stream_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.vsock_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.vsock_transport_recv_notify_data, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* @wait, align 4
  %19 = call i32 @DEFINE_WAIT(i32 %18)
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  store %struct.sock* %22, %struct.sock** %9, align 8
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %23)
  store %struct.vsock_sock* %24, %struct.vsock_sock** %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = call i32 @lock_sock(%struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TCP_ESTABLISHED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %4
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = load i32, i32* @SOCK_DONE, align 4
  %35 = call i64 @sock_flag(%struct.sock* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOTCONN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %38, %37
  br label %273

42:                                               ; preds = %4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @MSG_OOB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %273

50:                                               ; preds = %42
  %51 = load %struct.sock*, %struct.sock** %9, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RCV_SHUTDOWN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %273

58:                                               ; preds = %50
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %273

62:                                               ; preds = %58
  %63 = load %struct.sock*, %struct.sock** %9, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @MSG_WAITALL, align 4
  %66 = and i32 %64, %65
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @sock_rcvlowat(%struct.sock* %63, i32 %66, i64 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64 (%struct.vsock_sock*)*, i64 (%struct.vsock_sock*)** %71, align 8
  %73 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %74 = call i64 %72(%struct.vsock_sock* %73)
  %75 = icmp uge i64 %69, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %273

79:                                               ; preds = %62
  %80 = load %struct.sock*, %struct.sock** %9, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @MSG_DONTWAIT, align 4
  %83 = and i32 %81, %82
  %84 = call i64 @sock_rcvtimeo(%struct.sock* %80, i32 %83)
  store i64 %84, i64* %14, align 8
  store i64 0, i64* %13, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_recv_notify_data*)*, i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_recv_notify_data*)** %86, align 8
  %88 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %89 = load i64, i64* %12, align 8
  %90 = call i32 %87(%struct.vsock_sock* %88, i64 %89, %struct.vsock_transport_recv_notify_data* %15)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  br label %273

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %245
  %96 = load %struct.sock*, %struct.sock** %9, align 8
  %97 = call i32 @sk_sleep(%struct.sock* %96)
  %98 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %99 = call i32 @prepare_to_wait(i32 %97, i32* @wait, i32 %98)
  %100 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %101 = call i64 @vsock_stream_has_data(%struct.vsock_sock* %100)
  store i64 %101, i64* %16, align 8
  %102 = load i64, i64* %16, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %176

104:                                              ; preds = %95
  %105 = load %struct.sock*, %struct.sock** %9, align 8
  %106 = getelementptr inbounds %struct.sock, %struct.sock* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %104
  %110 = load %struct.sock*, %struct.sock** %9, align 8
  %111 = getelementptr inbounds %struct.sock, %struct.sock* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @RCV_SHUTDOWN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %118 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SEND_SHUTDOWN, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116, %109, %104
  %124 = load %struct.sock*, %struct.sock** %9, align 8
  %125 = call i32 @sk_sleep(%struct.sock* %124)
  %126 = call i32 @finish_wait(i32 %125, i32* @wait)
  br label %246

127:                                              ; preds = %116
  %128 = load i64, i64* %14, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i32, i32* @EAGAIN, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %11, align 4
  %133 = load %struct.sock*, %struct.sock** %9, align 8
  %134 = call i32 @sk_sleep(%struct.sock* %133)
  %135 = call i32 @finish_wait(i32 %134, i32* @wait)
  br label %246

136:                                              ; preds = %127
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_recv_notify_data*)*, i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_recv_notify_data*)** %138, align 8
  %140 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %141 = load i64, i64* %12, align 8
  %142 = call i32 %139(%struct.vsock_sock* %140, i64 %141, %struct.vsock_transport_recv_notify_data* %15)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = load %struct.sock*, %struct.sock** %9, align 8
  %147 = call i32 @sk_sleep(%struct.sock* %146)
  %148 = call i32 @finish_wait(i32 %147, i32* @wait)
  br label %246

149:                                              ; preds = %136
  %150 = load %struct.sock*, %struct.sock** %9, align 8
  %151 = call i32 @release_sock(%struct.sock* %150)
  %152 = load i64, i64* %14, align 8
  %153 = call i64 @schedule_timeout(i64 %152)
  store i64 %153, i64* %14, align 8
  %154 = load %struct.sock*, %struct.sock** %9, align 8
  %155 = call i32 @lock_sock(%struct.sock* %154)
  %156 = load i32, i32* @current, align 4
  %157 = call i64 @signal_pending(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %149
  %160 = load i64, i64* %14, align 8
  %161 = call i32 @sock_intr_errno(i64 %160)
  store i32 %161, i32* %11, align 4
  %162 = load %struct.sock*, %struct.sock** %9, align 8
  %163 = call i32 @sk_sleep(%struct.sock* %162)
  %164 = call i32 @finish_wait(i32 %163, i32* @wait)
  br label %246

165:                                              ; preds = %149
  %166 = load i64, i64* %14, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i32, i32* @EAGAIN, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %11, align 4
  %171 = load %struct.sock*, %struct.sock** %9, align 8
  %172 = call i32 @sk_sleep(%struct.sock* %171)
  %173 = call i32 @finish_wait(i32 %172, i32* @wait)
  br label %246

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174
  br label %245

176:                                              ; preds = %95
  %177 = load %struct.sock*, %struct.sock** %9, align 8
  %178 = call i32 @sk_sleep(%struct.sock* %177)
  %179 = call i32 @finish_wait(i32 %178, i32* @wait)
  %180 = load i64, i64* %16, align 8
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %11, align 4
  br label %273

185:                                              ; preds = %176
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 3
  %188 = load i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_recv_notify_data*)*, i32 (%struct.vsock_sock*, i64, %struct.vsock_transport_recv_notify_data*)** %187, align 8
  %189 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %190 = load i64, i64* %12, align 8
  %191 = call i32 %188(%struct.vsock_sock* %189, i64 %190, %struct.vsock_transport_recv_notify_data* %15)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  br label %246

195:                                              ; preds = %185
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 4
  %198 = load i64 (%struct.vsock_sock*, %struct.msghdr*, i64, i32)*, i64 (%struct.vsock_sock*, %struct.msghdr*, i64, i32)** %197, align 8
  %199 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %200 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %201 = load i64, i64* %7, align 8
  %202 = load i64, i64* %13, align 8
  %203 = sub i64 %201, %202
  %204 = load i32, i32* %8, align 4
  %205 = call i64 %198(%struct.vsock_sock* %199, %struct.msghdr* %200, i64 %203, i32 %204)
  store i64 %205, i64* %17, align 8
  %206 = load i64, i64* %17, align 8
  %207 = icmp ult i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %195
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %11, align 4
  br label %246

211:                                              ; preds = %195
  %212 = load i64, i64* %17, align 8
  %213 = load i64, i64* %13, align 8
  %214 = add i64 %213, %212
  store i64 %214, i64* %13, align 8
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 5
  %217 = load i32 (%struct.vsock_sock*, i64, i64, i32, %struct.vsock_transport_recv_notify_data*)*, i32 (%struct.vsock_sock*, i64, i64, i32, %struct.vsock_transport_recv_notify_data*)** %216, align 8
  %218 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %219 = load i64, i64* %12, align 8
  %220 = load i64, i64* %17, align 8
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @MSG_PEEK, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i32 %217(%struct.vsock_sock* %218, i64 %219, i64 %220, i32 %226, %struct.vsock_transport_recv_notify_data* %15)
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %11, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %211
  br label %273

231:                                              ; preds = %211
  %232 = load i64, i64* %17, align 8
  %233 = load i64, i64* %12, align 8
  %234 = icmp uge i64 %232, %233
  br i1 %234, label %240, label %235

235:                                              ; preds = %231
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @MSG_PEEK, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235, %231
  br label %246

241:                                              ; preds = %235
  %242 = load i64, i64* %17, align 8
  %243 = load i64, i64* %12, align 8
  %244 = sub i64 %243, %242
  store i64 %244, i64* %12, align 8
  br label %245

245:                                              ; preds = %241, %175
  br label %95

246:                                              ; preds = %240, %208, %194, %168, %159, %145, %130, %123
  %247 = load %struct.sock*, %struct.sock** %9, align 8
  %248 = getelementptr inbounds %struct.sock, %struct.sock* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = load %struct.sock*, %struct.sock** %9, align 8
  %253 = getelementptr inbounds %struct.sock, %struct.sock* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = sub nsw i64 0, %254
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %11, align 4
  br label %266

257:                                              ; preds = %246
  %258 = load %struct.sock*, %struct.sock** %9, align 8
  %259 = getelementptr inbounds %struct.sock, %struct.sock* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @RCV_SHUTDOWN, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %257
  store i32 0, i32* %11, align 4
  br label %265

265:                                              ; preds = %264, %257
  br label %266

266:                                              ; preds = %265, %251
  %267 = load i64, i64* %13, align 8
  %268 = icmp ugt i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i64, i64* %13, align 8
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %11, align 4
  br label %272

272:                                              ; preds = %269, %266
  br label %273

273:                                              ; preds = %272, %230, %182, %93, %76, %61, %57, %47, %41
  %274 = load %struct.sock*, %struct.sock** %9, align 8
  %275 = call i32 @release_sock(%struct.sock* %274)
  %276 = load i32, i32* %11, align 4
  ret i32 %276
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @sock_rcvlowat(%struct.sock*, i32, i64) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i64 @vsock_stream_has_data(%struct.vsock_sock*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
