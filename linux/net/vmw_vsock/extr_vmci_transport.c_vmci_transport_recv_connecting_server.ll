; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_connecting_server.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_connecting_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 (%struct.sock*)* }
%struct.vmci_transport_packet = type { i32, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.vmci_handle }
%struct.vmci_handle = type { i32 }
%struct.vsock_sock = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.vmci_qp = type { i32 }
%struct.TYPE_13__ = type { %struct.vmci_qp*, %struct.vmci_handle, i32, i32, i32 }

@VMCI_INVALID_ID = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VMCI_TRANSPORT_PACKET_TYPE_RST = common dso_local global i32 0, align 4
@VMCI_EVENT_QP_PEER_DETACH = common dso_local global i32 0, align 4
@vmci_transport_peer_detach_cb = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCI_QPFLAG_ATTACH_ONLY = common dso_local global i32 0, align 4
@VMCI_QPFLAG_LOCAL = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Could not send attach\0A\00", align 1
@TCP_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sock*, %struct.vmci_transport_packet*)* @vmci_transport_recv_connecting_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_recv_connecting_server(%struct.sock* %0, %struct.sock* %1, %struct.vmci_transport_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.vmci_transport_packet*, align 8
  %8 = alloca %struct.vsock_sock*, align 8
  %9 = alloca %struct.vmci_handle, align 4
  %10 = alloca %struct.vmci_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.vmci_transport_packet* %2, %struct.vmci_transport_packet** %7, align 8
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %16)
  store %struct.vsock_sock* %17, %struct.vsock_sock** %8, align 8
  %18 = load i32, i32* @VMCI_INVALID_ID, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %7, align 8
  %20 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %38 [
    i32 128, label %22
  ]

22:                                               ; preds = %3
  %23 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %7, align 8
  %24 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vmci_handle_is_invalid(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %7, align 8
  %33 = call i32 @vmci_transport_send_reset(%struct.sock* %31, %struct.vmci_transport_packet* %32)
  %34 = load i32, i32* @EPROTO, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %14, align 4
  br label %174

37:                                               ; preds = %22
  br label %54

38:                                               ; preds = %3
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %7, align 8
  %41 = call i32 @vmci_transport_send_reset(%struct.sock* %39, %struct.vmci_transport_packet* %40)
  %42 = load i32, i32* @EPROTO, align 4
  store i32 %42, i32* %15, align 4
  %43 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %7, align 8
  %44 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VMCI_TRANSPORT_PACKET_TYPE_RST, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ 0, %48 ], [ %51, %49 ]
  store i32 %53, i32* %14, align 4
  br label %174

54:                                               ; preds = %37
  %55 = load i32, i32* @VMCI_EVENT_QP_PEER_DETACH, align 4
  %56 = load i32, i32* @vmci_transport_peer_detach_cb, align 4
  %57 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %58 = call %struct.TYPE_13__* @vmci_trans(%struct.vsock_sock* %57)
  %59 = call i32 @vmci_event_subscribe(i32 %55, i32 %56, %struct.TYPE_13__* %58, i32* %13)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @VMCI_SUCCESS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.sock*, %struct.sock** %6, align 8
  %65 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %7, align 8
  %66 = call i32 @vmci_transport_send_reset(%struct.sock* %64, %struct.vmci_transport_packet* %65)
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @vmci_transport_error_to_vsock_error(i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %15, align 4
  br label %174

71:                                               ; preds = %54
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %74 = call %struct.TYPE_13__* @vmci_trans(%struct.vsock_sock* %73)
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 4
  %76 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %7, align 8
  %77 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = bitcast %struct.vmci_handle* %9 to i8*
  %80 = bitcast %struct.vmci_handle* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 4, i1 false)
  %81 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %82 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %86 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %84, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* @VMCI_QPFLAG_ATTACH_ONLY, align 4
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %71
  %95 = load i32, i32* @VMCI_QPFLAG_LOCAL, align 4
  br label %97

