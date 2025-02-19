; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify_qstate.c_vmci_transport_notify_pkt_recv_pre_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify_qstate.c_vmci_transport_notify_pkt_recv_pre_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.vmci_transport_recv_notify_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64, %struct.vmci_transport_recv_notify_data*)* @vmci_transport_notify_pkt_recv_pre_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_notify_pkt_recv_pre_block(%struct.sock* %0, i64 %1, %struct.vmci_transport_recv_notify_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmci_transport_recv_notify_data*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vmci_transport_recv_notify_data* %2, %struct.vmci_transport_recv_notify_data** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call i32 @vsock_block_update_write_window(%struct.sock* %9)
  %11 = load %struct.vmci_transport_recv_notify_data*, %struct.vmci_transport_recv_notify_data** %7, align 8
  %12 = getelementptr inbounds %struct.vmci_transport_recv_notify_data, %struct.vmci_transport_recv_notify_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call i32 @vmci_transport_send_read_notification(%struct.sock* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %15
  %23 = load %struct.vmci_transport_recv_notify_data*, %struct.vmci_transport_recv_notify_data** %7, align 8
  %24 = getelementptr inbounds %struct.vmci_transport_recv_notify_data, %struct.vmci_transport_recv_notify_data* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @vsock_block_update_write_window(%struct.sock*) #1

declare dso_local i32 @vmci_transport_send_read_notification(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
