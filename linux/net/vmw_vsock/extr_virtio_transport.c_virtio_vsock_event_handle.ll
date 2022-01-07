; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport.c_virtio_vsock_event_handle.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport.c_virtio_vsock_event_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_vsock = type { i32 }
%struct.virtio_vsock_event = type { i32 }

@virtio_vsock_reset_sock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_vsock*, %struct.virtio_vsock_event*)* @virtio_vsock_event_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_vsock_event_handle(%struct.virtio_vsock* %0, %struct.virtio_vsock_event* %1) #0 {
  %3 = alloca %struct.virtio_vsock*, align 8
  %4 = alloca %struct.virtio_vsock_event*, align 8
  store %struct.virtio_vsock* %0, %struct.virtio_vsock** %3, align 8
  store %struct.virtio_vsock_event* %1, %struct.virtio_vsock_event** %4, align 8
  %5 = load %struct.virtio_vsock_event*, %struct.virtio_vsock_event** %4, align 8
  %6 = getelementptr inbounds %struct.virtio_vsock_event, %struct.virtio_vsock_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @le32_to_cpu(i32 %7)
  switch i32 %8, label %14 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.virtio_vsock*, %struct.virtio_vsock** %3, align 8
  %11 = call i32 @virtio_vsock_update_guest_cid(%struct.virtio_vsock* %10)
  %12 = load i32, i32* @virtio_vsock_reset_sock, align 4
  %13 = call i32 @vsock_for_each_connected_socket(i32 %12)
  br label %14

14:                                               ; preds = %2, %9
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @virtio_vsock_update_guest_cid(%struct.virtio_vsock*) #1

declare dso_local i32 @vsock_for_each_connected_socket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