96:                                               ; preds = %71
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %12, align 4
  %101 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %102 = call %struct.TYPE_13__* @vmci_trans(%struct.vsock_sock* %101)
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %106 = call %struct.TYPE_13__* @vmci_trans(%struct.vsock_sock* %105)
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %7, align 8
  %110 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %116 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %117 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @vmci_transport_is_trusted(%struct.vsock_sock* %115, i64 %119)
  %121 = call i32 @vmci_transport_queue_pair_alloc(%struct.vmci_qp** %10, %struct.vmci_handle* %9, i32 %104, i32 %108, i32 %113, i32 %114, i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %97
  %125 = load %struct.sock*, %struct.sock** %6, align 8
  %126 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %7, align 8
  %127 = call i32 @vmci_transport_send_reset(%struct.sock* %125, %struct.vmci_transport_packet* %126)
  %128 = load i32, i32* %14, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %15, align 4
  br label %174

130:                                              ; preds = %97
  %131 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %132 = call %struct.TYPE_13__* @vmci_trans(%struct.vsock_sock* %131)
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = bitcast %struct.vmci_handle* %133 to i8*
  %135 = bitcast %struct.vmci_handle* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 4 %135, i64 4, i1 false)
  %136 = load %struct.vmci_qp*, %struct.vmci_qp** %10, align 8
  %137 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %138 = call %struct.TYPE_13__* @vmci_trans(%struct.vsock_sock* %137)
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  store %struct.vmci_qp* %136, %struct.vmci_qp** %139, align 8
  %140 = load i32, i32* @TCP_ESTABLISHED, align 4
  %141 = load %struct.sock*, %struct.sock** %6, align 8
  %142 = getelementptr inbounds %struct.sock, %struct.sock* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %144 = call i32 @vsock_insert_connected(%struct.vsock_sock* %143)
  %145 = load %struct.sock*, %struct.sock** %6, align 8
  %146 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %9, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @vmci_transport_send_attach(%struct.sock* %145, i32 %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %130
  %152 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %153 = call i32 @vsock_remove_connected(%struct.vsock_sock* %152)
  %154 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %155 = load %struct.sock*, %struct.sock** %6, align 8
  %156 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %7, align 8
  %157 = call i32 @vmci_transport_send_reset(%struct.sock* %155, %struct.vmci_transport_packet* %156)
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @vmci_transport_error_to_vsock_error(i32 %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %15, align 4
  br label %174

162:                                              ; preds = %130
  %163 = load %struct.sock*, %struct.sock** %5, align 8
  %164 = load %struct.sock*, %struct.sock** %6, align 8
  %165 = call i32 @vsock_remove_pending(%struct.sock* %163, %struct.sock* %164)
  %166 = load %struct.sock*, %struct.sock** %5, align 8
  %167 = load %struct.sock*, %struct.sock** %6, align 8
  %168 = call i32 @vsock_enqueue_accept(%struct.sock* %166, %struct.sock* %167)
  %169 = load %struct.sock*, %struct.sock** %5, align 8
  %170 = getelementptr inbounds %struct.sock, %struct.sock* %169, i32 0, i32 2
  %171 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %170, align 8
  %172 = load %struct.sock*, %struct.sock** %5, align 8
  %173 = call i32 %171(%struct.sock* %172)
  store i32 0, i32* %4, align 4
  br label %184

174:                                              ; preds = %151, %124, %63, %52, %30
  %175 = load i32, i32* %15, align 4
  %176 = load %struct.sock*, %struct.sock** %6, align 8
  %177 = getelementptr inbounds %struct.sock, %struct.sock* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @TCP_CLOSE, align 4
  %179 = load %struct.sock*, %struct.sock** %6, align 8
  %180 = getelementptr inbounds %struct.sock, %struct.sock* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.sock*, %struct.sock** %6, align 8
  %182 = call i32 @sock_put(%struct.sock* %181)
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %174, %162
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vmci_handle_is_invalid(i32) #1

declare dso_local i32 @vmci_transport_send_reset(%struct.sock*, %struct.vmci_transport_packet*) #1

declare dso_local i32 @vmci_event_subscribe(i32, i32, %struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_13__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i32 @vmci_transport_error_to_vsock_error(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmci_transport_queue_pair_alloc(%struct.vmci_qp**, %struct.vmci_handle*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vmci_transport_is_trusted(%struct.vsock_sock*, i64) #1

declare dso_local i32 @vsock_insert_connected(%struct.vsock_sock*) #1

declare dso_local i32 @vmci_transport_send_attach(%struct.sock*, i32) #1

declare dso_local i32 @vsock_remove_connected(%struct.vsock_sock*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @vsock_remove_pending(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @vsock_enqueue_accept(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
