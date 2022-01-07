; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_clear_shadow_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_clear_shadow_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_mdt_info = type { i32, %struct.nilfs_shadow_map* }
%struct.nilfs_shadow_map = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_mdt_clear_shadow_map(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nilfs_mdt_info*, align 8
  %4 = alloca %struct.nilfs_shadow_map*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.nilfs_mdt_info* @NILFS_MDT(%struct.inode* %5)
  store %struct.nilfs_mdt_info* %6, %struct.nilfs_mdt_info** %3, align 8
  %7 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %3, align 8
  %8 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %7, i32 0, i32 1
  %9 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %8, align 8
  store %struct.nilfs_shadow_map* %9, %struct.nilfs_shadow_map** %4, align 8
  %10 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %3, align 8
  %11 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %10, i32 0, i32 0
  %12 = call i32 @down_write(i32* %11)
  %13 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %4, align 8
  %14 = call i32 @nilfs_release_frozen_buffers(%struct.nilfs_shadow_map* %13)
  %15 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %4, align 8
  %16 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %15, i32 0, i32 1
  %17 = call i32 @truncate_inode_pages(i32* %16, i32 0)
  %18 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %4, align 8
  %19 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %18, i32 0, i32 0
  %20 = call i32 @truncate_inode_pages(i32* %19, i32 0)
  %21 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %3, align 8
  %22 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %21, i32 0, i32 0
  %23 = call i32 @up_write(i32* %22)
  ret void
}

declare dso_local %struct.nilfs_mdt_info* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nilfs_release_frozen_buffers(%struct.nilfs_shadow_map*) #1

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
