; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_send_waiting_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_send_waiting_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.vmci_transport_waiting_info = type { i32 }

@VMCI_TRANSPORT_PACKET_TYPE_WAITING_READ = common dso_local global i32 0, align 4
@VSOCK_PROTO_INVALID = common dso_local global i32 0, align 4
@VMCI_INVALID_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_transport_send_waiting_read(%struct.sock* %0, %struct.vmci_transport_waiting_info* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.vmci_transport_waiting_info*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.vmci_transport_waiting_info* %1, %struct.vmci_transport_waiting_info** %4, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = load i32, i32* @VMCI_TRANSPORT_PACKET_TYPE_WAITING_READ, align 4
  %7 = load %struct.vmci_transport_waiting_info*, %struct.vmci_transport_waiting_info** %4, align 8
  %8 = load i32, i32* @VSOCK_PROTO_INVALID, align 4
  %9 = load i32, i32* @VMCI_INVALID_HANDLE, align 4
  %10 = call i32 @vmci_transport_send_control_pkt(%struct.sock* %5, i32 %6, i32 0, i32 0, %struct.vmci_transport_waiting_info* %7, i32 %8, i32 %9)
  ret i32 %10
}

declare dso_local i32 @vmci_transport_send_control_pkt(%struct.sock*, i32, i32, i32, %struct.vmci_transport_waiting_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
