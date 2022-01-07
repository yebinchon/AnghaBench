; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.fat_slot_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@S_ATIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @vfat_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fat_slot_info, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call i32 @fat_dir_empty(%struct.inode* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = call i32 @vfat_find(%struct.inode* %24, i32* %26, %struct.fat_slot_info* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %53

31:                                               ; preds = %23
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = call i32 @fat_remove_entries(%struct.inode* %32, %struct.fat_slot_info* %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %53

37:                                               ; preds = %31
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = call i32 @drop_nlink(%struct.inode* %38)
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = call i32 @clear_nlink(%struct.inode* %40)
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load i32, i32* @S_ATIME, align 4
  %44 = load i32, i32* @S_MTIME, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @fat_truncate_time(%struct.inode* %42, i32* null, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i32 @fat_detach(%struct.inode* %47)
  %49 = load %struct.dentry*, %struct.dentry** %4, align 8
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = call i32 @inode_query_iversion(%struct.inode* %50)
  %52 = call i32 @vfat_d_version_set(%struct.dentry* %49, i32 %51)
  br label %53

53:                                               ; preds = %37, %36, %30, %22
  %54 = load %struct.super_block*, %struct.super_block** %6, align 8
  %55 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @fat_dir_empty(%struct.inode*) #1

declare dso_local i32 @vfat_find(%struct.inode*, i32*, %struct.fat_slot_info*) #1

declare dso_local i32 @fat_remove_entries(%struct.inode*, %struct.fat_slot_info*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @fat_truncate_time(%struct.inode*, i32*, i32) #1

declare dso_local i32 @fat_detach(%struct.inode*) #1

declare dso_local i32 @vfat_d_version_set(%struct.dentry*, i32) #1

declare dso_local i32 @inode_query_iversion(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
