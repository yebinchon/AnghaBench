; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_send_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_send_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.vmci_transport_packet = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_vm = type { i32 }
%struct.vsock_sock = type { %struct.sockaddr_vm, %struct.sockaddr_vm }

@VMCI_TRANSPORT_PACKET_TYPE_RST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VSOCK_PROTO_INVALID = common dso_local global i32 0, align 4
@VMCI_INVALID_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.vmci_transport_packet*)* @vmci_transport_send_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_send_reset(%struct.sock* %0, %struct.vmci_transport_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.vmci_transport_packet*, align 8
  %6 = alloca %struct.sockaddr_vm*, align 8
  %7 = alloca %struct.sockaddr_vm, align 4
  %8 = alloca %struct.vsock_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.vmci_transport_packet* %1, %struct.vmci_transport_packet** %5, align 8
  %9 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %10 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VMCI_TRANSPORT_PACKET_TYPE_RST, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %16)
  store %struct.vsock_sock* %17, %struct.vsock_sock** %8, align 8
  %18 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %19 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %18, i32 0, i32 0
  %20 = call i64 @vsock_addr_bound(%struct.sockaddr_vm* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %15
  %26 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %27 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %26, i32 0, i32 1
  %28 = call i64 @vsock_addr_bound(%struct.sockaddr_vm* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %32 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %31, i32 0, i32 1
  store %struct.sockaddr_vm* %32, %struct.sockaddr_vm** %6, align 8
  br label %43

33:                                               ; preds = %25
  %34 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %35 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %40 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @vsock_addr_init(%struct.sockaddr_vm* %7, i32 %38, i32 %41)
  store %struct.sockaddr_vm* %7, %struct.sockaddr_vm** %6, align 8
  br label %43

43:                                               ; preds = %33, %30
  %44 = load %struct.vsock_sock*, %struct.vsock_sock** %8, align 8
  %45 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %44, i32 0, i32 0
  %46 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %6, align 8
  %47 = load i64, i64* @VMCI_TRANSPORT_PACKET_TYPE_RST, align 8
  %48 = load i32, i32* @VSOCK_PROTO_INVALID, align 4
  %49 = load i32, i32* @VMCI_INVALID_HANDLE, align 4
  %50 = call i32 @vmci_transport_alloc_send_control_pkt(%struct.sockaddr_vm* %45, %struct.sockaddr_vm* %46, i64 %47, i32 0, i32 0, i32* null, i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %43, %22, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i64 @vsock_addr_bound(%struct.sockaddr_vm*) #1

declare dso_local i32 @vsock_addr_init(%struct.sockaddr_vm*, i32, i32) #1

declare dso_local i32 @vmci_transport_alloc_send_control_pkt(%struct.sockaddr_vm*, %struct.sockaddr_vm*, i64, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
