; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport.c_virtio_vsock_event_fill_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport.c_virtio_vsock_event_fill_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_vsock = type { %struct.virtqueue** }
%struct.virtqueue = type { i32 }
%struct.virtio_vsock_event = type { i32 }
%struct.scatterlist = type { i32 }

@VSOCK_VQ_EVENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_vsock*, %struct.virtio_vsock_event*)* @virtio_vsock_event_fill_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_vsock_event_fill_one(%struct.virtio_vsock* %0, %struct.virtio_vsock_event* %1) #0 {
  %3 = alloca %struct.virtio_vsock*, align 8
  %4 = alloca %struct.virtio_vsock_event*, align 8
  %5 = alloca %struct.scatterlist, align 4
  %6 = alloca %struct.virtqueue*, align 8
  store %struct.virtio_vsock* %0, %struct.virtio_vsock** %3, align 8
  store %struct.virtio_vsock_event* %1, %struct.virtio_vsock_event** %4, align 8
  %7 = load %struct.virtio_vsock*, %struct.virtio_vsock** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %7, i32 0, i32 0
  %9 = load %struct.virtqueue**, %struct.virtqueue*** %8, align 8
  %10 = load i64, i64* @VSOCK_VQ_EVENT, align 8
  %11 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %9, i64 %10
  %12 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  store %struct.virtqueue* %12, %struct.virtqueue** %6, align 8
  %13 = load %struct.virtio_vsock_event*, %struct.virtio_vsock_event** %4, align 8
  %14 = call i32 @sg_init_one(%struct.scatterlist* %5, %struct.virtio_vsock_event* %13, i32 4)
  %15 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  %16 = load %struct.virtio_vsock_event*, %struct.virtio_vsock_event** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @virtqueue_add_inbuf(%struct.virtqueue* %15, %struct.scatterlist* %5, i32 1, %struct.virtio_vsock_event* %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.virtio_vsock_event*, i32) #1

declare dso_local i32 @virtqueue_add_inbuf(%struct.virtqueue*, %struct.scatterlist*, i32, %struct.virtio_vsock_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
