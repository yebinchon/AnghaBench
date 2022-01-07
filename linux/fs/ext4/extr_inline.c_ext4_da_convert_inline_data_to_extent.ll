; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_da_convert_inline_data_to_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_da_convert_inline_data_to_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@ext4_da_get_block_prep = common dso_local global i32 0, align 4
@CONVERT_INLINE_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.inode*, i32, i8**)* @ext4_da_convert_inline_data_to_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_da_convert_inline_data_to_extent(%struct.address_space* %0, %struct.inode* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.address_space*, %struct.address_space** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %13, i32 0, i32 %14)
  store %struct.page* %15, %struct.page** %12, align 8
  %16 = load %struct.page*, %struct.page** %12, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %91

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @down_read(i32* %24)
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i32 @ext4_has_inline_data(%struct.inode* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %32 = call i32 @ext4_clear_inode_state(%struct.inode* %30, i32 %31)
  br label %77

33:                                               ; preds = %21
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = call i32 @ext4_get_inline_size(%struct.inode* %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.page*, %struct.page** %12, align 8
  %37 = call i32 @PageUptodate(%struct.page* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = load %struct.page*, %struct.page** %12, align 8
  %42 = call i32 @ext4_read_inline_page(%struct.inode* %40, %struct.page* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %77

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %33
  %48 = load %struct.page*, %struct.page** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @ext4_da_get_block_prep, align 4
  %51 = call i32 @__block_write_begin(%struct.page* %48, i32 0, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @up_read(i32* %57)
  %59 = load %struct.page*, %struct.page** %12, align 8
  %60 = call i32 @unlock_page(%struct.page* %59)
  %61 = load %struct.page*, %struct.page** %12, align 8
  %62 = call i32 @put_page(%struct.page* %61)
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = call i32 @ext4_truncate_failed_write(%struct.inode* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %91

66:                                               ; preds = %47
  %67 = load %struct.page*, %struct.page** %12, align 8
  %68 = call i32 @SetPageDirty(%struct.page* %67)
  %69 = load %struct.page*, %struct.page** %12, align 8
  %70 = call i32 @SetPageUptodate(%struct.page* %69)
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %73 = call i32 @ext4_clear_inode_state(%struct.inode* %71, i32 %72)
  %74 = load i64, i64* @CONVERT_INLINE_DATA, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load i8**, i8*** %9, align 8
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %66, %45, %29
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @up_read(i32* %80)
  %82 = load %struct.page*, %struct.page** %12, align 8
  %83 = icmp ne %struct.page* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.page*, %struct.page** %12, align 8
  %86 = call i32 @unlock_page(%struct.page* %85)
  %87 = load %struct.page*, %struct.page** %12, align 8
  %88 = call i32 @put_page(%struct.page* %87)
  br label %89

89:                                               ; preds = %84, %77
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %54, %18
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_get_inline_size(%struct.inode*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ext4_read_inline_page(%struct.inode*, %struct.page*) #1

declare dso_local i32 @__block_write_begin(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
