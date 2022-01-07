; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i64, i32 }
%struct.vmci_transport_packet = type { i64, i32, %struct.TYPE_11__, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.vsock_sock = type { i32, %struct.sock*, %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_12__*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i32 (%struct.sock*)* }

@EINVAL = common dso_local global i32 0, align 4
@VMCI_TRANSPORT_PACKET_TYPE_REQUEST = common dso_local global i64 0, align 8
@VMCI_TRANSPORT_PACKET_TYPE_REQUEST2 = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VSOCK_PROTO_INVALID = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.vmci_transport_packet*)* @vmci_transport_recv_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_recv_listen(%struct.sock* %0, %struct.vmci_transport_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.vmci_transport_packet*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.vsock_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.vmci_transport_packet* %1, %struct.vmci_transport_packet** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %18 = call %struct.sock* @vmci_transport_get_pending(%struct.sock* %16, %struct.vmci_transport_packet* %17)
  store %struct.sock* %18, %struct.sock** %6, align 8
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = call i32 @lock_sock(%struct.sock* %22)
  %24 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %25 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %41 [
    i32 128, label %36
  ]

36:                                               ; preds = %21
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %40 = call i32 @vmci_transport_recv_connecting_server(%struct.sock* %37, %struct.sock* %38, %struct.vmci_transport_packet* %39)
  store i32 %40, i32* %8, align 4
  br label %47

41:                                               ; preds = %21
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %44 = call i32 @vmci_transport_send_reset(%struct.sock* %42, %struct.vmci_transport_packet* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = load %struct.sock*, %struct.sock** %6, align 8
  %53 = call i32 @vsock_remove_pending(%struct.sock* %51, %struct.sock* %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = call i32 @release_sock(%struct.sock* %55)
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = call i32 @vmci_transport_release_pending(%struct.sock* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %294

60:                                               ; preds = %2
  %61 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %62 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VMCI_TRANSPORT_PACKET_TYPE_REQUEST, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %60
  %67 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %68 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @VMCI_TRANSPORT_PACKET_TYPE_REQUEST2, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %74 = call i32 @vmci_transport_reply_reset(%struct.vmci_transport_packet* %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %294

77:                                               ; preds = %66, %60
  %78 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %79 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %85 = call i32 @vmci_transport_reply_reset(%struct.vmci_transport_packet* %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %294

88:                                               ; preds = %77
  %89 = load %struct.sock*, %struct.sock** %4, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sock*, %struct.sock** %4, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp sge i64 %91, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %98 = call i32 @vmci_transport_reply_reset(%struct.vmci_transport_packet* %97)
  %99 = load i32, i32* @ECONNREFUSED, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %294

101:                                              ; preds = %88
  %102 = load %struct.sock*, %struct.sock** %4, align 8
  %103 = call i32 @sock_net(%struct.sock* %102)
  %104 = load %struct.sock*, %struct.sock** %4, align 8
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = load %struct.sock*, %struct.sock** %4, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.sock* @__vsock_create(i32 %103, i32* null, %struct.sock* %104, i32 %105, i32 %108, i32 0)
  store %struct.sock* %109, %struct.sock** %6, align 8
  %110 = load %struct.sock*, %struct.sock** %6, align 8
  %111 = icmp ne %struct.sock* %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %101
  %113 = load %struct.sock*, %struct.sock** %4, align 8
  %114 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %115 = call i32 @vmci_transport_send_reset(%struct.sock* %113, %struct.vmci_transport_packet* %114)
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %294

118:                                              ; preds = %101
  %119 = load %struct.sock*, %struct.sock** %6, align 8
  %120 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %119)
  store %struct.vsock_sock* %120, %struct.vsock_sock** %7, align 8
  %121 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %122 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %121, i32 0, i32 3
  %123 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %124 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %129 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @vsock_addr_init(%struct.TYPE_13__* %122, i32 %127, i32 %130)
  %132 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %133 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %132, i32 0, i32 2
  %134 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %135 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %140 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @vsock_addr_init(%struct.TYPE_13__* %133, i32 %138, i32 %141)
  %143 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %144 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %148 = call %struct.TYPE_14__* @vmci_trans(%struct.vsock_sock* %147)
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp sge i64 %146, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %118
  %153 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %154 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %158 = call %struct.TYPE_14__* @vmci_trans(%struct.vsock_sock* %157)
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp sle i64 %156, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %152
  %163 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %164 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i8*
  store i8* %167, i8** %9, align 8
  br label %173

168:                                              ; preds = %152, %118
  %169 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %170 = call %struct.TYPE_14__* @vmci_trans(%struct.vsock_sock* %169)
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %9, align 8
  br label %173

173:                                              ; preds = %168, %162
  %174 = call i64 @vmci_transport_old_proto_override(i32* %11)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %10, align 4
  br label %194

178:                                              ; preds = %173
  %179 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %180 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @VMCI_TRANSPORT_PACKET_TYPE_REQUEST, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  store i32 1, i32* %10, align 4
  br label %193

185:                                              ; preds = %178
  %186 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %187 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @VMCI_TRANSPORT_PACKET_TYPE_REQUEST2, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  store i32 0, i32* %10, align 4
  br label %192

192:                                              ; preds = %191, %185
  br label %193

193:                                              ; preds = %192, %184
  br label %194

194:                                              ; preds = %193, %176
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %194
  %198 = load i32, i32* @VSOCK_PROTO_INVALID, align 4
  store i32 %198, i32* %12, align 4
  %199 = load %struct.sock*, %struct.sock** %6, align 8
  %200 = call i64 @vmci_transport_proto_to_notify_struct(%struct.sock* %199, i32* %12, i32 1)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load %struct.sock*, %struct.sock** %6, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = call i32 @vmci_transport_send_negotiate(%struct.sock* %203, i8* %204)
  store i32 %205, i32* %8, align 4
  br label %209

206:                                              ; preds = %197
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %206, %202
  br label %241

210:                                              ; preds = %194
  %211 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %212 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  store i32 %213, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %214 = call i32 (...) @vmci_transport_new_proto_supported_versions()
  %215 = load i32, i32* %13, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @fls(i32 %217)
  store i32 %218, i32* %14, align 4
  %219 = load i32, i32* %14, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %210
  %222 = load i32, i32* %14, align 4
  %223 = sub nsw i32 %222, 1
  %224 = shl i32 1, %223
  store i32 %224, i32* %15, align 4
  %225 = load %struct.sock*, %struct.sock** %6, align 8
  %226 = call i64 @vmci_transport_proto_to_notify_struct(%struct.sock* %225, i32* %15, i32 0)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %221
  %229 = load %struct.sock*, %struct.sock** %6, align 8
  %230 = load i8*, i8** %9, align 8
  %231 = load i32, i32* %15, align 4
  %232 = call i32 @vmci_transport_send_negotiate2(%struct.sock* %229, i8* %230, i32 %231)
  store i32 %232, i32* %8, align 4
  br label %236

233:                                              ; preds = %221
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %233, %228
  br label %240

237:                                              ; preds = %210
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %237, %236
  br label %241

241:                                              ; preds = %240, %209
  %242 = load i32, i32* %8, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %241
  %245 = load %struct.sock*, %struct.sock** %4, align 8
  %246 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %247 = call i32 @vmci_transport_send_reset(%struct.sock* %245, %struct.vmci_transport_packet* %246)
  %248 = load %struct.sock*, %struct.sock** %6, align 8
  %249 = call i32 @sock_put(%struct.sock* %248)
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @vmci_transport_error_to_vsock_error(i32 %250)
  store i32 %251, i32* %8, align 4
  br label %292

252:                                              ; preds = %241
  %253 = load %struct.sock*, %struct.sock** %4, align 8
  %254 = load %struct.sock*, %struct.sock** %6, align 8
  %255 = call i32 @vsock_add_pending(%struct.sock* %253, %struct.sock* %254)
  %256 = load %struct.sock*, %struct.sock** %4, align 8
  %257 = getelementptr inbounds %struct.sock, %struct.sock* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %257, align 8
  %260 = load %struct.sock*, %struct.sock** %6, align 8
  %261 = getelementptr inbounds %struct.sock, %struct.sock* %260, i32 0, i32 0
  store i32 128, i32* %261, align 8
  %262 = load i8*, i8** %9, align 8
  %263 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %264 = call %struct.TYPE_14__* @vmci_trans(%struct.vsock_sock* %263)
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 4
  store i8* %262, i8** %265, align 8
  %266 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %267 = call %struct.TYPE_14__* @vmci_trans(%struct.vsock_sock* %266)
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 5
  store i8* %262, i8** %268, align 8
  %269 = load i8*, i8** %9, align 8
  %270 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %271 = call %struct.TYPE_14__* @vmci_trans(%struct.vsock_sock* %270)
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 3
  store i8* %269, i8** %272, align 8
  %273 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %274 = call %struct.TYPE_14__* @vmci_trans(%struct.vsock_sock* %273)
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %277, align 8
  %279 = load %struct.sock*, %struct.sock** %6, align 8
  %280 = call i32 %278(%struct.sock* %279)
  %281 = load %struct.sock*, %struct.sock** %4, align 8
  %282 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %283 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %282, i32 0, i32 1
  store %struct.sock* %281, %struct.sock** %283, align 8
  %284 = load %struct.sock*, %struct.sock** %4, align 8
  %285 = call i32 @sock_hold(%struct.sock* %284)
  %286 = load %struct.sock*, %struct.sock** %6, align 8
  %287 = call i32 @sock_hold(%struct.sock* %286)
  %288 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %289 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %288, i32 0, i32 0
  %290 = load i32, i32* @HZ, align 4
  %291 = call i32 @schedule_delayed_work(i32* %289, i32 %290)
  br label %292

292:                                              ; preds = %252, %244
  %293 = load i32, i32* %8, align 4
  store i32 %293, i32* %3, align 4
  br label %294

294:                                              ; preds = %292, %112, %96, %83, %72, %54
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local %struct.sock* @vmci_transport_get_pending(%struct.sock*, %struct.vmci_transport_packet*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vmci_transport_recv_connecting_server(%struct.sock*, %struct.sock*, %struct.vmci_transport_packet*) #1

declare dso_local i32 @vmci_transport_send_reset(%struct.sock*, %struct.vmci_transport_packet*) #1

declare dso_local i32 @vsock_remove_pending(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @vmci_transport_release_pending(%struct.sock*) #1

declare dso_local i32 @vmci_transport_reply_reset(%struct.vmci_transport_packet*) #1

declare dso_local %struct.sock* @__vsock_create(i32, i32*, %struct.sock*, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @vsock_addr_init(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i64 @vmci_transport_old_proto_override(i32*) #1

declare dso_local i64 @vmci_transport_proto_to_notify_struct(%struct.sock*, i32*, i32) #1

declare dso_local i32 @vmci_transport_send_negotiate(%struct.sock*, i8*) #1

declare dso_local i32 @vmci_transport_new_proto_supported_versions(...) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @vmci_transport_send_negotiate2(%struct.sock*, i8*, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @vmci_transport_error_to_vsock_error(i32) #1

declare dso_local i32 @vsock_add_pending(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
