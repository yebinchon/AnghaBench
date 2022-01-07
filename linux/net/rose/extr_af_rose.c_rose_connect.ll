; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.rose_sock = type { i32, i32, %struct.TYPE_7__*, i32, i32*, i64, i64, i32, i32, %struct.net_device*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32 }
%struct.sockaddr_rose = type { i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.full_sockaddr_rose = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@AF_ROSE = common dso_local global i64 0, align 8
@ROSE_MAX_DIGIS = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@SS_CONNECTING = common dso_local global i64 0, align 8
@SS_CONNECTED = common dso_local global i8* null, align 8
@TCP_CLOSE = common dso_local global i64 0, align 8
@SS_UNCONNECTED = common dso_local global i8* null, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@ROSE_ADDR_LEN = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@ROSE_STATE_1 = common dso_local global i32 0, align 4
@ROSE_CALL_REQUEST = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @rose_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.rose_sock*, align 8
  %12 = alloca %struct.sockaddr_rose*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.full_sockaddr_rose*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.socket*, %struct.socket** %6, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 1
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  store %struct.sock* %22, %struct.sock** %10, align 8
  %23 = load %struct.sock*, %struct.sock** %10, align 8
  %24 = call %struct.rose_sock* @rose_sk(%struct.sock* %23)
  store %struct.rose_sock* %24, %struct.rose_sock** %11, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_rose*
  store %struct.sockaddr_rose* %26, %struct.sockaddr_rose** %12, align 8
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 24
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %371

37:                                               ; preds = %30, %4
  %38 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %39 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_ROSE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %371

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 24
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %52 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %371

58:                                               ; preds = %50, %46
  %59 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %60 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ROSE_MAX_DIGIS, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %371

67:                                               ; preds = %58
  %68 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %69 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %72 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add i32 %70, %73
  %75 = load i32, i32* @ROSE_MAX_DIGIS, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %371

80:                                               ; preds = %67
  %81 = load %struct.sock*, %struct.sock** %10, align 8
  %82 = call i32 @lock_sock(%struct.sock* %81)
  %83 = load %struct.sock*, %struct.sock** %10, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TCP_ESTABLISHED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load %struct.socket*, %struct.socket** %6, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SS_CONNECTING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load i8*, i8** @SS_CONNECTED, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = load %struct.socket*, %struct.socket** %6, align 8
  %98 = getelementptr inbounds %struct.socket, %struct.socket* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %367

99:                                               ; preds = %88, %80
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TCP_CLOSE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = load %struct.socket*, %struct.socket** %6, align 8
  %107 = getelementptr inbounds %struct.socket, %struct.socket* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SS_CONNECTING, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load i8*, i8** @SS_UNCONNECTED, align 8
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.socket*, %struct.socket** %6, align 8
  %115 = getelementptr inbounds %struct.socket, %struct.socket* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @ECONNREFUSED, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %18, align 4
  br label %367

118:                                              ; preds = %105, %99
  %119 = load %struct.sock*, %struct.sock** %10, align 8
  %120 = getelementptr inbounds %struct.sock, %struct.sock* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @TCP_ESTABLISHED, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* @EISCONN, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %18, align 4
  br label %367

127:                                              ; preds = %118
  %128 = load i64, i64* @TCP_CLOSE, align 8
  %129 = load %struct.sock*, %struct.sock** %10, align 8
  %130 = getelementptr inbounds %struct.sock, %struct.sock* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load i8*, i8** @SS_UNCONNECTED, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.socket*, %struct.socket** %6, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %136 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %135, i32 0, i32 4
  %137 = call %struct.TYPE_7__* @rose_get_neigh(i32* %136, i8* %13, i8* %14, i32 0)
  %138 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %139 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %138, i32 0, i32 2
  store %struct.TYPE_7__* %137, %struct.TYPE_7__** %139, align 8
  %140 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %141 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %140, i32 0, i32 2
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = icmp ne %struct.TYPE_7__* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %127
  %145 = load i32, i32* @ENETUNREACH, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %18, align 4
  br label %367

147:                                              ; preds = %127
  %148 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %149 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %148, i32 0, i32 2
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = call i64 @rose_new_lci(%struct.TYPE_7__* %150)
  %152 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %153 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %152, i32 0, i32 5
  store i64 %151, i64* %153, align 8
  %154 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %155 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %147
  %159 = load i32, i32* @ENETUNREACH, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %18, align 4
  br label %367

161:                                              ; preds = %147
  %162 = load %struct.sock*, %struct.sock** %10, align 8
  %163 = load i32, i32* @SOCK_ZAPPED, align 4
  %164 = call i64 @sock_flag(%struct.sock* %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %203

166:                                              ; preds = %161
  %167 = load %struct.sock*, %struct.sock** %10, align 8
  %168 = load i32, i32* @SOCK_ZAPPED, align 4
  %169 = call i32 @sock_reset_flag(%struct.sock* %167, i32 %168)
  %170 = call %struct.net_device* (...) @rose_dev_first()
  store %struct.net_device* %170, %struct.net_device** %15, align 8
  %171 = icmp eq %struct.net_device* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, i32* @ENETUNREACH, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %18, align 4
  br label %367

175:                                              ; preds = %166
  %176 = call i32 (...) @current_euid()
  %177 = call %struct.TYPE_6__* @ax25_findbyuid(i32 %176)
  store %struct.TYPE_6__* %177, %struct.TYPE_6__** %16, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %179 = icmp ne %struct.TYPE_6__* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %18, align 4
  br label %367

183:                                              ; preds = %175
  %184 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %185 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %184, i32 0, i32 11
  %186 = load %struct.net_device*, %struct.net_device** %15, align 8
  %187 = getelementptr inbounds %struct.net_device, %struct.net_device* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @ROSE_ADDR_LEN, align 4
  %190 = call i32 @memcpy(i32* %185, i32 %188, i32 %189)
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %195 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %194, i32 0, i32 10
  store i32 %193, i32* %195, align 8
  %196 = load %struct.net_device*, %struct.net_device** %15, align 8
  %197 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %198 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %197, i32 0, i32 9
  store %struct.net_device* %196, %struct.net_device** %198, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %200 = call i32 @ax25_uid_put(%struct.TYPE_6__* %199)
  %201 = load %struct.sock*, %struct.sock** %10, align 8
  %202 = call i32 @rose_insert_socket(%struct.sock* %201)
  br label %203

203:                                              ; preds = %183, %161
  %204 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %205 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %208 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %207, i32 0, i32 8
  store i32 %206, i32* %208, align 4
  %209 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %210 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %213 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %212, i32 0, i32 7
  store i32 %211, i32* %213, align 8
  %214 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %215 = ptrtoint %struct.rose_sock* %214 to i64
  %216 = and i64 %215, 65535
  %217 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %218 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %216, %219
  %221 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %222 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %221, i32 0, i32 6
  store i64 %220, i64* %222, align 8
  %223 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %224 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %227 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = icmp eq i64 %229, 8
  br i1 %230, label %231, label %258

231:                                              ; preds = %203
  %232 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %233 = bitcast %struct.sockaddr* %232 to %struct.full_sockaddr_rose*
  store %struct.full_sockaddr_rose* %233, %struct.full_sockaddr_rose** %19, align 8
  store i32 0, i32* %17, align 4
  br label %234

234:                                              ; preds = %254, %231
  %235 = load i32, i32* %17, align 4
  %236 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %237 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %257

240:                                              ; preds = %234
  %241 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %19, align 8
  %242 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %249 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %17, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 %247, i32* %253, align 4
  br label %254

254:                                              ; preds = %240
  %255 = load i32, i32* %17, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %17, align 4
  br label %234

257:                                              ; preds = %234
  br label %272

258:                                              ; preds = %203
  %259 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %260 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %263, label %271

263:                                              ; preds = %258
  %264 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %12, align 8
  %265 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %268 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %267, i32 0, i32 4
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  store i32 %266, i32* %270, align 4
  br label %271

271:                                              ; preds = %263, %258
  br label %272

272:                                              ; preds = %271, %257
  %273 = load i64, i64* @SS_CONNECTING, align 8
  %274 = load %struct.socket*, %struct.socket** %6, align 8
  %275 = getelementptr inbounds %struct.socket, %struct.socket* %274, i32 0, i32 0
  store i64 %273, i64* %275, align 8
  %276 = load i64, i64* @TCP_SYN_SENT, align 8
  %277 = load %struct.sock*, %struct.sock** %10, align 8
  %278 = getelementptr inbounds %struct.sock, %struct.sock* %277, i32 0, i32 0
  store i64 %276, i64* %278, align 8
  %279 = load i32, i32* @ROSE_STATE_1, align 4
  %280 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %281 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %280, i32 0, i32 3
  store i32 %279, i32* %281, align 8
  %282 = load %struct.rose_sock*, %struct.rose_sock** %11, align 8
  %283 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %282, i32 0, i32 2
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  %288 = load %struct.sock*, %struct.sock** %10, align 8
  %289 = load i32, i32* @ROSE_CALL_REQUEST, align 4
  %290 = call i32 @rose_write_internal(%struct.sock* %288, i32 %289)
  %291 = load %struct.sock*, %struct.sock** %10, align 8
  %292 = call i32 @rose_start_heartbeat(%struct.sock* %291)
  %293 = load %struct.sock*, %struct.sock** %10, align 8
  %294 = call i32 @rose_start_t1timer(%struct.sock* %293)
  %295 = load %struct.sock*, %struct.sock** %10, align 8
  %296 = getelementptr inbounds %struct.sock, %struct.sock* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @TCP_ESTABLISHED, align 8
  %299 = icmp ne i64 %297, %298
  br i1 %299, label %300, label %308

300:                                              ; preds = %272
  %301 = load i32, i32* %9, align 4
  %302 = load i32, i32* @O_NONBLOCK, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = load i32, i32* @EINPROGRESS, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %18, align 4
  br label %367

308:                                              ; preds = %300, %272
  %309 = load %struct.sock*, %struct.sock** %10, align 8
  %310 = getelementptr inbounds %struct.sock, %struct.sock* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @TCP_SYN_SENT, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %349

314:                                              ; preds = %308
  %315 = load i32, i32* @wait, align 4
  %316 = call i32 @DEFINE_WAIT(i32 %315)
  br label %317

317:                                              ; preds = %332, %314
  %318 = load %struct.sock*, %struct.sock** %10, align 8
  %319 = call i32 @sk_sleep(%struct.sock* %318)
  %320 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %321 = call i32 @prepare_to_wait(i32 %319, i32* @wait, i32 %320)
  %322 = load %struct.sock*, %struct.sock** %10, align 8
  %323 = getelementptr inbounds %struct.sock, %struct.sock* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @TCP_SYN_SENT, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %317
  br label %341

328:                                              ; preds = %317
  %329 = load i32, i32* @current, align 4
  %330 = call i32 @signal_pending(i32 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %338, label %332

332:                                              ; preds = %328
  %333 = load %struct.sock*, %struct.sock** %10, align 8
  %334 = call i32 @release_sock(%struct.sock* %333)
  %335 = call i32 (...) @schedule()
  %336 = load %struct.sock*, %struct.sock** %10, align 8
  %337 = call i32 @lock_sock(%struct.sock* %336)
  br label %317

338:                                              ; preds = %328
  %339 = load i32, i32* @ERESTARTSYS, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %18, align 4
  br label %341

341:                                              ; preds = %338, %327
  %342 = load %struct.sock*, %struct.sock** %10, align 8
  %343 = call i32 @sk_sleep(%struct.sock* %342)
  %344 = call i32 @finish_wait(i32 %343, i32* @wait)
  %345 = load i32, i32* %18, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %341
  br label %367

348:                                              ; preds = %341
  br label %349

349:                                              ; preds = %348, %308
  %350 = load %struct.sock*, %struct.sock** %10, align 8
  %351 = getelementptr inbounds %struct.sock, %struct.sock* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @TCP_ESTABLISHED, align 8
  %354 = icmp ne i64 %352, %353
  br i1 %354, label %355, label %362

355:                                              ; preds = %349
  %356 = load i8*, i8** @SS_UNCONNECTED, align 8
  %357 = ptrtoint i8* %356 to i64
  %358 = load %struct.socket*, %struct.socket** %6, align 8
  %359 = getelementptr inbounds %struct.socket, %struct.socket* %358, i32 0, i32 0
  store i64 %357, i64* %359, align 8
  %360 = load %struct.sock*, %struct.sock** %10, align 8
  %361 = call i32 @sock_error(%struct.sock* %360)
  store i32 %361, i32* %18, align 4
  br label %367

362:                                              ; preds = %349
  %363 = load i8*, i8** @SS_CONNECTED, align 8
  %364 = ptrtoint i8* %363 to i64
  %365 = load %struct.socket*, %struct.socket** %6, align 8
  %366 = getelementptr inbounds %struct.socket, %struct.socket* %365, i32 0, i32 0
  store i64 %364, i64* %366, align 8
  br label %367

367:                                              ; preds = %362, %355, %347, %305, %180, %172, %158, %144, %124, %111, %94
  %368 = load %struct.sock*, %struct.sock** %10, align 8
  %369 = call i32 @release_sock(%struct.sock* %368)
  %370 = load i32, i32* %18, align 4
  store i32 %370, i32* %5, align 4
  br label %371

371:                                              ; preds = %367, %77, %64, %55, %43, %34
  %372 = load i32, i32* %5, align 4
  ret i32 %372
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_7__* @rose_get_neigh(i32*, i8*, i8*, i32) #1

declare dso_local i64 @rose_new_lci(%struct.TYPE_7__*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local %struct.net_device* @rose_dev_first(...) #1

declare dso_local %struct.TYPE_6__* @ax25_findbyuid(i32) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ax25_uid_put(%struct.TYPE_6__*) #1

declare dso_local i32 @rose_insert_socket(%struct.sock*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_start_heartbeat(%struct.sock*) #1

declare dso_local i32 @rose_start_t1timer(%struct.sock*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
