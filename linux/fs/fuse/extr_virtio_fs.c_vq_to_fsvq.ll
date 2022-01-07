; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_vq_to_fsvq.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_vq_to_fsvq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_fs_vq = type { i32 }
%struct.virtqueue = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.virtio_fs* }
%struct.virtio_fs = type { %struct.virtio_fs_vq* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtio_fs_vq* (%struct.virtqueue*)* @vq_to_fsvq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtio_fs_vq* @vq_to_fsvq(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_fs*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %4 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %5 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.virtio_fs*, %struct.virtio_fs** %7, align 8
  store %struct.virtio_fs* %8, %struct.virtio_fs** %3, align 8
  %9 = load %struct.virtio_fs*, %struct.virtio_fs** %3, align 8
  %10 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %9, i32 0, i32 0
  %11 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %10, align 8
  %12 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %13 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %11, i64 %14
  ret %struct.virtio_fs_vq* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
