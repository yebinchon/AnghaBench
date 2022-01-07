; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_restore_from_shadow_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_restore_from_shadow_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32* }
%struct.nilfs_mdt_info = type { i32, i64, %struct.nilfs_shadow_map* }
%struct.nilfs_shadow_map = type { i32, i32, i32 }
%struct.nilfs_inode_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_mdt_restore_from_shadow_map(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nilfs_mdt_info*, align 8
  %4 = alloca %struct.nilfs_inode_info*, align 8
  %5 = alloca %struct.nilfs_shadow_map*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.nilfs_mdt_info* @NILFS_MDT(%struct.inode* %6)
  store %struct.nilfs_mdt_info* %7, %struct.nilfs_mdt_info** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %8)
  store %struct.nilfs_inode_info* %9, %struct.nilfs_inode_info** %4, align 8
  %10 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %3, align 8
  %11 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %10, i32 0, i32 2
  %12 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %11, align 8
  store %struct.nilfs_shadow_map* %12, %struct.nilfs_shadow_map** %5, align 8
  %13 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %3, align 8
  %14 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %13, i32 0, i32 0
  %15 = call i32 @down_write(i32* %14)
  %16 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %3, align 8
  %17 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = call i32 @nilfs_palloc_clear_cache(%struct.inode* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @nilfs_clear_dirty_pages(i32* %26, i32 1)
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %5, align 8
  %32 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %31, i32 0, i32 2
  %33 = call i32 @nilfs_copy_back_pages(i32* %30, i32* %32)
  %34 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %35 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %34, i32 0, i32 1
  %36 = call i32 @nilfs_clear_dirty_pages(i32* %35, i32 1)
  %37 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %38 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %37, i32 0, i32 1
  %39 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %5, align 8
  %40 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %39, i32 0, i32 1
  %41 = call i32 @nilfs_copy_back_pages(i32* %38, i32* %40)
  %42 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %43 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %5, align 8
  %46 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %45, i32 0, i32 0
  %47 = call i32 @nilfs_bmap_restore(i32 %44, i32* %46)
  %48 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %3, align 8
  %49 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %48, i32 0, i32 0
  %50 = call i32 @up_write(i32* %49)
  ret void
}

declare dso_local %struct.nilfs_mdt_info* @NILFS_MDT(%struct.inode*) #1

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nilfs_palloc_clear_cache(%struct.inode*) #1

declare dso_local i32 @nilfs_clear_dirty_pages(i32*, i32) #1

declare dso_local i32 @nilfs_copy_back_pages(i32*, i32*) #1

declare dso_local i32 @nilfs_bmap_restore(i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
