; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_find_fixed_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_find_fixed_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.list_head = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@EXT4_FMR_OWN_BLKBM = common dso_local global i32 0, align 4
@EXT4_FMR_OWN_INOBM = common dso_local global i32 0, align 4
@EXT4_FMR_OWN_INODES = common dso_local global i32 0, align 4
@ext4_getfsmap_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.list_head*)* @ext4_getfsmap_find_fixed_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_getfsmap_find_fixed_metadata(%struct.super_block* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.ext4_group_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %9 = load %struct.list_head*, %struct.list_head** %5, align 8
  %10 = call i32 @INIT_LIST_HEAD(%struct.list_head* %9)
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %70, %2
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %12, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %11
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %19, i64 %20, i32* null)
  store %struct.ext4_group_desc* %21, %struct.ext4_group_desc** %6, align 8
  %22 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %23 = icmp ne %struct.ext4_group_desc* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EFSCORRUPTED, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %79

27:                                               ; preds = %18
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.list_head*, %struct.list_head** %5, align 8
  %31 = call i32 @ext4_getfsmap_find_sb(%struct.super_block* %28, i64 %29, %struct.list_head* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %79

35:                                               ; preds = %27
  %36 = load %struct.list_head*, %struct.list_head** %5, align 8
  %37 = load %struct.super_block*, %struct.super_block** %4, align 8
  %38 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %39 = call i32 @ext4_block_bitmap(%struct.super_block* %37, %struct.ext4_group_desc* %38)
  %40 = load i32, i32* @EXT4_FMR_OWN_BLKBM, align 4
  %41 = call i32 @ext4_getfsmap_fill(%struct.list_head* %36, i32 %39, i32 1, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %79

45:                                               ; preds = %35
  %46 = load %struct.list_head*, %struct.list_head** %5, align 8
  %47 = load %struct.super_block*, %struct.super_block** %4, align 8
  %48 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %49 = call i32 @ext4_inode_bitmap(%struct.super_block* %47, %struct.ext4_group_desc* %48)
  %50 = load i32, i32* @EXT4_FMR_OWN_INOBM, align 4
  %51 = call i32 @ext4_getfsmap_fill(%struct.list_head* %46, i32 %49, i32 1, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %79

55:                                               ; preds = %45
  %56 = load %struct.list_head*, %struct.list_head** %5, align 8
  %57 = load %struct.super_block*, %struct.super_block** %4, align 8
  %58 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %59 = call i32 @ext4_inode_table(%struct.super_block* %57, %struct.ext4_group_desc* %58)
  %60 = load %struct.super_block*, %struct.super_block** %4, align 8
  %61 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @EXT4_FMR_OWN_INODES, align 4
  %65 = call i32 @ext4_getfsmap_fill(%struct.list_head* %56, i32 %59, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %79

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %7, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %7, align 8
  br label %11

73:                                               ; preds = %11
  %74 = load %struct.list_head*, %struct.list_head** %5, align 8
  %75 = load i32, i32* @ext4_getfsmap_compare, align 4
  %76 = call i32 @list_sort(i32* null, %struct.list_head* %74, i32 %75)
  %77 = load %struct.list_head*, %struct.list_head** %5, align 8
  %78 = call i32 @ext4_getfsmap_merge_fixed_metadata(%struct.list_head* %77)
  store i32 0, i32* %3, align 4
  br label %83

79:                                               ; preds = %68, %54, %44, %34, %24
  %80 = load %struct.list_head*, %struct.list_head** %5, align 8
  %81 = call i32 @ext4_getfsmap_free_fixed_metadata(%struct.list_head* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @ext4_getfsmap_find_sb(%struct.super_block*, i64, %struct.list_head*) #1

declare dso_local i32 @ext4_getfsmap_fill(%struct.list_head*, i32, i32, i32) #1

declare dso_local i32 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @list_sort(i32*, %struct.list_head*, i32) #1

declare dso_local i32 @ext4_getfsmap_merge_fixed_metadata(%struct.list_head*) #1

declare dso_local i32 @ext4_getfsmap_free_fixed_metadata(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
