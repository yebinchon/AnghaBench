; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_inode_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.nilfs_inode = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NILFS_I_NEW = common dso_local global i32 0, align 4
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@NILFS_I_INODE_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_update_inode(%struct.inode* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nilfs_inode_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nilfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %14)
  store %struct.nilfs_inode_info* %15, %struct.nilfs_inode_info** %8, align 8
  %16 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %8, align 8
  %17 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %24 = call %struct.nilfs_inode* @nilfs_ifile_map_inode(%struct.inode* %21, i32 %22, %struct.buffer_head* %23)
  store %struct.nilfs_inode* %24, %struct.nilfs_inode** %10, align 8
  %25 = load i32, i32* @NILFS_I_NEW, align 4
  %26 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %8, align 8
  %27 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %26, i32 0, i32 0
  %28 = call i64 @test_and_clear_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.nilfs_inode*, %struct.nilfs_inode** %10, align 8
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memset(%struct.nilfs_inode* %31, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %30, %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @NILFS_I_INODE_SYNC, align 4
  %44 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %8, align 8
  %45 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = load %struct.nilfs_inode*, %struct.nilfs_inode** %10, align 8
  %50 = call i32 @nilfs_write_inode_common(%struct.inode* %48, %struct.nilfs_inode* %49, i32 0)
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %54 = call i32 @nilfs_ifile_unmap_inode(%struct.inode* %51, i32 %52, %struct.buffer_head* %53)
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local %struct.nilfs_inode* @nilfs_ifile_map_inode(%struct.inode*, i32, %struct.buffer_head*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.nilfs_inode*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nilfs_write_inode_common(%struct.inode*, %struct.nilfs_inode*, i32) #1

declare dso_local i32 @nilfs_ifile_unmap_inode(%struct.inode*, i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
