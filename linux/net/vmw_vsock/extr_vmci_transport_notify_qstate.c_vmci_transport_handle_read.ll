; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify_qstate.c_vmci_transport_handle_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify_qstate.c_vmci_transport_handle_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)* }
%struct.vmci_transport_packet = type { i32 }
%struct.sockaddr_vm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.vmci_transport_packet*, i32, %struct.sockaddr_vm*, %struct.sockaddr_vm*)* @vmci_transport_handle_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_transport_handle_read(%struct.sock* %0, %struct.vmci_transport_packet* %1, i32 %2, %struct.sockaddr_vm* %3, %struct.sockaddr_vm* %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.vmci_transport_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_vm*, align 8
  %10 = alloca %struct.sockaddr_vm*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.vmci_transport_packet* %1, %struct.vmci_transport_packet** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sockaddr_vm* %3, %struct.sockaddr_vm** %9, align 8
  store %struct.sockaddr_vm* %4, %struct.sockaddr_vm** %10, align 8
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %12, align 8
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call i32 %13(%struct.sock* %14)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
