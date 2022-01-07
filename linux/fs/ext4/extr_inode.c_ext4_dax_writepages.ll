; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_dax_writepages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_dax_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.writeback_control = type { i64 }
%struct.ext4_sb_info = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @ext4_dax_writepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_dax_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_sb_info*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %10 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %11 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.address_space*, %struct.address_space** %4, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.address_space*, %struct.address_space** %4, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call %struct.ext4_sb_info* @EXT4_SB(%struct.TYPE_2__* %20)
  store %struct.ext4_sb_info* %21, %struct.ext4_sb_info** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call %struct.ext4_sb_info* @EXT4_SB(%struct.TYPE_2__* %24)
  %26 = call i32 @ext4_forced_shutdown(%struct.ext4_sb_info* %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %60

32:                                               ; preds = %2
  %33 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %34 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %33, i32 0, i32 0
  %35 = call i32 @percpu_down_read(i32* %34)
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %38 = call i32 @trace_ext4_writepages(%struct.inode* %36, %struct.writeback_control* %37)
  %39 = load %struct.address_space*, %struct.address_space** %4, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %46 = call i32 @dax_writeback_mapping_range(%struct.address_space* %39, i32 %44, %struct.writeback_control* %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %52 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = call i32 @trace_ext4_writepages_result(%struct.inode* %47, %struct.writeback_control* %48, i32 %49, i64 %54)
  %56 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %57 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %56, i32 0, i32 0
  %58 = call i32 @percpu_up_read(i32* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %32, %29
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.TYPE_2__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(%struct.ext4_sb_info*) #1

declare dso_local i32 @percpu_down_read(i32*) #1

declare dso_local i32 @trace_ext4_writepages(%struct.inode*, %struct.writeback_control*) #1

declare dso_local i32 @dax_writeback_mapping_range(%struct.address_space*, i32, %struct.writeback_control*) #1

declare dso_local i32 @trace_ext4_writepages_result(%struct.inode*, %struct.writeback_control*, i32, i64) #1

declare dso_local i32 @percpu_up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
