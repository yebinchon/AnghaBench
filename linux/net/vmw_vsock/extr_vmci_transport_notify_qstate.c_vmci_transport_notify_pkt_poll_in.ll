; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify_qstate.c_vmci_transport_notify_pkt_poll_in.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport_notify_qstate.c_vmci_transport_notify_pkt_poll_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.vsock_sock = type { i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64, i32*)* @vmci_transport_notify_pkt_poll_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_notify_pkt_poll_in(%struct.sock* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vsock_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %8)
  store %struct.vsock_sock* %9, %struct.vsock_sock** %7, align 8
  %10 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %11 = call i64 @vsock_stream_has_data(%struct.vsock_sock* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  store i32 1, i32* %14, align 4
  br label %26

15:                                               ; preds = %3
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCP_ESTABLISHED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call i32 @vsock_block_update_write_window(%struct.sock* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32*, i32** %6, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %13
  ret i32 0
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i64 @vsock_stream_has_data(%struct.vsock_sock*) #1

declare dso_local i32 @vsock_block_update_write_window(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
