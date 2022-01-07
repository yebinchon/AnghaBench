; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_file_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.vm_area_struct = type { i32*, i32 }
%struct.ext4_sb_info = type { %struct.dax_device* }
%struct.dax_device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ext4_dax_vm_ops = common dso_local global i32 0, align 4
@VM_HUGEPAGE = common dso_local global i32 0, align 4
@ext4_file_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @ext4_file_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_file_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca %struct.dax_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ext4_sb_info* @EXT4_SB(i32 %16)
  store %struct.ext4_sb_info* %17, %struct.ext4_sb_info** %7, align 8
  %18 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %19 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %18, i32 0, i32 0
  %20 = load %struct.dax_device*, %struct.dax_device** %19, align 8
  store %struct.dax_device* %20, %struct.dax_device** %8, align 8
  %21 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %22 = call i32 @ext4_forced_shutdown(%struct.ext4_sb_info* %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %2
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = load %struct.dax_device*, %struct.dax_device** %8, align 8
  %31 = call i32 @daxdev_mapping_supported(%struct.vm_area_struct* %29, %struct.dax_device* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %28
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = call i32 @file_accessed(%struct.file* %37)
  %39 = load %struct.file*, %struct.file** %4, align 8
  %40 = call i32 @file_inode(%struct.file* %39)
  %41 = call i64 @IS_DAX(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  store i32* @ext4_dax_vm_ops, i32** %45, align 8
  %46 = load i32, i32* @VM_HUGEPAGE, align 4
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %54

51:                                               ; preds = %36
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 0
  store i32* @ext4_file_vm_ops, i32** %53, align 8
  br label %54

54:                                               ; preds = %51, %43
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %33, %25
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(%struct.ext4_sb_info*) #1

declare dso_local i32 @daxdev_mapping_supported(%struct.vm_area_struct*, %struct.dax_device*) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

declare dso_local i64 @IS_DAX(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
