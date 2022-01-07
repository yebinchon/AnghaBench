; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify.c_vmci_transport_notify_pkt_handle_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify.c_vmci_transport_notify_pkt_handle_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.vmci_transport_packet = type { i32 }
%struct.sockaddr_vm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.vmci_transport_packet*, i32, %struct.sockaddr_vm*, %struct.sockaddr_vm*, i32*)* @vmci_transport_notify_pkt_handle_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_transport_notify_pkt_handle_pkt(%struct.sock* %0, %struct.vmci_transport_packet* %1, i32 %2, %struct.sockaddr_vm* %3, %struct.sockaddr_vm* %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.vmci_transport_packet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_vm*, align 8
  %11 = alloca %struct.sockaddr_vm*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.vmci_transport_packet* %1, %struct.vmci_transport_packet** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sockaddr_vm* %3, %struct.sockaddr_vm** %10, align 8
  store %struct.sockaddr_vm* %4, %struct.sockaddr_vm** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %8, align 8
  %15 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %45 [
    i32 128, label %17
    i32 131, label %24
    i32 129, label %31
    i32 130, label %38
  ]

17:                                               ; preds = %6
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %10, align 8
  %22 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %23 = call i32 @vmci_transport_handle_wrote(%struct.sock* %18, %struct.vmci_transport_packet* %19, i32 %20, %struct.sockaddr_vm* %21, %struct.sockaddr_vm* %22)
  store i32 1, i32* %13, align 4
  br label %45

24:                                               ; preds = %6
  %25 = load %struct.sock*, %struct.sock** %7, align 8
  %26 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %10, align 8
  %29 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %30 = call i32 @vmci_transport_handle_read(%struct.sock* %25, %struct.vmci_transport_packet* %26, i32 %27, %struct.sockaddr_vm* %28, %struct.sockaddr_vm* %29)
  store i32 1, i32* %13, align 4
  br label %45

31:                                               ; preds = %6
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %10, align 8
  %36 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %37 = call i32 @vmci_transport_handle_waiting_write(%struct.sock* %32, %struct.vmci_transport_packet* %33, i32 %34, %struct.sockaddr_vm* %35, %struct.sockaddr_vm* %36)
  store i32 1, i32* %13, align 4
  br label %45

38:                                               ; preds = %6
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %10, align 8
  %43 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %11, align 8
  %44 = call i32 @vmci_transport_handle_waiting_read(%struct.sock* %39, %struct.vmci_transport_packet* %40, i32 %41, %struct.sockaddr_vm* %42, %struct.sockaddr_vm* %43)
  store i32 1, i32* %13, align 4
  br label %45

45:                                               ; preds = %6, %38, %31, %24, %17
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %12, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @vmci_transport_handle_wrote(%struct.sock*, %struct.vmci_transport_packet*, i32, %struct.sockaddr_vm*, %struct.sockaddr_vm*) #1

declare dso_local i32 @vmci_transport_handle_read(%struct.sock*, %struct.vmci_transport_packet*, i32, %struct.sockaddr_vm*, %struct.sockaddr_vm*) #1

declare dso_local i32 @vmci_transport_handle_waiting_write(%struct.sock*, %struct.vmci_transport_packet*, i32, %struct.sockaddr_vm*, %struct.sockaddr_vm*) #1

declare dso_local i32 @vmci_transport_handle_waiting_read(%struct.sock*, %struct.vmci_transport_packet*, i32, %struct.sockaddr_vm*, %struct.sockaddr_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
