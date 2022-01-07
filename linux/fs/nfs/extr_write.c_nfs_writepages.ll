; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_writepages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }
%struct.nfs_pageio_descriptor = type { i32, %struct.nfs_io_completion* }
%struct.nfs_io_completion = type { i32 }

@NFSIOS_VFSWRITEPAGES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nfs_io_completion_commit = common dso_local global i32 0, align 4
@nfs_async_write_completion_ops = common dso_local global i32 0, align 4
@nfs_writepages_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_pageio_descriptor, align 8
  %8 = alloca %struct.nfs_io_completion*, align 8
  %9 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %10 = load %struct.address_space*, %struct.address_space** %4, align 8
  %11 = getelementptr inbounds %struct.address_space, %struct.address_space* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = load i32, i32* @NFSIOS_VFSWRITEPAGES, align 4
  %15 = call i32 @nfs_inc_stats(%struct.inode* %13, i32 %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.nfs_io_completion* @nfs_io_completion_alloc(i32 %16)
  store %struct.nfs_io_completion* %17, %struct.nfs_io_completion** %8, align 8
  %18 = load %struct.nfs_io_completion*, %struct.nfs_io_completion** %8, align 8
  %19 = icmp ne %struct.nfs_io_completion* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.nfs_io_completion*, %struct.nfs_io_completion** %8, align 8
  %22 = load i32, i32* @nfs_io_completion_commit, align 4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i32 @nfs_io_completion_init(%struct.nfs_io_completion* %21, i32 %22, %struct.inode* %23)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %28 = call i32 @wb_priority(%struct.writeback_control* %27)
  %29 = call i32 @nfs_pageio_init_write(%struct.nfs_pageio_descriptor* %7, %struct.inode* %26, i32 %28, i32 0, i32* @nfs_async_write_completion_ops)
  %30 = load %struct.nfs_io_completion*, %struct.nfs_io_completion** %8, align 8
  %31 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %7, i32 0, i32 1
  store %struct.nfs_io_completion* %30, %struct.nfs_io_completion** %31, align 8
  %32 = load %struct.address_space*, %struct.address_space** %4, align 8
  %33 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %34 = load i32, i32* @nfs_writepages_callback, align 4
  %35 = call i32 @write_cache_pages(%struct.address_space* %32, %struct.writeback_control* %33, i32 %34, %struct.nfs_pageio_descriptor* %7)
  store i32 %35, i32* %9, align 4
  %36 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %7, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = call i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor* %7)
  %38 = load %struct.nfs_io_completion*, %struct.nfs_io_completion** %8, align 8
  %39 = call i32 @nfs_io_completion_put(%struct.nfs_io_completion* %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  br label %51

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @nfs_error_is_fatal(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %53

51:                                               ; preds = %49, %42
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local %struct.nfs_io_completion* @nfs_io_completion_alloc(i32) #1

declare dso_local i32 @nfs_io_completion_init(%struct.nfs_io_completion*, i32, %struct.inode*) #1

declare dso_local i32 @nfs_pageio_init_write(%struct.nfs_pageio_descriptor*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @wb_priority(%struct.writeback_control*) #1

declare dso_local i32 @write_cache_pages(%struct.address_space*, %struct.writeback_control*, i32, %struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_io_completion_put(%struct.nfs_io_completion*) #1

declare dso_local i64 @nfs_error_is_fatal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
