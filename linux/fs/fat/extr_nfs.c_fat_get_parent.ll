; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_nfs.c_fat_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_nfs.c_fat_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.msdos_dir_entry = type { i32 }
%struct.inode = type { i32 }
%struct.msdos_sb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FAT_NFS_NOSTALE_RO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @fat_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fat_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.msdos_dir_entry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.msdos_sb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %9 = load %struct.dentry*, %struct.dentry** %2, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %3, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  store %struct.inode* null, %struct.inode** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %12)
  store %struct.msdos_sb_info* %13, %struct.msdos_sb_info** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %2, align 8
  %15 = call i32 @d_inode(%struct.dentry* %14)
  %16 = call i32 @fat_get_dotdot_entry(i32 %15, %struct.buffer_head** %4, %struct.msdos_dir_entry** %5)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %1
  %19 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %20 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %21 = call i32 @fat_get_start(%struct.msdos_sb_info* %19, %struct.msdos_dir_entry* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.inode* @fat_dget(%struct.super_block* %22, i32 %23)
  store %struct.inode* %24, %struct.inode** %6, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %18
  %28 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %29 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FAT_NFS_NOSTALE_RO, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.super_block*, %struct.super_block** %3, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.inode* @fat_rebuild_parent(%struct.super_block* %35, i32 %36)
  store %struct.inode* %37, %struct.inode** %6, align 8
  br label %38

38:                                               ; preds = %34, %27, %18
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %41 = call i32 @brelse(%struct.buffer_head* %40)
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call %struct.dentry* @d_obtain_alias(%struct.inode* %42)
  ret %struct.dentry* %43
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @fat_get_dotdot_entry(i32, %struct.buffer_head**, %struct.msdos_dir_entry**) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @fat_get_start(%struct.msdos_sb_info*, %struct.msdos_dir_entry*) #1

declare dso_local %struct.inode* @fat_dget(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @fat_rebuild_parent(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
