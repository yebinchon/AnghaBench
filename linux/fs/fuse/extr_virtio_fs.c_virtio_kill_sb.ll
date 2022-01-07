; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_kill_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_virtio_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fuse_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.virtio_fs* }
%struct.virtio_fs = type { %struct.virtio_fs_vq* }
%struct.virtio_fs_vq = type { i32, i32 }

@VQ_HIPRIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @virtio_kill_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.virtio_fs*, align 8
  %5 = alloca %struct.virtio_fs_vq*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %6)
  store %struct.fuse_conn* %7, %struct.fuse_conn** %3, align 8
  %8 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %9 = icmp ne %struct.fuse_conn* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @fuse_kill_sb_anon(%struct.super_block* %11)
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %14 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.virtio_fs*, %struct.virtio_fs** %15, align 8
  store %struct.virtio_fs* %16, %struct.virtio_fs** %4, align 8
  %17 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %18 = getelementptr inbounds %struct.virtio_fs, %struct.virtio_fs* %17, i32 0, i32 0
  %19 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %18, align 8
  %20 = load i64, i64* @VQ_HIPRIO, align 8
  %21 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %19, i64 %20
  store %struct.virtio_fs_vq* %21, %struct.virtio_fs_vq** %5, align 8
  %22 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %5, align 8
  %23 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %22, i32 0, i32 1
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %5, align 8
  %26 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.virtio_fs_vq*, %struct.virtio_fs_vq** %5, align 8
  %28 = getelementptr inbounds %struct.virtio_fs_vq, %struct.virtio_fs_vq* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %31 = call i32 @virtio_fs_drain_all_queues(%struct.virtio_fs* %30)
  %32 = load %struct.super_block*, %struct.super_block** %2, align 8
  call void @fuse_kill_sb_anon(%struct.super_block* %32)
  %33 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %34 = call i32 @virtio_fs_stop_all_queues(%struct.virtio_fs* %33)
  %35 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %36 = call i32 @virtio_fs_drain_all_queues(%struct.virtio_fs* %35)
  %37 = load %struct.virtio_fs*, %struct.virtio_fs** %4, align 8
  %38 = call i32 @virtio_fs_free_devs(%struct.virtio_fs* %37)
  br label %39

39:                                               ; preds = %12, %10
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local void @fuse_kill_sb_anon(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @virtio_fs_drain_all_queues(%struct.virtio_fs*) #1

declare dso_local i32 @virtio_fs_stop_all_queues(%struct.virtio_fs*) #1

declare dso_local i32 @virtio_fs_free_devs(%struct.virtio_fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
