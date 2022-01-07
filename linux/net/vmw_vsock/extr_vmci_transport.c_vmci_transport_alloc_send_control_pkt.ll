; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_alloc_send_control_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_alloc_send_control_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_vm = type { i32 }
%struct.vmci_transport_waiting_info = type { i32 }
%struct.vmci_handle = type { i32 }
%struct.vmci_transport_packet = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_vm*, %struct.sockaddr_vm*, i32, i32, i32, %struct.vmci_transport_waiting_info*, i32, i32)* @vmci_transport_alloc_send_control_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_alloc_send_control_pkt(%struct.sockaddr_vm* %0, %struct.sockaddr_vm* %1, i32 %2, i32 %3, i32 %4, %struct.vmci_transport_waiting_info* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmci_handle, align 4
  %11 = alloca %struct.sockaddr_vm*, align 8
  %12 = alloca %struct.sockaddr_vm*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vmci_transport_waiting_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.vmci_transport_packet*, align 8
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %10, i32 0, i32 0
  store i32 %7, i32* %20, align 4
  store %struct.sockaddr_vm* %0, %struct.sockaddr_vm** %11, align 8
  store %struct.sockaddr_vm* %1, %struct.sockaddr_vm** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.vmci_transport_waiting_info* %5, %struct.vmci_transport_waiting_info** %16, align 8
  store i32 %6, i32* %17, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.vmci_transport_packet* @kmalloc(i32 4, i32 %21)
  store %struct.vmci_transport_packet* %22, %struct.vmci_transport_packet** %18, align 8
  %23 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %18, align 8
  %24 = icmp ne %struct.vmci_transport_packet* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %43

28:                                               ; preds = %8
  %29 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %18, align 8
  %30 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %31 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.vmci_transport_waiting_info*, %struct.vmci_transport_waiting_info** %16, align 8
  %36 = load i32, i32* %17, align 4
  %37 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__vmci_transport_send_control_pkt(%struct.vmci_transport_packet* %29, %struct.sockaddr_vm* %30, %struct.sockaddr_vm* %31, i32 %32, i32 %33, i32 %34, %struct.vmci_transport_waiting_info* %35, i32 %36, i32 %38, i32 1)
  store i32 %39, i32* %19, align 4
  %40 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %18, align 8
  %41 = call i32 @kfree(%struct.vmci_transport_packet* %40)
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %28, %25
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local %struct.vmci_transport_packet* @kmalloc(i32, i32) #1

declare dso_local i32 @__vmci_transport_send_control_pkt(%struct.vmci_transport_packet*, %struct.sockaddr_vm*, %struct.sockaddr_vm*, i32, i32, i32, %struct.vmci_transport_waiting_info*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.vmci_transport_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
