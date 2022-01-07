; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_nfs.c___fat_nfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_nfs.c___fat_nfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.msdos_dir_entry = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@FAT_NFS_NOSTALE_RO = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"unable to read block(%llu) for building NFS inode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32, i64, i32)* @__fat_nfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @__fat_nfs_get_inode(%struct.super_block* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.msdos_dir_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.inode* @fat_ilookup(%struct.super_block* %15, i32 %16, i32 %17)
  store %struct.inode* %18, %struct.inode** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = call i32 @iput(%struct.inode* %31)
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %33

33:                                               ; preds = %30, %24, %21, %4
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = icmp eq %struct.inode* %34, null
  br i1 %35, label %36, label %86

36:                                               ; preds = %33
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = call %struct.TYPE_5__* @MSDOS_SB(%struct.super_block* %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FAT_NFS_NOSTALE_RO, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %36
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %45 = load %struct.super_block*, %struct.super_block** %6, align 8
  %46 = call %struct.TYPE_5__* @MSDOS_SB(%struct.super_block* %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @fat_get_blknr_offset(%struct.TYPE_5__* %46, i32 %47, i64* %13, i32* %14)
  %49 = load %struct.super_block*, %struct.super_block** %6, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call %struct.buffer_head* @sb_bread(%struct.super_block* %49, i64 %50)
  store %struct.buffer_head* %51, %struct.buffer_head** %11, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %53 = icmp ne %struct.buffer_head* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %44
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load i64, i64* %13, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @fat_msg(%struct.super_block* %55, i32 %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %60, %struct.inode** %5, align 8
  br label %88

61:                                               ; preds = %44
  %62 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.msdos_dir_entry*
  store %struct.msdos_dir_entry* %65, %struct.msdos_dir_entry** %12, align 8
  %66 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %66, i64 %68
  %70 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @IS_FREE(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %83

75:                                               ; preds = %61
  %76 = load %struct.super_block*, %struct.super_block** %6, align 8
  %77 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %77, i64 %79
  %81 = load i32, i32* %9, align 4
  %82 = call %struct.inode* @fat_build_inode(%struct.super_block* %76, %struct.msdos_dir_entry* %80, i32 %81)
  store %struct.inode* %82, %struct.inode** %10, align 8
  br label %83

83:                                               ; preds = %75, %74
  %84 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %85 = call i32 @brelse(%struct.buffer_head* %84)
  br label %86

86:                                               ; preds = %83, %36, %33
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %87, %struct.inode** %5, align 8
  br label %88

88:                                               ; preds = %86, %54
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %89
}

declare dso_local %struct.inode* @fat_ilookup(%struct.super_block*, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.TYPE_5__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @fat_get_blknr_offset(%struct.TYPE_5__*, i32, i64*, i32*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i32 @fat_msg(%struct.super_block*, i32, i8*, i32) #1

declare dso_local i64 @IS_FREE(i32) #1

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, %struct.msdos_dir_entry*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
