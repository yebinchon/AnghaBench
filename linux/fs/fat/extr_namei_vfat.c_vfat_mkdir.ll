; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_mkdir.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @vfat_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.fat_slot_info, align 4
  %11 = alloca %struct.timespec64, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec64, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %8, align 8
  %18 = load %struct.super_block*, %struct.super_block** %8, align 8
  %19 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i32 @current_time(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.timespec64* %11 to i8*
  %26 = bitcast %struct.timespec64* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @fat_alloc_new_dir(%struct.inode* %27, %struct.timespec64* %11)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %12, align 4
  br label %85

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @vfat_add_entry(%struct.inode* %34, i32* %36, i32 1, i32 %37, %struct.timespec64* %11, %struct.fat_slot_info* %10)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %81

42:                                               ; preds = %33
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @inode_inc_iversion(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @inc_nlink(%struct.inode* %45)
  %47 = load %struct.super_block*, %struct.super_block** %8, align 8
  %48 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %10, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %10, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.inode* @fat_build_inode(%struct.super_block* %47, i32 %49, i32 %51)
  store %struct.inode* %52, %struct.inode** %9, align 8
  %53 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @brelse(i32 %54)
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call i64 @IS_ERR(%struct.inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %42
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = call i32 @PTR_ERR(%struct.inode* %60)
  store i32 %61, i32* %12, align 4
  br label %85

62:                                               ; preds = %42
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = call i32 @inode_inc_iversion(%struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = call i32 @set_nlink(%struct.inode* %65, i32 2)
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = load i32, i32* @S_ATIME, align 4
  %69 = load i32, i32* @S_CTIME, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @S_MTIME, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @fat_truncate_time(%struct.inode* %67, %struct.timespec64* %11, i32 %72)
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = call i32 @d_instantiate(%struct.dentry* %74, %struct.inode* %75)
  %77 = load %struct.super_block*, %struct.super_block** %8, align 8
  %78 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %4, align 4
  br label %91

81:                                               ; preds = %41
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @fat_free_clusters(%struct.inode* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %59, %31
  %86 = load %struct.super_block*, %struct.super_block** %8, align 8
  %87 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %62
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fat_alloc_new_dir(%struct.inode*, %struct.timespec64*) #1

declare dso_local i32 @vfat_add_entry(%struct.inode*, i32*, i32, i32, %struct.timespec64*, %struct.fat_slot_info*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @fat_truncate_time(%struct.inode*, %struct.timespec64*, i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fat_free_clusters(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
