; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_connecting_client_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_connecting_client_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.vmci_transport_packet = type { i32 }
%struct.vsock_sock = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.vmci_transport_packet*)* @vmci_transport_recv_connecting_client_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_recv_connecting_client_invalid(%struct.sock* %0, %struct.vmci_transport_packet* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.vmci_transport_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsock_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.vmci_transport_packet* %1, %struct.vmci_transport_packet** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %7)
  store %struct.vsock_sock* %8, %struct.vsock_sock** %6, align 8
  %9 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %10 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %15 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %17 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %20 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vmci_transport_send_conn_request(%struct.sock* %18, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @vmci_transport_error_to_vsock_error(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vmci_transport_send_conn_request(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i32 @vmci_transport_error_to_vsock_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
