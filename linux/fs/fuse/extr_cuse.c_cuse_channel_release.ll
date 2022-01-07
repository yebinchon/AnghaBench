; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_channel_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_channel_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.fuse_dev* }
%struct.fuse_dev = type { i32 }
%struct.cuse_conn = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@cuse_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cuse_channel_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_channel_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.fuse_dev*, align 8
  %6 = alloca %struct.cuse_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.fuse_dev*, %struct.fuse_dev** %9, align 8
  store %struct.fuse_dev* %10, %struct.fuse_dev** %5, align 8
  %11 = load %struct.fuse_dev*, %struct.fuse_dev** %5, align 8
  %12 = getelementptr inbounds %struct.fuse_dev, %struct.fuse_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cuse_conn* @fc_to_cc(i32 %13)
  store %struct.cuse_conn* %14, %struct.cuse_conn** %6, align 8
  %15 = call i32 @mutex_lock(i32* @cuse_lock)
  %16 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %17 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %16, i32 0, i32 3
  %18 = call i32 @list_del_init(i32* %17)
  %19 = call i32 @mutex_unlock(i32* @cuse_lock)
  %20 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %21 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %26 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @device_unregister(i64 %27)
  br label %29

29:                                               ; preds = %24, %2
  %30 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %31 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %36 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @unregister_chrdev_region(i32 %39, i32 1)
  %41 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %42 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @cdev_del(%struct.TYPE_2__* %43)
  br label %45

45:                                               ; preds = %34, %29
  %46 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %47 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %46, i32 0, i32 0
  %48 = call i32 @fuse_conn_put(i32* %47)
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = call i32 @fuse_dev_release(%struct.inode* %49, %struct.file* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.cuse_conn* @fc_to_cc(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_unregister(i64) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_2__*) #1

declare dso_local i32 @fuse_conn_put(i32*) #1

declare dso_local i32 @fuse_dev_release(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
