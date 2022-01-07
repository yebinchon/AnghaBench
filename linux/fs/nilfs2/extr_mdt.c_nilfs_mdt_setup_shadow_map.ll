; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_setup_shadow_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_setup_shadow_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_shadow_map = type { i32, i32, i32 }
%struct.nilfs_mdt_info = type { %struct.nilfs_shadow_map* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_mdt_setup_shadow_map(%struct.inode* %0, %struct.nilfs_shadow_map* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_shadow_map*, align 8
  %5 = alloca %struct.nilfs_mdt_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nilfs_shadow_map* %1, %struct.nilfs_shadow_map** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.nilfs_mdt_info* @NILFS_MDT(%struct.inode* %6)
  store %struct.nilfs_mdt_info* %7, %struct.nilfs_mdt_info** %5, align 8
  %8 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %4, align 8
  %9 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %8, i32 0, i32 2
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %4, align 8
  %12 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %11, i32 0, i32 1
  %13 = call i32 @address_space_init_once(i32* %12)
  %14 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %4, align 8
  %15 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %14, i32 0, i32 1
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @nilfs_mapping_init(i32* %15, %struct.inode* %16)
  %18 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %4, align 8
  %19 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %18, i32 0, i32 0
  %20 = call i32 @address_space_init_once(i32* %19)
  %21 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %4, align 8
  %22 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i32 @nilfs_mapping_init(i32* %22, %struct.inode* %23)
  %25 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %4, align 8
  %26 = load %struct.nilfs_mdt_info*, %struct.nilfs_mdt_info** %5, align 8
  %27 = getelementptr inbounds %struct.nilfs_mdt_info, %struct.nilfs_mdt_info* %26, i32 0, i32 0
  store %struct.nilfs_shadow_map* %25, %struct.nilfs_shadow_map** %27, align 8
  ret i32 0
}

declare dso_local %struct.nilfs_mdt_info* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @address_space_init_once(i32*) #1

declare dso_local i32 @nilfs_mapping_init(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
