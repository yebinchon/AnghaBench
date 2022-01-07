; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32 }
%struct.virtio_vsock_pkt_info = type { i32, %struct.vsock_sock*, i32, i32 }

@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@VIRTIO_VSOCK_SHUTDOWN_RCV = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@VIRTIO_VSOCK_SHUTDOWN_SEND = common dso_local global i32 0, align 4
@VIRTIO_VSOCK_TYPE_STREAM = common dso_local global i32 0, align 4
@VIRTIO_VSOCK_OP_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_transport_shutdown(%struct.vsock_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.vsock_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtio_vsock_pkt_info, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RCV_SHUTDOWN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @VIRTIO_VSOCK_SHUTDOWN_RCV, align 4
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SEND_SHUTDOWN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @VIRTIO_VSOCK_SHUTDOWN_SEND, align 4
  br label %23

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = or i32 %15, %24
  store i32 %25, i32* %6, align 8
  %26 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %5, i32 0, i32 1
  %27 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  store %struct.vsock_sock* %27, %struct.vsock_sock** %26, align 8
  %28 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %5, i32 0, i32 2
  %29 = load i32, i32* @VIRTIO_VSOCK_TYPE_STREAM, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %5, i32 0, i32 3
  %31 = load i32, i32* @VIRTIO_VSOCK_OP_SHUTDOWN, align 4
  store i32 %31, i32* %30, align 4
  %32 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %33 = call i32 @virtio_transport_send_pkt_info(%struct.vsock_sock* %32, %struct.virtio_vsock_pkt_info* %5)
  ret i32 %33
}

declare dso_local i32 @virtio_transport_send_pkt_info(%struct.vsock_sock*, %struct.virtio_vsock_pkt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
