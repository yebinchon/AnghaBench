; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_save_to_shadow_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_save_to_shadow_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32* }
%struct.nilfs_mdt_info = type { %struct.nilfs_shadow_map* }
%struct.nilfs_shadow_map = type { i32, i32, i32 }
%struct.nilfs_inode_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_mdt_save_to_shadow_map(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nilfs_mdt_info*, align 8
  %4 = alloca %struct.nilfs_inode_info*, align 8
  %5 = alloca %struct.nilfs_shadow_map*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.nilfs_mdt_info* @NILFS_MDT(%struct.inode* %7)
  store %struct.nilfs_mdt_info* %8, %struct.nilfs_mdt_info** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %9)
  store %struct.nilfs_inode_info* %10, %struct.nilfs_inode_info** %4, align 8
  %11 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %3, align 8
  %12 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %11, i32 0, i32 0
  %13 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %12, align 8
  store %struct.nilfs_shadow_map* %13, %struct.nilfs_shadow_map** %5, align 8
  %14 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %5, align 8
  %15 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %14, i32 0, i32 2
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @nilfs_copy_dirty_pages(i32* %15, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %39

23:                                               ; preds = %1
  %24 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %5, align 8
  %25 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %24, i32 0, i32 1
  %26 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %27 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %26, i32 0, i32 1
  %28 = call i32 @nilfs_copy_dirty_pages(i32* %25, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %39

32:                                               ; preds = %23
  %33 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %4, align 8
  %34 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %5, align 8
  %37 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %36, i32 0, i32 0
  %38 = call i32 @nilfs_bmap_save(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %32, %31, %22
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.nilfs_mdt_info* @NILFS_MDT(%struct.inode*) #1

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @nilfs_copy_dirty_pages(i32*, i32*) #1

declare dso_local i32 @nilfs_bmap_save(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
