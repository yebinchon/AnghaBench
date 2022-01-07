; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_stream_has_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_stream_has_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { %struct.virtio_vsock_sock* }
%struct.virtio_vsock_sock = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_transport_stream_has_data(%struct.vsock_sock* %0) #0 {
  %2 = alloca %struct.vsock_sock*, align 8
  %3 = alloca %struct.virtio_vsock_sock*, align 8
  %4 = alloca i32, align 4
  store %struct.vsock_sock* %0, %struct.vsock_sock** %2, align 8
  %5 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %6 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %5, i32 0, i32 0
  %7 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  store %struct.virtio_vsock_sock* %7, %struct.virtio_vsock_sock** %3, align 8
  %8 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %3, align 8
  %9 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %3, align 8
  %12 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %3, align 8
  %15 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_bh(i32* %15)
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
