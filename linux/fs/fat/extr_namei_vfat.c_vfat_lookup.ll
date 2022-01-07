; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i64, i32 }
%struct.fat_slot_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @vfat_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @vfat_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.fat_slot_info, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %8, align 8
  %16 = load %struct.super_block*, %struct.super_block** %8, align 8
  %17 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = call i32 @vfat_find(%struct.inode* %20, i32* %22, %struct.fat_slot_info* %9)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %84

32:                                               ; preds = %26
  br label %100

33:                                               ; preds = %3
  %34 = load %struct.super_block*, %struct.super_block** %8, align 8
  %35 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.inode* @fat_build_inode(%struct.super_block* %34, i32 %36, i32 %38)
  store %struct.inode* %39, %struct.inode** %10, align 8
  %40 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @brelse(i32 %41)
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i64 @IS_ERR(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = call i32 @PTR_ERR(%struct.inode* %47)
  store i32 %48, i32* %12, align 4
  br label %100

49:                                               ; preds = %33
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = call %struct.dentry* @d_find_alias(%struct.inode* %50)
  store %struct.dentry* %51, %struct.dentry** %11, align 8
  %52 = load %struct.dentry*, %struct.dentry** %11, align 8
  %53 = icmp ne %struct.dentry* %52, null
  br i1 %53, label %54, label %80

54:                                               ; preds = %49
  %55 = load %struct.dentry*, %struct.dentry** %11, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = getelementptr inbounds %struct.dentry, %struct.dentry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %54
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @S_ISDIR(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load %struct.dentry*, %struct.dentry** %11, align 8
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = call i32 @d_move(%struct.dentry* %69, %struct.dentry* %70)
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i32 @iput(%struct.inode* %73)
  %75 = load %struct.super_block*, %struct.super_block** %8, align 8
  %76 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %79, %struct.dentry** %4, align 8
  br label %107

80:                                               ; preds = %54, %49
  %81 = load %struct.dentry*, %struct.dentry** %11, align 8
  %82 = call i32 @dput(%struct.dentry* %81)
  br label %83

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %83, %31
  %85 = load %struct.super_block*, %struct.super_block** %8, align 8
  %86 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = icmp ne %struct.inode* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %84
  %92 = load %struct.dentry*, %struct.dentry** %6, align 8
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = call i32 @inode_query_iversion(%struct.inode* %93)
  %95 = call i32 @vfat_d_version_set(%struct.dentry* %92, i32 %94)
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.inode*, %struct.inode** %10, align 8
  %98 = load %struct.dentry*, %struct.dentry** %6, align 8
  %99 = call %struct.dentry* @d_splice_alias(%struct.inode* %97, %struct.dentry* %98)
  store %struct.dentry* %99, %struct.dentry** %4, align 8
  br label %107

100:                                              ; preds = %46, %32
  %101 = load %struct.super_block*, %struct.super_block** %8, align 8
  %102 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %12, align 4
  %106 = call %struct.dentry* @ERR_PTR(i32 %105)
  store %struct.dentry* %106, %struct.dentry** %4, align 8
  br label %107

107:                                              ; preds = %100, %96, %72
  %108 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %108
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @vfat_find(%struct.inode*, i32*, %struct.fat_slot_info*) #1

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @vfat_d_version_set(%struct.dentry*, i32) #1

declare dso_local i32 @inode_query_iversion(%struct.inode*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
