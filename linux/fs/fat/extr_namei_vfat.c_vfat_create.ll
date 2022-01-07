; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.fat_slot_info = type { i32, i32, i32 }
%struct.timespec64 = type { i32 }
%struct.TYPE_2__ = type { i32 }

@S_ATIME = common dso_local global i32 0, align 4
@S_CTIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @vfat_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fat_slot_info, align 4
  %12 = alloca %struct.timespec64, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec64, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %9, align 8
  %18 = load %struct.super_block*, %struct.super_block** %9, align 8
  %19 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i32 @current_time(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.timespec64* %12 to i8*
  %26 = bitcast %struct.timespec64* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = call i32 @vfat_add_entry(%struct.inode* %27, i32* %29, i32 0, i32 0, %struct.timespec64* %12, %struct.fat_slot_info* %11)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %65

34:                                               ; preds = %4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call i32 @inode_inc_iversion(%struct.inode* %35)
  %37 = load %struct.super_block*, %struct.super_block** %9, align 8
  %38 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.inode* @fat_build_inode(%struct.super_block* %37, i32 %39, i32 %41)
  store %struct.inode* %42, %struct.inode** %10, align 8
  %43 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @brelse(i32 %44)
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = call i64 @IS_ERR(%struct.inode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = call i32 @PTR_ERR(%struct.inode* %50)
  store i32 %51, i32* %13, align 4
  br label %65

52:                                               ; preds = %34
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = call i32 @inode_inc_iversion(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %10, align 8
  %56 = load i32, i32* @S_ATIME, align 4
  %57 = load i32, i32* @S_CTIME, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @S_MTIME, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @fat_truncate_time(%struct.inode* %55, %struct.timespec64* %12, i32 %60)
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = call i32 @d_instantiate(%struct.dentry* %62, %struct.inode* %63)
  br label %65

65:                                               ; preds = %52, %49, %33
  %66 = load %struct.super_block*, %struct.super_block** %9, align 8
  %67 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %13, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vfat_add_entry(%struct.inode*, i32*, i32, i32, %struct.timespec64*, %struct.fat_slot_info*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @fat_truncate_time(%struct.inode*, %struct.timespec64*, i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
