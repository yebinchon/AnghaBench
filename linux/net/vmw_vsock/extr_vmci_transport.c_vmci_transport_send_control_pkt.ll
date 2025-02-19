; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_send_control_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_send_control_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.vmci_transport_waiting_info = type { i32 }
%struct.vmci_handle = type { i32 }
%struct.vsock_sock = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i32, i32, %struct.vmci_transport_waiting_info*, i32, i32)* @vmci_transport_send_control_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_send_control_pkt(%struct.sock* %0, i32 %1, i32 %2, i32 %3, %struct.vmci_transport_waiting_info* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmci_handle, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmci_transport_waiting_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vsock_sock*, align 8
  %17 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %9, i32 0, i32 0
  store i32 %6, i32* %17, align 4
  store %struct.sock* %0, %struct.sock** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.vmci_transport_waiting_info* %4, %struct.vmci_transport_waiting_info** %14, align 8
  store i32 %5, i32* %15, align 4
  %18 = load %struct.sock*, %struct.sock** %10, align 8
  %19 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %18)
  store %struct.vsock_sock* %19, %struct.vsock_sock** %16, align 8
  %20 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %21 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %20, i32 0, i32 1
  %22 = call i32 @vsock_addr_bound(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %48

27:                                               ; preds = %7
  %28 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %29 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %28, i32 0, i32 0
  %30 = call i32 @vsock_addr_bound(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %48

35:                                               ; preds = %27
  %36 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %37 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %36, i32 0, i32 1
  %38 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %39 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.vmci_transport_waiting_info*, %struct.vmci_transport_waiting_info** %14, align 8
  %44 = load i32, i32* %15, align 4
  %45 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vmci_transport_alloc_send_control_pkt(i32* %37, i32* %39, i32 %40, i32 %41, i32 %42, %struct.vmci_transport_waiting_info* %43, i32 %44, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %35, %32, %24
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vsock_addr_bound(i32*) #1

declare dso_local i32 @vmci_transport_alloc_send_control_pkt(i32*, i32*, i32, i32, i32, %struct.vmci_transport_waiting_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
