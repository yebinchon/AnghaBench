; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify.c_vmci_transport_notify_pkt_recv_post_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify.c_vmci_transport_notify_pkt_recv_post_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.vmci_transport_recv_notify_data = type { i64 }
%struct.vsock_sock = type { i32 }

@consume_q_generation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64, i64, i32, %struct.vmci_transport_recv_notify_data*)* @vmci_transport_notify_pkt_recv_post_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_notify_pkt_recv_post_dequeue(%struct.sock* %0, i64 %1, i64 %2, i32 %3, %struct.vmci_transport_recv_notify_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmci_transport_recv_notify_data*, align 8
  %12 = alloca %struct.vsock_sock*, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.vmci_transport_recv_notify_data* %4, %struct.vmci_transport_recv_notify_data** %11, align 8
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %14)
  store %struct.vsock_sock* %15, %struct.vsock_sock** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = call i32 @vmci_transport_send_read_notification(%struct.sock* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %5
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vmci_transport_send_read_notification(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
