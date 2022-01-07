; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.fat_slot_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@S_ATIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @vfat_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
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
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = call i32 @vfat_find(%struct.inode* %18, i32* %20, %struct.fat_slot_info* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @fat_remove_entries(%struct.inode* %26, %struct.fat_slot_info* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %45

31:                                               ; preds = %25
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call i32 @clear_nlink(%struct.inode* %32)
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load i32, i32* @S_ATIME, align 4
  %36 = load i32, i32* @S_MTIME, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @fat_truncate_time(%struct.inode* %34, i32* null, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call i32 @fat_detach(%struct.inode* %39)
  %41 = load %struct.dentry*, %struct.dentry** %4, align 8
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = call i32 @inode_query_iversion(%struct.inode* %42)
  %44 = call i32 @vfat_d_version_set(%struct.dentry* %41, i32 %43)
  br label %45

45:                                               ; preds = %31, %30, %24
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @vfat_find(%struct.inode*, i32*, %struct.fat_slot_info*) #1

declare dso_local i32 @fat_remove_entries(%struct.inode*, %struct.fat_slot_info*) #1

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
