; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_stream_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_stream_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_datagram = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.sock = type { i64 }
%struct.sockaddr_vm = type { i32 }
%struct.vmci_transport_packet = type { i64, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.vsock_sock = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.vmci_transport_recv_pkt_info = type { i32, i32, %struct.sock* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.sock*, %struct.vmci_transport_packet*, i32, %struct.sockaddr_vm*, %struct.sockaddr_vm*, i32*)* }

@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_ACCESS = common dso_local global i32 0, align 4
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unable to send reset\0A\00", align 1
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VMCI_TRANSPORT_PACKET_TYPE_MAX = common dso_local global i64 0, align 8
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@vmci_transport_recv_pkt_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vmci_datagram*)* @vmci_transport_recv_stream_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_recv_stream_cb(i8* %0, %struct.vmci_datagram* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vmci_datagram*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sockaddr_vm, align 4
  %8 = alloca %struct.sockaddr_vm, align 4
  %9 = alloca %struct.vmci_transport_packet*, align 8
  %10 = alloca %struct.vsock_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vmci_transport_recv_pkt_info*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.vmci_datagram* %1, %struct.vmci_datagram** %5, align 8
  store %struct.sock* null, %struct.sock** %6, align 8
  %14 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %14, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %16 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @vmci_transport_stream_allow(i32 %18, i32 -1)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %23 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @vmci_transport_peer_rid(i32 %25)
  %27 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %28 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %21, %2
  %33 = load i32, i32* @VMCI_ERROR_NO_ACCESS, align 4
  store i32 %33, i32* %3, align 4
  br label %170

34:                                               ; preds = %21
  %35 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %36 = call i32 @VMCI_DG_SIZE(%struct.vmci_datagram* %35)
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 24
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %40, i32* %3, align 4
  br label %170

41:                                               ; preds = %34
  %42 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %43 = bitcast %struct.vmci_datagram* %42 to %struct.vmci_transport_packet*
  store %struct.vmci_transport_packet* %43, %struct.vmci_transport_packet** %9, align 8
  %44 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %45 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %50 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @vsock_addr_init(%struct.sockaddr_vm* %8, i32 %48, i32 %51)
  %53 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %54 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %59 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @vsock_addr_init(%struct.sockaddr_vm* %7, i32 %57, i32 %60)
  %62 = call %struct.sock* @vsock_find_connected_socket(%struct.sockaddr_vm* %8, %struct.sockaddr_vm* %7)
  store %struct.sock* %62, %struct.sock** %6, align 8
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = icmp ne %struct.sock* %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %41
  %66 = call %struct.sock* @vsock_find_bound_socket(%struct.sockaddr_vm* %7)
  store %struct.sock* %66, %struct.sock** %6, align 8
  %67 = load %struct.sock*, %struct.sock** %6, align 8
  %68 = icmp ne %struct.sock* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %71 = call i64 @vmci_transport_send_reset_bh(%struct.sockaddr_vm* %7, %struct.sockaddr_vm* %8, %struct.vmci_transport_packet* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %76, i32* %12, align 4
  br label %162

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %41
  %79 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %80 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @VMCI_TRANSPORT_PACKET_TYPE_MAX, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = call i32 @vmci_transport_send_invalid_bh(%struct.sockaddr_vm* %7, %struct.sockaddr_vm* %8)
  %86 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %86, i32* %12, align 4
  br label %162

87:                                               ; preds = %78
  %88 = load %struct.sock*, %struct.sock** %6, align 8
  %89 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %88)
  store %struct.vsock_sock* %89, %struct.vsock_sock** %10, align 8
  %90 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %91 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %92 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @vmci_transport_allow_dgram(%struct.vsock_sock* %90, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %87
  %99 = load i32, i32* @VMCI_ERROR_NO_ACCESS, align 4
  store i32 %99, i32* %12, align 4
  br label %162

100:                                              ; preds = %87
  %101 = load %struct.sock*, %struct.sock** %6, align 8
  %102 = call i32 @bh_lock_sock(%struct.sock* %101)
  %103 = load %struct.sock*, %struct.sock** %6, align 8
  %104 = call i32 @sock_owned_by_user(%struct.sock* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %7, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %110 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load %struct.sock*, %struct.sock** %6, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TCP_ESTABLISHED, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %106
  %118 = load %struct.vsock_sock*, %struct.vsock_sock** %10, align 8
  %119 = call %struct.TYPE_14__* @vmci_trans(%struct.vsock_sock* %118)
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32 (%struct.sock*, %struct.vmci_transport_packet*, i32, %struct.sockaddr_vm*, %struct.sockaddr_vm*, i32*)*, i32 (%struct.sock*, %struct.vmci_transport_packet*, i32, %struct.sockaddr_vm*, %struct.sockaddr_vm*, i32*)** %122, align 8
  %124 = load %struct.sock*, %struct.sock** %6, align 8
  %125 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %126 = call i32 %123(%struct.sock* %124, %struct.vmci_transport_packet* %125, i32 1, %struct.sockaddr_vm* %7, %struct.sockaddr_vm* %8, i32* %11)
  br label %127

127:                                              ; preds = %117, %106
  br label %128

128:                                              ; preds = %127, %100
  %129 = load %struct.sock*, %struct.sock** %6, align 8
  %130 = call i32 @bh_unlock_sock(%struct.sock* %129)
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %161, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* @GFP_ATOMIC, align 4
  %135 = call %struct.vmci_transport_recv_pkt_info* @kmalloc(i32 16, i32 %134)
  store %struct.vmci_transport_recv_pkt_info* %135, %struct.vmci_transport_recv_pkt_info** %13, align 8
  %136 = load %struct.vmci_transport_recv_pkt_info*, %struct.vmci_transport_recv_pkt_info** %13, align 8
  %137 = icmp ne %struct.vmci_transport_recv_pkt_info* %136, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %133
  %139 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %140 = call i64 @vmci_transport_send_reset_bh(%struct.sockaddr_vm* %7, %struct.sockaddr_vm* %8, %struct.vmci_transport_packet* %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %145, i32* %12, align 4
  br label %162

146:                                              ; preds = %133
  %147 = load %struct.sock*, %struct.sock** %6, align 8
  %148 = load %struct.vmci_transport_recv_pkt_info*, %struct.vmci_transport_recv_pkt_info** %13, align 8
  %149 = getelementptr inbounds %struct.vmci_transport_recv_pkt_info, %struct.vmci_transport_recv_pkt_info* %148, i32 0, i32 2
  store %struct.sock* %147, %struct.sock** %149, align 8
  %150 = load %struct.vmci_transport_recv_pkt_info*, %struct.vmci_transport_recv_pkt_info** %13, align 8
  %151 = getelementptr inbounds %struct.vmci_transport_recv_pkt_info, %struct.vmci_transport_recv_pkt_info* %150, i32 0, i32 1
  %152 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %153 = call i32 @memcpy(i32* %151, %struct.vmci_transport_packet* %152, i32 4)
  %154 = load %struct.vmci_transport_recv_pkt_info*, %struct.vmci_transport_recv_pkt_info** %13, align 8
  %155 = getelementptr inbounds %struct.vmci_transport_recv_pkt_info, %struct.vmci_transport_recv_pkt_info* %154, i32 0, i32 0
  %156 = load i32, i32* @vmci_transport_recv_pkt_work, align 4
  %157 = call i32 @INIT_WORK(i32* %155, i32 %156)
  %158 = load %struct.vmci_transport_recv_pkt_info*, %struct.vmci_transport_recv_pkt_info** %13, align 8
  %159 = getelementptr inbounds %struct.vmci_transport_recv_pkt_info, %struct.vmci_transport_recv_pkt_info* %158, i32 0, i32 0
  %160 = call i32 @schedule_work(i32* %159)
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %161

161:                                              ; preds = %146, %128
  br label %162

162:                                              ; preds = %161, %144, %98, %84, %75
  %163 = load %struct.sock*, %struct.sock** %6, align 8
  %164 = icmp ne %struct.sock* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.sock*, %struct.sock** %6, align 8
  %167 = call i32 @sock_put(%struct.sock* %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %39, %32
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @vmci_transport_stream_allow(i32, i32) #1

declare dso_local i64 @vmci_transport_peer_rid(i32) #1

declare dso_local i32 @VMCI_DG_SIZE(%struct.vmci_datagram*) #1

declare dso_local i32 @vsock_addr_init(%struct.sockaddr_vm*, i32, i32) #1

declare dso_local %struct.sock* @vsock_find_connected_socket(%struct.sockaddr_vm*, %struct.sockaddr_vm*) #1

declare dso_local %struct.sock* @vsock_find_bound_socket(%struct.sockaddr_vm*) #1

declare dso_local i64 @vmci_transport_send_reset_bh(%struct.sockaddr_vm*, %struct.sockaddr_vm*, %struct.vmci_transport_packet*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @vmci_transport_send_invalid_bh(%struct.sockaddr_vm*, %struct.sockaddr_vm*) #1

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vmci_transport_allow_dgram(%struct.vsock_sock*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local %struct.TYPE_14__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local %struct.vmci_transport_recv_pkt_info* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.vmci_transport_packet*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
