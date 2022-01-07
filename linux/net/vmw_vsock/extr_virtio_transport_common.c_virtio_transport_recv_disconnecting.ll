; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_recv_disconnecting.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_recv_disconnecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.virtio_vsock_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vsock_sock = type { i32 }

@VIRTIO_VSOCK_OP_RST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.virtio_vsock_pkt*)* @virtio_transport_recv_disconnecting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_transport_recv_disconnecting(%struct.sock* %0, %struct.virtio_vsock_pkt* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.virtio_vsock_pkt*, align 8
  %5 = alloca %struct.vsock_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.virtio_vsock_pkt* %1, %struct.virtio_vsock_pkt** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %6)
  store %struct.vsock_sock* %7, %struct.vsock_sock** %5, align 8
  %8 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %9 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @le16_to_cpu(i32 %11)
  %13 = load i64, i64* @VIRTIO_VSOCK_OP_RST, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.vsock_sock*, %struct.vsock_sock** %5, align 8
  %17 = call i32 @virtio_transport_do_close(%struct.vsock_sock* %16, i32 1)
  br label %18

18:                                               ; preds = %15, %2
  ret void
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @virtio_transport_do_close(%struct.vsock_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
