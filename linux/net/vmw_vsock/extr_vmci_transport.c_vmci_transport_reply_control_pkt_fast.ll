; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_reply_control_pkt_fast.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_reply_control_pkt_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_transport_packet = type { i64 }
%struct.vmci_transport_waiting_info = type { i32 }
%struct.vmci_handle = type { i32 }
%struct.sockaddr_vm = type { i32 }

@VMCI_TRANSPORT_PACKET_TYPE_RST = common dso_local global i64 0, align 8
@VSOCK_PROTO_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_transport_packet*, i32, i32, i32, %struct.vmci_transport_waiting_info*, i32)* @vmci_transport_reply_control_pkt_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_reply_control_pkt_fast(%struct.vmci_transport_packet* %0, i32 %1, i32 %2, i32 %3, %struct.vmci_transport_waiting_info* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmci_handle, align 4
  %9 = alloca %struct.vmci_transport_packet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vmci_transport_waiting_info*, align 8
  %14 = alloca %struct.vmci_transport_packet, align 8
  %15 = alloca %struct.sockaddr_vm, align 4
  %16 = alloca %struct.sockaddr_vm, align 4
  %17 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %8, i32 0, i32 0
  store i32 %5, i32* %17, align 4
  store %struct.vmci_transport_packet* %0, %struct.vmci_transport_packet** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.vmci_transport_waiting_info* %4, %struct.vmci_transport_waiting_info** %13, align 8
  %18 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %19 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VMCI_TRANSPORT_PACKET_TYPE_RST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %35

24:                                               ; preds = %6
  %25 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %9, align 8
  %26 = call i32 @vmci_transport_packet_get_addresses(%struct.vmci_transport_packet* %25, %struct.sockaddr_vm* %15, %struct.sockaddr_vm* %16)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.vmci_transport_waiting_info*, %struct.vmci_transport_waiting_info** %13, align 8
  %31 = load i32, i32* @VSOCK_PROTO_INVALID, align 4
  %32 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__vmci_transport_send_control_pkt(%struct.vmci_transport_packet* %14, %struct.sockaddr_vm* %15, %struct.sockaddr_vm* %16, i32 %27, i32 %28, i32 %29, %struct.vmci_transport_waiting_info* %30, i32 %31, i32 %33, i32 1)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %24, %23
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @vmci_transport_packet_get_addresses(%struct.vmci_transport_packet*, %struct.sockaddr_vm*, %struct.sockaddr_vm*) #1

declare dso_local i32 @__vmci_transport_send_control_pkt(%struct.vmci_transport_packet*, %struct.sockaddr_vm*, %struct.sockaddr_vm*, i32, i32, i32, %struct.vmci_transport_waiting_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
