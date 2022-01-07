; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c___vmci_transport_send_control_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c___vmci_transport_send_control_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_transport_packet = type { i32 }
%struct.sockaddr_vm = type { i32 }
%struct.vmci_transport_waiting_info = type { i32 }
%struct.vmci_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_transport_packet*, %struct.sockaddr_vm*, %struct.sockaddr_vm*, i32, i32, i32, %struct.vmci_transport_waiting_info*, i32, i32, i32)* @__vmci_transport_send_control_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vmci_transport_send_control_pkt(%struct.vmci_transport_packet* %0, %struct.sockaddr_vm* %1, %struct.sockaddr_vm* %2, i32 %3, i32 %4, i32 %5, %struct.vmci_transport_waiting_info* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.vmci_handle, align 4
  %13 = alloca %struct.vmci_transport_packet*, align 8
  %14 = alloca %struct.sockaddr_vm*, align 8
  %15 = alloca %struct.sockaddr_vm*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vmci_transport_waiting_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %12, i32 0, i32 0
  store i32 %8, i32* %23, align 4
  store %struct.vmci_transport_packet* %0, %struct.vmci_transport_packet** %13, align 8
  store %struct.sockaddr_vm* %1, %struct.sockaddr_vm** %14, align 8
  store %struct.sockaddr_vm* %2, %struct.sockaddr_vm** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store %struct.vmci_transport_waiting_info* %6, %struct.vmci_transport_waiting_info** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %24 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %13, align 8
  %25 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %14, align 8
  %26 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %15, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %18, align 4
  %30 = load %struct.vmci_transport_waiting_info*, %struct.vmci_transport_waiting_info** %19, align 8
  %31 = load i32, i32* %20, align 4
  %32 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %12, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vmci_transport_packet_init(%struct.vmci_transport_packet* %24, %struct.sockaddr_vm* %25, %struct.sockaddr_vm* %26, i32 %27, i32 %28, i32 %29, %struct.vmci_transport_waiting_info* %30, i32 %31, i32 %33)
  %35 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %13, align 8
  %36 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %35, i32 0, i32 0
  %37 = call i32 @vmci_datagram_send(i32* %36)
  store i32 %37, i32* %22, align 4
  %38 = load i32, i32* %21, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %10
  %41 = load i32, i32* %22, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %22, align 4
  %45 = call i32 @vmci_transport_error_to_vsock_error(i32 %44)
  store i32 %45, i32* %11, align 4
  br label %48

46:                                               ; preds = %40, %10
  %47 = load i32, i32* %22, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @vmci_transport_packet_init(%struct.vmci_transport_packet*, %struct.sockaddr_vm*, %struct.sockaddr_vm*, i32, i32, i32, %struct.vmci_transport_waiting_info*, i32, i32) #1

declare dso_local i32 @vmci_datagram_send(i32*) #1

declare dso_local i32 @vmci_transport_error_to_vsock_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
