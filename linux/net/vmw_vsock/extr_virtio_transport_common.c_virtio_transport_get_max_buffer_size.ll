; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_get_max_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_get_max_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { %struct.virtio_vsock_sock* }
%struct.virtio_vsock_sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_transport_get_max_buffer_size(%struct.vsock_sock* %0) #0 {
  %2 = alloca %struct.vsock_sock*, align 8
  %3 = alloca %struct.virtio_vsock_sock*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %2, align 8
  %4 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %5 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %4, i32 0, i32 0
  %6 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %5, align 8
  store %struct.virtio_vsock_sock* %6, %struct.virtio_vsock_sock** %3, align 8
  %7 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
