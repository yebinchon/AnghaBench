; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_send_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32 }
%struct.virtio_vsock_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.virtio_vsock_pkt_info = type { i32, %struct.vsock_sock*, i32, i32, i32, i32 }

@VIRTIO_VSOCK_TYPE_STREAM = common dso_local global i32 0, align 4
@VIRTIO_VSOCK_OP_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*, %struct.virtio_vsock_pkt*)* @virtio_transport_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_transport_send_response(%struct.vsock_sock* %0, %struct.virtio_vsock_pkt* %1) #0 {
  %3 = alloca %struct.vsock_sock*, align 8
  %4 = alloca %struct.virtio_vsock_pkt*, align 8
  %5 = alloca %struct.virtio_vsock_pkt_info, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %3, align 8
  store %struct.virtio_vsock_pkt* %1, %struct.virtio_vsock_pkt** %4, align 8
  %6 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %5, i32 0, i32 1
  %8 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  store %struct.vsock_sock* %8, %struct.vsock_sock** %7, align 8
  %9 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %5, i32 0, i32 2
  %10 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %11 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  store i32 %14, i32* %9, align 8
  %15 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %5, i32 0, i32 3
  %16 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %17 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le64_to_cpu(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %5, i32 0, i32 4
  %22 = load i32, i32* @VIRTIO_VSOCK_TYPE_STREAM, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.virtio_vsock_pkt_info, %struct.virtio_vsock_pkt_info* %5, i32 0, i32 5
  %24 = load i32, i32* @VIRTIO_VSOCK_OP_RESPONSE, align 4
  store i32 %24, i32* %23, align 4
  %25 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %26 = call i32 @virtio_transport_send_pkt_info(%struct.vsock_sock* %25, %struct.virtio_vsock_pkt_info* %5)
  ret i32 %26
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @virtio_transport_send_pkt_info(%struct.vsock_sock*, %struct.virtio_vsock_pkt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
