; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_fs_drain_queue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_fs_drain_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_fs_vq = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_fs_vq*)* @virtio_fs_drain_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_fs_drain_queue(%struct.virtio_fs_vq* %0) #0 {
  %2 = alloca %struct.virtio_fs_vq*, align 8
  store %struct.virtio_fs_vq* %0, %struct.virtio_fs_vq** %2, align 8
  %3 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %2, align 8
  %4 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON(i32 %7)
  br label %9

9:                                                ; preds = %1, %21
  %10 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %2, align 8
  %11 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %10, i32 0, i32 3
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %2, align 8
  %14 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %2, align 8
  %19 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %18, i32 0, i32 3
  %20 = call i32 @spin_unlock(i32* %19)
  br label %26

21:                                               ; preds = %9
  %22 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %2, align 8
  %23 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %22, i32 0, i32 3
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %9

26:                                               ; preds = %17
  %27 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %2, align 8
  %28 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %27, i32 0, i32 2
  %29 = call i32 @flush_work(i32* %28)
  %30 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %2, align 8
  %31 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %30, i32 0, i32 1
  %32 = call i32 @flush_delayed_work(i32* %31)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
