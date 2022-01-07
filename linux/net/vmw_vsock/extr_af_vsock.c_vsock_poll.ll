; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.vsock_sock*, i32, i32*)*, i32 (%struct.vsock_sock*, i32, i32*)*, i64 (%struct.vsock_sock*)* }
%struct.vsock_sock = type { i32 }
%struct.file = type { i32 }
%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32, i64, i32, i64 }

@EPOLLERR = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@transport = common dso_local global %struct.TYPE_2__* null, align 8
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i64 0, align 8
@TCP_CLOSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, i32*)* @vsock_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vsock_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %7, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %17)
  store %struct.vsock_sock* %18, %struct.vsock_sock** %9, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = call i32 @sk_sleep(%struct.sock* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @poll_wait(%struct.file* %19, i32 %21, i32* %22)
  store i32 0, i32* %8, align 4
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @EPOLLERR, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.sock*, %struct.sock** %7, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SHUTDOWN_MASK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %32
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SEND_SHUTDOWN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %47 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SEND_SHUTDOWN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45, %32
  %53 = load i32, i32* @EPOLLHUP, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %45, %38
  %57 = load %struct.sock*, %struct.sock** %7, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RCV_SHUTDOWN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %65 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SEND_SHUTDOWN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63, %56
  %71 = load i32, i32* @EPOLLRDHUP, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.socket*, %struct.socket** %5, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SOCK_DGRAM, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %74
  %81 = load %struct.sock*, %struct.sock** %7, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 2
  %83 = call i32 @skb_queue_empty_lockless(i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.sock*, %struct.sock** %7, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @RCV_SHUTDOWN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85, %80
  %93 = load i32, i32* @EPOLLIN, align 4
  %94 = load i32, i32* @EPOLLRDNORM, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.sock*, %struct.sock** %7, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SEND_SHUTDOWN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @EPOLLOUT, align 4
  %107 = load i32, i32* @EPOLLWRNORM, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @EPOLLWRBAND, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %105, %98
  br label %262

114:                                              ; preds = %74
  %115 = load %struct.socket*, %struct.socket** %5, align 8
  %116 = getelementptr inbounds %struct.socket, %struct.socket* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SOCK_STREAM, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %261

120:                                              ; preds = %114
  %121 = load %struct.sock*, %struct.sock** %7, align 8
  %122 = call i32 @lock_sock(%struct.sock* %121)
  %123 = load %struct.sock*, %struct.sock** %7, align 8
  %124 = getelementptr inbounds %struct.sock, %struct.sock* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TCP_LISTEN, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %120
  %129 = load %struct.sock*, %struct.sock** %7, align 8
  %130 = call i32 @vsock_is_accept_queue_empty(%struct.sock* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* @EPOLLIN, align 4
  %134 = load i32, i32* @EPOLLRDNORM, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %132, %128, %120
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i64 (%struct.vsock_sock*)*, i64 (%struct.vsock_sock*)** %140, align 8
  %142 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %143 = call i64 %141(%struct.vsock_sock* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %175

145:                                              ; preds = %138
  %146 = load %struct.sock*, %struct.sock** %7, align 8
  %147 = getelementptr inbounds %struct.sock, %struct.sock* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @RCV_SHUTDOWN, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %175, label %152

152:                                              ; preds = %145
  store i32 0, i32* %10, align 4
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32 (%struct.vsock_sock*, i32, i32*)*, i32 (%struct.vsock_sock*, i32, i32*)** %154, align 8
  %156 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %157 = call i32 %155(%struct.vsock_sock* %156, i32 1, i32* %10)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %152
  %161 = load i32, i32* @EPOLLERR, align 4
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %8, align 4
  br label %174

164:                                              ; preds = %152
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i32, i32* @EPOLLIN, align 4
  %169 = load i32, i32* @EPOLLRDNORM, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* %8, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %167, %164
  br label %174

174:                                              ; preds = %173, %160
  br label %175

175:                                              ; preds = %174, %145, %138
  %176 = load %struct.sock*, %struct.sock** %7, align 8
  %177 = getelementptr inbounds %struct.sock, %struct.sock* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @RCV_SHUTDOWN, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %175
  %183 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %184 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @SEND_SHUTDOWN, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %182, %175
  %190 = load i32, i32* @EPOLLIN, align 4
  %191 = load i32, i32* @EPOLLRDNORM, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* %8, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %189, %182
  %196 = load %struct.sock*, %struct.sock** %7, align 8
  %197 = getelementptr inbounds %struct.sock, %struct.sock* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @TCP_ESTABLISHED, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %232

201:                                              ; preds = %195
  %202 = load %struct.sock*, %struct.sock** %7, align 8
  %203 = getelementptr inbounds %struct.sock, %struct.sock* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @SEND_SHUTDOWN, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %231, label %208

208:                                              ; preds = %201
  store i32 0, i32* %12, align 4
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32 (%struct.vsock_sock*, i32, i32*)*, i32 (%struct.vsock_sock*, i32, i32*)** %210, align 8
  %212 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %213 = call i32 %211(%struct.vsock_sock* %212, i32 1, i32* %12)
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %13, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %208
  %217 = load i32, i32* @EPOLLERR, align 4
  %218 = load i32, i32* %8, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %8, align 4
  br label %230

220:                                              ; preds = %208
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load i32, i32* @EPOLLOUT, align 4
  %225 = load i32, i32* @EPOLLWRNORM, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* %8, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %8, align 4
  br label %229

229:                                              ; preds = %223, %220
  br label %230

230:                                              ; preds = %229, %216
  br label %231

231:                                              ; preds = %230, %201
  br label %232

232:                                              ; preds = %231, %195
  %233 = load %struct.sock*, %struct.sock** %7, align 8
  %234 = getelementptr inbounds %struct.sock, %struct.sock* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @TCP_CLOSE, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %244, label %238

238:                                              ; preds = %232
  %239 = load %struct.sock*, %struct.sock** %7, align 8
  %240 = getelementptr inbounds %struct.sock, %struct.sock* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @TCP_CLOSING, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %258

244:                                              ; preds = %238, %232
  %245 = load %struct.sock*, %struct.sock** %7, align 8
  %246 = getelementptr inbounds %struct.sock, %struct.sock* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @SEND_SHUTDOWN, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %244
  %252 = load i32, i32* @EPOLLOUT, align 4
  %253 = load i32, i32* @EPOLLWRNORM, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* %8, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %251, %244
  br label %258

258:                                              ; preds = %257, %238
  %259 = load %struct.sock*, %struct.sock** %7, align 8
  %260 = call i32 @release_sock(%struct.sock* %259)
  br label %261

261:                                              ; preds = %258, %114
  br label %262

262:                                              ; preds = %261, %113
  %263 = load i32, i32* %8, align 4
  ret i32 %263
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @skb_queue_empty_lockless(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @vsock_is_accept_queue_empty(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
