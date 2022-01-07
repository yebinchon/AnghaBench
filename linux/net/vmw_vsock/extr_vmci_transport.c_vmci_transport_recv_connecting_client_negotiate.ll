; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_connecting_client_negotiate.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_connecting_client_negotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.sock = type { i32 }
%struct.vmci_transport_packet = type { i64, %struct.TYPE_13__, i32, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.vsock_sock = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.vmci_qp = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i64, %struct.TYPE_14__*, i64, %struct.vmci_qp*, %struct.vmci_handle }
%struct.TYPE_14__ = type { i32 (%struct.sock*)* }

@VMCI_INVALID_HANDLE = common dso_local global %struct.vmci_handle zeroinitializer, align 4
@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VMADDR_CID_ANY = common dso_local global i64 0, align 8
@VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE = common dso_local global i64 0, align 8
@VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE2 = common dso_local global i64 0, align 8
@VSOCK_PROTO_INVALID = common dso_local global i32 0, align 4
@VMCI_EVENT_QP_PEER_DETACH = common dso_local global i32 0, align 4
@vmci_transport_peer_detach_cb = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCI_QPFLAG_LOCAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.vmci_transport_packet*)* @vmci_transport_recv_connecting_client_negotiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_recv_connecting_client_negotiate(%struct.sock* %0, %struct.vmci_transport_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.vmci_transport_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vsock_sock*, align 8
  %8 = alloca %struct.vmci_handle, align 4
  %9 = alloca %struct.vmci_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.vmci_transport_packet* %1, %struct.vmci_transport_packet** %5, align 8
  store i32 1, i32* %13, align 4
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %16)
  store %struct.vsock_sock* %17, %struct.vsock_sock** %7, align 8
  %18 = bitcast %struct.vmci_handle* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.vmci_handle* @VMCI_INVALID_HANDLE to i8*), i64 4, i1 false)
  %19 = load i64, i64* @VMCI_INVALID_ID, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %21 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %23 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %25 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %29 = call %struct.TYPE_15__* @vmci_trans(%struct.vsock_sock* %28)
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %27, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %2
  %34 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %35 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %39 = call %struct.TYPE_15__* @vmci_trans(%struct.vsock_sock* %38)
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33, %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %196

46:                                               ; preds = %33
  %47 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %48 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VMADDR_CID_ANY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %55 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %60 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %53, %46
  %63 = call i64 @vmci_transport_old_proto_override(i32* %14)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %13, align 4
  br label %83

67:                                               ; preds = %62
  %68 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %69 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 1, i32* %13, align 4
  br label %82

74:                                               ; preds = %67
  %75 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %76 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE2, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %80, %74
  br label %82

82:                                               ; preds = %81, %73
  br label %83

83:                                               ; preds = %82, %65
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @VSOCK_PROTO_INVALID, align 4
  store i32 %87, i32* %15, align 4
  br label %92

88:                                               ; preds = %83
  %89 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %90 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %88, %86
  %93 = load %struct.sock*, %struct.sock** %4, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @vmci_transport_proto_to_notify_struct(%struct.sock* %93, i32* %15, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %196

100:                                              ; preds = %92
  %101 = load i32, i32* @VMCI_EVENT_QP_PEER_DETACH, align 4
  %102 = load i32, i32* @vmci_transport_peer_detach_cb, align 4
  %103 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %104 = call %struct.TYPE_15__* @vmci_trans(%struct.vsock_sock* %103)
  %105 = call i32 @vmci_event_subscribe(i32 %101, i32 %102, %struct.TYPE_15__* %104, i64* %10)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @VMCI_SUCCESS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @vmci_transport_error_to_vsock_error(i32 %110)
  store i32 %111, i32* %6, align 4
  br label %196

112:                                              ; preds = %100
  %113 = bitcast %struct.vmci_handle* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %113, i8* align 4 bitcast (%struct.vmci_handle* @VMCI_INVALID_HANDLE to i8*), i64 4, i1 false)
  %114 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %115 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %119 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %117, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %112
  %127 = load i64, i64* @VMCI_QPFLAG_LOCAL, align 8
  br label %129

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i64 [ %127, %126 ], [ 0, %128 ]
  store i64 %130, i64* %12, align 8
  %131 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %132 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %136 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %140 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %145 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %146 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @vmci_transport_is_trusted(%struct.vsock_sock* %144, i64 %148)
  %150 = call i32 @vmci_transport_queue_pair_alloc(%struct.vmci_qp** %9, %struct.vmci_handle* %8, i64 %134, i64 %138, i64 %142, i64 %143, i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %129
  br label %196

154:                                              ; preds = %129
  %155 = load %struct.sock*, %struct.sock** %4, align 8
  %156 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %8, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @vmci_transport_send_qp_offer(%struct.sock* %155, i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @vmci_transport_error_to_vsock_error(i32 %162)
  store i32 %163, i32* %6, align 4
  br label %196

164:                                              ; preds = %154
  %165 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %166 = call %struct.TYPE_15__* @vmci_trans(%struct.vsock_sock* %165)
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 7
  %168 = bitcast %struct.vmci_handle* %167 to i8*
  %169 = bitcast %struct.vmci_handle* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 4 %169, i64 4, i1 false)
  %170 = load %struct.vmci_qp*, %struct.vmci_qp** %9, align 8
  %171 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %172 = call %struct.TYPE_15__* @vmci_trans(%struct.vsock_sock* %171)
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 6
  store %struct.vmci_qp* %170, %struct.vmci_qp** %173, align 8
  %174 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %175 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %179 = call %struct.TYPE_15__* @vmci_trans(%struct.vsock_sock* %178)
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  store i64 %177, i64* %180, align 8
  %181 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %182 = call %struct.TYPE_15__* @vmci_trans(%struct.vsock_sock* %181)
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  store i64 %177, i64* %183, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %186 = call %struct.TYPE_15__* @vmci_trans(%struct.vsock_sock* %185)
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 5
  store i64 %184, i64* %187, align 8
  %188 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %189 = call %struct.TYPE_15__* @vmci_trans(%struct.vsock_sock* %188)
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %192, align 8
  %194 = load %struct.sock*, %struct.sock** %4, align 8
  %195 = call i32 %193(%struct.sock* %194)
  store i32 0, i32* %3, align 4
  br label %212

196:                                              ; preds = %161, %153, %109, %97, %43
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* @VMCI_INVALID_ID, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i64, i64* %10, align 8
  %202 = call i32 @vmci_event_unsubscribe(i64 %201)
  br label %203

203:                                              ; preds = %200, %196
  %204 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %8, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @vmci_handle_is_invalid(i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %203
  %209 = call i32 @vmci_qpair_detach(%struct.vmci_qp** %9)
  br label %210

210:                                              ; preds = %208, %203
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %210, %164
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_15__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i64 @vmci_transport_old_proto_override(i32*) #1

declare dso_local i32 @vmci_transport_proto_to_notify_struct(%struct.sock*, i32*, i32) #1

declare dso_local i32 @vmci_event_subscribe(i32, i32, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @vmci_transport_error_to_vsock_error(i32) #1

declare dso_local i32 @vmci_transport_queue_pair_alloc(%struct.vmci_qp**, %struct.vmci_handle*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @vmci_transport_is_trusted(%struct.vsock_sock*, i64) #1

declare dso_local i32 @vmci_transport_send_qp_offer(%struct.sock*, i32) #1

declare dso_local i32 @vmci_event_unsubscribe(i64) #1

declare dso_local i32 @vmci_handle_is_invalid(i32) #1

declare dso_local i32 @vmci_qpair_detach(%struct.vmci_qp**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
