; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_build_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_build_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.msdos_dir_entry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MSDOS_ROOT_INO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @fat_build_inode(%struct.super_block* %0, %struct.msdos_dir_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.msdos_dir_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.msdos_dir_entry* %1, %struct.msdos_dir_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call i32 @MSDOS_SB(%struct.super_block* %9)
  %11 = call i32 @fat_lock_build_inode(i32 %10)
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.inode* @fat_iget(%struct.super_block* %12, i32 %13)
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %51

18:                                               ; preds = %3
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = call %struct.inode* @new_inode(%struct.super_block* %19)
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.inode* @ERR_PTR(i32 %25)
  store %struct.inode* %26, %struct.inode** %7, align 8
  br label %51

27:                                               ; preds = %18
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i32, i32* @MSDOS_ROOT_INO, align 4
  %30 = call i32 @iunique(%struct.super_block* %28, i32 %29)
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call i32 @inode_set_iversion(%struct.inode* %33, i32 1)
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %37 = call i32 @fat_fill_inode(%struct.inode* %35, %struct.msdos_dir_entry* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = call i32 @iput(%struct.inode* %41)
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.inode* @ERR_PTR(i32 %43)
  store %struct.inode* %44, %struct.inode** %7, align 8
  br label %51

45:                                               ; preds = %27
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @fat_attach(%struct.inode* %46, i32 %47)
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @insert_inode_hash(%struct.inode* %49)
  br label %51

51:                                               ; preds = %45, %40, %23, %17
  %52 = load %struct.super_block*, %struct.super_block** %4, align 8
  %53 = call i32 @MSDOS_SB(%struct.super_block* %52)
  %54 = call i32 @fat_unlock_build_inode(i32 %53)
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  ret %struct.inode* %55
}

declare dso_local i32 @fat_lock_build_inode(i32) #1

declare dso_local i32 @MSDOS_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @fat_iget(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @iunique(%struct.super_block*, i32) #1

declare dso_local i32 @inode_set_iversion(%struct.inode*, i32) #1

declare dso_local i32 @fat_fill_inode(%struct.inode*, %struct.msdos_dir_entry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @fat_attach(%struct.inode*, i32) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @fat_unlock_build_inode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
