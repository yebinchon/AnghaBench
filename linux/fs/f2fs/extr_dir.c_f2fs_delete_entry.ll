; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_dir_entry = type { i32 }
%struct.page = type { i64 }
%struct.inode = type { i32, i32, i32 }
%struct.f2fs_dentry_block = type { i32, %struct.f2fs_dir_entry* }
%struct.TYPE_2__ = type { i64 }

@REQ_TIME = common dso_local global i32 0, align 4
@FSYNC_MODE_STRICT = common dso_local global i64 0, align 8
@TRANS_DIR_INO = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@NR_DENTRY_IN_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_delete_entry(%struct.f2fs_dir_entry* %0, %struct.page* %1, %struct.inode* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.f2fs_dir_entry*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.f2fs_dentry_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__, align 8
  store %struct.f2fs_dir_entry* %0, %struct.f2fs_dir_entry** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %14 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %5, align 8
  %15 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = call i32 @GET_DENTRY_SLOTS(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call i32 @F2FS_I_SB(%struct.inode* %19)
  %21 = load i32, i32* @REQ_TIME, align 4
  %22 = call i32 @f2fs_update_time(i32 %20, i32 %21)
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call i32 @F2FS_I_SB(%struct.inode* %23)
  %25 = call i64 @F2FS_OPTION(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FSYNC_MODE_STRICT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call i32 @F2FS_I_SB(%struct.inode* %32)
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TRANS_DIR_INO, align 4
  %38 = call i32 @f2fs_add_ino_entry(i32 %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %4
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call i64 @f2fs_has_inline_dentry(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %5, align 8
  %45 = load %struct.page*, %struct.page** %6, align 8
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  call void @f2fs_delete_inline_entry(%struct.f2fs_dir_entry* %44, %struct.page* %45, %struct.inode* %46, %struct.inode* %47)
  br label %133

48:                                               ; preds = %39
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i32 @lock_page(%struct.page* %49)
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = load i32, i32* @DATA, align 4
  %53 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %51, i32 %52, i32 1, i32 1)
  %54 = load %struct.page*, %struct.page** %6, align 8
  %55 = call %struct.f2fs_dentry_block* @page_address(%struct.page* %54)
  store %struct.f2fs_dentry_block* %55, %struct.f2fs_dentry_block** %9, align 8
  %56 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %5, align 8
  %57 = load %struct.f2fs_dentry_block*, %struct.f2fs_dentry_block** %9, align 8
  %58 = getelementptr inbounds %struct.f2fs_dentry_block, %struct.f2fs_dentry_block* %57, i32 0, i32 1
  %59 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %58, align 8
  %60 = ptrtoint %struct.f2fs_dir_entry* %56 to i64
  %61 = ptrtoint %struct.f2fs_dir_entry* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %76, %48
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %70, %71
  %73 = load %struct.f2fs_dentry_block*, %struct.f2fs_dentry_block** %9, align 8
  %74 = getelementptr inbounds %struct.f2fs_dentry_block, %struct.f2fs_dentry_block* %73, i32 0, i32 0
  %75 = call i32 @__clear_bit_le(i32 %72, i32* %74)
  br label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %65

79:                                               ; preds = %65
  %80 = load %struct.f2fs_dentry_block*, %struct.f2fs_dentry_block** %9, align 8
  %81 = getelementptr inbounds %struct.f2fs_dentry_block, %struct.f2fs_dentry_block* %80, i32 0, i32 0
  %82 = load i32, i32* @NR_DENTRY_IN_BLOCK, align 4
  %83 = call i32 @find_next_bit_le(i32* %81, i32 %82, i32 0)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.page*, %struct.page** %6, align 8
  %85 = call i32 @set_page_dirty(%struct.page* %84)
  %86 = load %struct.inode*, %struct.inode** %7, align 8
  %87 = call i32 @current_time(%struct.inode* %86)
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %92, i32 0)
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = icmp ne %struct.inode* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %79
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = call i32 @f2fs_drop_nlink(%struct.inode* %97, %struct.inode* %98)
  br label %100

100:                                              ; preds = %96, %79
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @NR_DENTRY_IN_BLOCK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = load %struct.page*, %struct.page** %6, align 8
  %107 = getelementptr inbounds %struct.page, %struct.page* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.page*, %struct.page** %6, align 8
  %110 = getelementptr inbounds %struct.page, %struct.page* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  %113 = call i32 @f2fs_truncate_hole(%struct.inode* %105, i64 %108, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %104
  %116 = load %struct.page*, %struct.page** %6, align 8
  %117 = call i32 @f2fs_clear_page_cache_dirty_tag(%struct.page* %116)
  %118 = load %struct.page*, %struct.page** %6, align 8
  %119 = call i32 @clear_page_dirty_for_io(%struct.page* %118)
  %120 = load %struct.page*, %struct.page** %6, align 8
  %121 = call i32 @f2fs_clear_page_private(%struct.page* %120)
  %122 = load %struct.page*, %struct.page** %6, align 8
  %123 = call i32 @ClearPageUptodate(%struct.page* %122)
  %124 = load %struct.page*, %struct.page** %6, align 8
  %125 = call i32 @clear_cold_data(%struct.page* %124)
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = call i32 @inode_dec_dirty_pages(%struct.inode* %126)
  %128 = load %struct.inode*, %struct.inode** %7, align 8
  %129 = call i32 @f2fs_remove_dirty_inode(%struct.inode* %128)
  br label %130

130:                                              ; preds = %115, %104, %100
  %131 = load %struct.page*, %struct.page** %6, align 8
  %132 = call i32 @f2fs_put_page(%struct.page* %131, i32 1)
  br label %133

133:                                              ; preds = %130, %43
  ret void
}

declare dso_local i32 @GET_DENTRY_SLOTS(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @f2fs_update_time(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @F2FS_OPTION(i32) #1

declare dso_local i32 @f2fs_add_ino_entry(i32, i32, i32) #1

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

declare dso_local void @f2fs_delete_inline_entry(%struct.f2fs_dir_entry*, %struct.page*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local %struct.f2fs_dentry_block* @page_address(%struct.page*) #1

declare dso_local i32 @__clear_bit_le(i32, i32*) #1

declare dso_local i32 @find_next_bit_le(i32*, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_drop_nlink(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @f2fs_truncate_hole(%struct.inode*, i64, i64) #1

declare dso_local i32 @f2fs_clear_page_cache_dirty_tag(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @f2fs_clear_page_private(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @clear_cold_data(%struct.page*) #1

declare dso_local i32 @inode_dec_dirty_pages(%struct.inode*) #1

declare dso_local i32 @f2fs_remove_dirty_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
