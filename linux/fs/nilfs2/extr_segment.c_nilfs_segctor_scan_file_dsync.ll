; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_scan_file_dsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_scan_file_dsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32 }
%struct.inode = type { i32 }

@data_buffers = common dso_local global i32 0, align 4
@nilfs_collect_file_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*, %struct.inode*)* @nilfs_segctor_scan_file_dsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_scan_file_dsync(%struct.nilfs_sc_info* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %8 = load i32, i32* @data_buffers, align 4
  %9 = call i32 @LIST_HEAD(i32 %8)
  %10 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %11 = call i64 @nilfs_segctor_buffer_rest(%struct.nilfs_sc_info* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %13, 1
  %15 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %16 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %19 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @nilfs_lookup_dirty_data_buffers(%struct.inode* %12, i32* @data_buffers, i64 %14, i32 %17, i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = load i32, i32* @nilfs_collect_file_data, align 4
  %25 = call i32 @nilfs_segctor_apply_buffers(%struct.nilfs_sc_info* %22, %struct.inode* %23, i32* @data_buffers, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %2
  %29 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call i32 @nilfs_segctor_end_finfo(%struct.nilfs_sc_info* %29, %struct.inode* %30)
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ugt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  br label %37

37:                                               ; preds = %28, %2
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @nilfs_segctor_buffer_rest(%struct.nilfs_sc_info*) #1

declare dso_local i64 @nilfs_lookup_dirty_data_buffers(%struct.inode*, i32*, i64, i32, i32) #1

declare dso_local i32 @nilfs_segctor_apply_buffers(%struct.nilfs_sc_info*, %struct.inode*, i32*, i32) #1

declare dso_local i32 @nilfs_segctor_end_finfo(%struct.nilfs_sc_info*, %struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
