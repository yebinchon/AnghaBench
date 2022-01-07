; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.nr_sock = type { i32, i32, i32, i32, %struct.net_device*, i8*, i8* }
%struct.net_device = type { i64 }
%struct.sockaddr_ax25 = type { i64, i32 }
%struct.TYPE_4__ = type { i8* }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@SS_CONNECTING = common dso_local global i64 0, align 8
@SS_CONNECTED = common dso_local global i8* null, align 8
@TCP_CLOSE = common dso_local global i64 0, align 8
@SS_UNCONNECTED = common dso_local global i8* null, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_NETROM = common dso_local global i64 0, align 8
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@ax25_uid_policy = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@circuit = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@NR_STATE_1 = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @nr_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.nr_sock*, align 8
  %11 = alloca %struct.sockaddr_ax25*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %9, align 8
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = call %struct.nr_sock* @nr_sk(%struct.sock* %19)
  store %struct.nr_sock* %20, %struct.nr_sock** %10, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_ax25*
  store %struct.sockaddr_ax25* %22, %struct.sockaddr_ax25** %11, align 8
  store i8** null, i8*** %12, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = call i32 @lock_sock(%struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TCP_ESTABLISHED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %4
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SS_CONNECTING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i8*, i8** @SS_CONNECTED, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.socket*, %struct.socket** %5, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %262

41:                                               ; preds = %30, %4
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TCP_CLOSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.socket*, %struct.socket** %5, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SS_CONNECTING, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i8*, i8** @SS_UNCONNECTED, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.socket*, %struct.socket** %5, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* @ECONNREFUSED, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %15, align 4
  br label %262

60:                                               ; preds = %47, %41
  %61 = load %struct.sock*, %struct.sock** %9, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TCP_ESTABLISHED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EISCONN, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %15, align 4
  br label %262

69:                                               ; preds = %60
  %70 = load i64, i64* @TCP_CLOSE, align 8
  %71 = load %struct.sock*, %struct.sock** %9, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i8*, i8** @SS_UNCONNECTED, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.socket*, %struct.socket** %5, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 16
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ne i64 %82, 4
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %15, align 4
  br label %262

87:                                               ; preds = %80, %69
  %88 = load %struct.sockaddr_ax25*, %struct.sockaddr_ax25** %11, align 8
  %89 = getelementptr inbounds %struct.sockaddr_ax25, %struct.sockaddr_ax25* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AF_NETROM, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %15, align 4
  br label %262

96:                                               ; preds = %87
  %97 = load %struct.sock*, %struct.sock** %9, align 8
  %98 = load i32, i32* @SOCK_ZAPPED, align 4
  %99 = call i64 @sock_flag(%struct.sock* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %156

101:                                              ; preds = %96
  %102 = load %struct.sock*, %struct.sock** %9, align 8
  %103 = load i32, i32* @SOCK_ZAPPED, align 4
  %104 = call i32 @sock_reset_flag(%struct.sock* %102, i32 %103)
  %105 = call %struct.net_device* (...) @nr_dev_first()
  store %struct.net_device* %105, %struct.net_device** %14, align 8
  %106 = icmp eq %struct.net_device* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @ENETUNREACH, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %15, align 4
  br label %262

110:                                              ; preds = %101
  %111 = load %struct.net_device*, %struct.net_device** %14, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8**
  store i8** %114, i8*** %12, align 8
  %115 = call i32 (...) @current_euid()
  %116 = call %struct.TYPE_4__* @ax25_findbyuid(i32 %115)
  store %struct.TYPE_4__* %116, %struct.TYPE_4__** %13, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %118 = icmp ne %struct.TYPE_4__* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %110
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %124 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %126 = call i32 @ax25_uid_put(%struct.TYPE_4__* %125)
  br label %144

127:                                              ; preds = %110
  %128 = load i64, i64* @ax25_uid_policy, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i32, i32* @CAP_NET_ADMIN, align 4
  %132 = call i32 @capable(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = load %struct.net_device*, %struct.net_device** %14, align 8
  %136 = call i32 @dev_put(%struct.net_device* %135)
  %137 = load i32, i32* @EPERM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %15, align 4
  br label %262

139:                                              ; preds = %130, %127
  %140 = load i8**, i8*** %12, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %143 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %142, i32 0, i32 6
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %139, %119
  %145 = load i8**, i8*** %12, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %148 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %147, i32 0, i32 5
  store i8* %146, i8** %148, align 8
  %149 = load %struct.net_device*, %struct.net_device** %14, align 8
  %150 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %151 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %150, i32 0, i32 4
  store %struct.net_device* %149, %struct.net_device** %151, align 8
  %152 = load %struct.net_device*, %struct.net_device** %14, align 8
  %153 = call i32 @dev_put(%struct.net_device* %152)
  %154 = load %struct.sock*, %struct.sock** %9, align 8
  %155 = call i32 @nr_insert_socket(%struct.sock* %154)
  br label %156

156:                                              ; preds = %144, %96
  %157 = load %struct.sockaddr_ax25*, %struct.sockaddr_ax25** %11, align 8
  %158 = getelementptr inbounds %struct.sockaddr_ax25, %struct.sockaddr_ax25* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %161 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load %struct.sock*, %struct.sock** %9, align 8
  %163 = call i32 @release_sock(%struct.sock* %162)
  %164 = call i32 (...) @nr_find_next_circuit()
  store i32 %164, i32* @circuit, align 4
  %165 = load %struct.sock*, %struct.sock** %9, align 8
  %166 = call i32 @lock_sock(%struct.sock* %165)
  %167 = load i32, i32* @circuit, align 4
  %168 = sdiv i32 %167, 256
  %169 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %170 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* @circuit, align 4
  %172 = srem i32 %171, 256
  %173 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %174 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @circuit, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* @circuit, align 4
  %177 = load i64, i64* @SS_CONNECTING, align 8
  %178 = load %struct.socket*, %struct.socket** %5, align 8
  %179 = getelementptr inbounds %struct.socket, %struct.socket* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load i64, i64* @TCP_SYN_SENT, align 8
  %181 = load %struct.sock*, %struct.sock** %9, align 8
  %182 = getelementptr inbounds %struct.sock, %struct.sock* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load %struct.sock*, %struct.sock** %9, align 8
  %184 = call i32 @nr_establish_data_link(%struct.sock* %183)
  %185 = load i32, i32* @NR_STATE_1, align 4
  %186 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %187 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load %struct.sock*, %struct.sock** %9, align 8
  %189 = call i32 @nr_start_heartbeat(%struct.sock* %188)
  %190 = load %struct.sock*, %struct.sock** %9, align 8
  %191 = getelementptr inbounds %struct.sock, %struct.sock* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @TCP_ESTABLISHED, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %156
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @O_NONBLOCK, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i32, i32* @EINPROGRESS, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %15, align 4
  br label %262

203:                                              ; preds = %195, %156
  %204 = load %struct.sock*, %struct.sock** %9, align 8
  %205 = getelementptr inbounds %struct.sock, %struct.sock* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @TCP_SYN_SENT, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %244

209:                                              ; preds = %203
  %210 = load i32, i32* @wait, align 4
  %211 = call i32 @DEFINE_WAIT(i32 %210)
  br label %212

212:                                              ; preds = %227, %209
  %213 = load %struct.sock*, %struct.sock** %9, align 8
  %214 = call i32 @sk_sleep(%struct.sock* %213)
  %215 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %216 = call i32 @prepare_to_wait(i32 %214, i32* @wait, i32 %215)
  %217 = load %struct.sock*, %struct.sock** %9, align 8
  %218 = getelementptr inbounds %struct.sock, %struct.sock* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @TCP_SYN_SENT, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  br label %236

223:                                              ; preds = %212
  %224 = load i32, i32* @current, align 4
  %225 = call i32 @signal_pending(i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %223
  %228 = load %struct.sock*, %struct.sock** %9, align 8
  %229 = call i32 @release_sock(%struct.sock* %228)
  %230 = call i32 (...) @schedule()
  %231 = load %struct.sock*, %struct.sock** %9, align 8
  %232 = call i32 @lock_sock(%struct.sock* %231)
  br label %212

233:                                              ; preds = %223
  %234 = load i32, i32* @ERESTARTSYS, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %15, align 4
  br label %236

236:                                              ; preds = %233, %222
  %237 = load %struct.sock*, %struct.sock** %9, align 8
  %238 = call i32 @sk_sleep(%struct.sock* %237)
  %239 = call i32 @finish_wait(i32 %238, i32* @wait)
  %240 = load i32, i32* %15, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  br label %262

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %243, %203
  %245 = load %struct.sock*, %struct.sock** %9, align 8
  %246 = getelementptr inbounds %struct.sock, %struct.sock* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @TCP_ESTABLISHED, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %257

250:                                              ; preds = %244
  %251 = load i8*, i8** @SS_UNCONNECTED, align 8
  %252 = ptrtoint i8* %251 to i64
  %253 = load %struct.socket*, %struct.socket** %5, align 8
  %254 = getelementptr inbounds %struct.socket, %struct.socket* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  %255 = load %struct.sock*, %struct.sock** %9, align 8
  %256 = call i32 @sock_error(%struct.sock* %255)
  store i32 %256, i32* %15, align 4
  br label %262

257:                                              ; preds = %244
  %258 = load i8*, i8** @SS_CONNECTED, align 8
  %259 = ptrtoint i8* %258 to i64
  %260 = load %struct.socket*, %struct.socket** %5, align 8
  %261 = getelementptr inbounds %struct.socket, %struct.socket* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  br label %262

262:                                              ; preds = %257, %250, %242, %200, %134, %107, %93, %84, %66, %53, %36
  %263 = load %struct.sock*, %struct.sock** %9, align 8
  %264 = call i32 @release_sock(%struct.sock* %263)
  %265 = load i32, i32* %15, align 4
  ret i32 %265
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local %struct.net_device* @nr_dev_first(...) #1

declare dso_local %struct.TYPE_4__* @ax25_findbyuid(i32) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @ax25_uid_put(%struct.TYPE_4__*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @nr_insert_socket(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @nr_find_next_circuit(...) #1

declare dso_local i32 @nr_establish_data_link(%struct.sock*) #1

declare dso_local i32 @nr_start_heartbeat(%struct.sock*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
