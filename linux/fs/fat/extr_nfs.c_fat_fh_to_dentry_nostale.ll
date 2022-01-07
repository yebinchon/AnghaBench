; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_nfs.c_fat_fh_to_dentry_nostale.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_nfs.c_fat_fh_to_dentry_nostale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i32 }
%struct.inode = type { i32 }
%struct.fat_fid = type { i32, i32, i32 }

@FAT_FID_SIZE_WITHOUT_PARENT = common dso_local global i32 0, align 4
@FAT_FID_SIZE_WITH_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @fat_fh_to_dentry_nostale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fat_fh_to_dentry_nostale(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fat_fid*, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  %13 = load %struct.fid*, %struct.fid** %7, align 8
  %14 = bitcast %struct.fid* %13 to %struct.fat_fid*
  store %struct.fat_fid* %14, %struct.fat_fid** %11, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %28 [
    i32 129, label %16
    i32 128, label %22
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @FAT_FID_SIZE_WITHOUT_PARENT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %47

21:                                               ; preds = %16
  br label %29

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @FAT_FID_SIZE_WITH_PARENT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %47

27:                                               ; preds = %22
  br label %29

28:                                               ; preds = %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %47

29:                                               ; preds = %27, %21
  %30 = load %struct.fat_fid*, %struct.fat_fid** %11, align 8
  %31 = getelementptr inbounds %struct.fat_fid, %struct.fat_fid* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = shl i32 %33, 32
  %35 = load %struct.fat_fid*, %struct.fat_fid** %11, align 8
  %36 = getelementptr inbounds %struct.fat_fid, %struct.fat_fid* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.super_block*, %struct.super_block** %6, align 8
  %40 = load %struct.fat_fid*, %struct.fat_fid** %11, align 8
  %41 = getelementptr inbounds %struct.fat_fid, %struct.fat_fid* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call %struct.inode* @__fat_nfs_get_inode(%struct.super_block* %39, i32 0, i32 %42, i32 %43)
  store %struct.inode* %44, %struct.inode** %10, align 8
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = call %struct.dentry* @d_obtain_alias(%struct.inode* %45)
  store %struct.dentry* %46, %struct.dentry** %5, align 8
  br label %47

47:                                               ; preds = %29, %28, %26, %20
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %48
}

declare dso_local %struct.inode* @__fat_nfs_get_inode(%struct.super_block*, i32, i32, i32) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
