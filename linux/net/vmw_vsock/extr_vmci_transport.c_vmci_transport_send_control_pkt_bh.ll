; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_send_control_pkt_bh.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_send_control_pkt_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_transport_packet = type { i32 }
%struct.sockaddr_vm = type { i32 }
%struct.vmci_transport_waiting_info = type { i32 }
%struct.vmci_handle = type { i32 }

@vmci_transport_send_control_pkt_bh.pkt = internal global %struct.vmci_transport_packet zeroinitializer, align 4
@VSOCK_PROTO_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_vm*, %struct.sockaddr_vm*, i32, i32, i32, %struct.vmci_transport_waiting_info*, i32)* @vmci_transport_send_control_pkt_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_send_control_pkt_bh(%struct.sockaddr_vm* %0, %struct.sockaddr_vm* %1, i32 %2, i32 %3, i32 %4, %struct.vmci_transport_waiting_info* %5, i32 %6) #0 {
  %8 = alloca %struct.vmci_handle, align 4
  %9 = alloca %struct.sockaddr_vm*, align 8
  %10 = alloca %struct.sockaddr_vm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmci_transport_waiting_info*, align 8
  %15 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %8, i32 0, i32 0
  store i32 %6, i32* %15, align 4
  store %struct.sockaddr_vm* %0, %struct.sockaddr_vm** %9, align 8
  store %struct.sockaddr_vm* %1, %struct.sockaddr_vm** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.vmci_transport_waiting_info* %5, %struct.vmci_transport_waiting_info** %14, align 8
  %16 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %9, align 8
  %17 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.vmci_transport_waiting_info*, %struct.vmci_transport_waiting_info** %14, align 8
  %22 = load i32, i32* @VSOCK_PROTO_INVALID, align 4
  %23 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__vmci_transport_send_control_pkt(%struct.vmci_transport_packet* @vmci_transport_send_control_pkt_bh.pkt, %struct.sockaddr_vm* %16, %struct.sockaddr_vm* %17, i32 %18, i32 %19, i32 %20, %struct.vmci_transport_waiting_info* %21, i32 %22, i32 %24, i32 0)
  ret i32 %25
}

declare dso_local i32 @__vmci_transport_send_control_pkt(%struct.vmci_transport_packet*, %struct.sockaddr_vm*, %struct.sockaddr_vm*, i32, i32, i32, %struct.vmci_transport_waiting_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
