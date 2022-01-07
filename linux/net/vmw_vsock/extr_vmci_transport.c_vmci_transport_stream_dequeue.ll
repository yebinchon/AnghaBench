; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_stream_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_stream_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MSG_PEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*, %struct.msghdr*, i64, i32)* @vmci_transport_stream_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_stream_dequeue(%struct.vsock_sock* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsock_sock*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vsock_sock* %0, %struct.vsock_sock** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MSG_PEEK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %16 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @vmci_qpair_peekv(i32 %18, %struct.msghdr* %19, i64 %20, i32 0)
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %4
  %23 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %24 = call %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @vmci_qpair_dequev(i32 %26, %struct.msghdr* %27, i64 %28, i32 0)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %22, %14
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @vmci_qpair_peekv(i32, %struct.msghdr*, i64, i32) #1

declare dso_local %struct.TYPE_2__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i32 @vmci_qpair_dequev(i32, %struct.msghdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
