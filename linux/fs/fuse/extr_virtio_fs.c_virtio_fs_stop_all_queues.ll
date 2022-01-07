; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_fs_stop_all_queues.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_fs_stop_all_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_fs = type { i32, %struct.virtio_fs_vq* }
%struct.virtio_fs_vq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_fs*)* @virtio_fs_stop_all_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_fs_stop_all_queues(%struct.virtio_fs* %0) #0 {
  %2 = alloca %struct.virtio_fs*, align 8
  %3 = alloca %struct.virtio_fs_vq*, align 8
  %4 = alloca i32, align 4
  store %struct.virtio_fs* %0, %struct.virtio_fs** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.virtio_fs*, %struct.virtio_fs** %2, align 8
  %8 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %5
  %12 = load %struct.virtio_fs*, %struct.virtio_fs** %2, align 8
  %13 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %12, i32 0, i32 1
  %14 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %14, i64 %16
  store %struct.virtio_fs_vq* %17, %struct.virtio_fs_vq** %3, align 8
  %18 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %3, align 8
  %19 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %3, align 8
  %22 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %3, align 8
  %24 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock(i32* %24)
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
