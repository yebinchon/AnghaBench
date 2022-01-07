; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_vm_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_vm_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_3__*, %struct.page* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i64, i64 }
%struct.inode = type { i64, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.dnode_of_data = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_PRE_AIO = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@APP_MAPPED_IO = common dso_local global i32 0, align 4
@F2FS_BLKSIZE = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @f2fs_vm_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_vm_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.dnode_of_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 1
  %11 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %11, %struct.page** %3, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inode* @file_inode(i32 %16)
  store %struct.inode* %17, %struct.inode** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %18)
  store %struct.f2fs_sb_info* %19, %struct.f2fs_sb_info** %5, align 8
  %20 = bitcast %struct.dnode_of_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %22 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %169

28:                                               ; preds = %1
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %30 = call i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %169

35:                                               ; preds = %28
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sb_start_pagefault(i32 %38)
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call i32 @f2fs_has_inline_data(%struct.inode* %41)
  %43 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %40, i32 %42)
  %44 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %45 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @file_update_time(i32 %48)
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @down_read(i32* %52)
  %54 = load %struct.page*, %struct.page** %3, align 8
  %55 = call i32 @lock_page(%struct.page* %54)
  %56 = load %struct.page*, %struct.page** %3, align 8
  %57 = getelementptr inbounds %struct.page, %struct.page* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %74, label %63

63:                                               ; preds = %35
  %64 = load %struct.page*, %struct.page** %3, align 8
  %65 = call i32 @page_offset(%struct.page* %64)
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = call i32 @i_size_read(%struct.inode* %66)
  %68 = icmp sgt i32 %65, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load %struct.page*, %struct.page** %3, align 8
  %71 = call i32 @PageUptodate(%struct.page* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %69, %63, %35
  %75 = phi i1 [ true, %63 ], [ true, %35 ], [ %73, %69 ]
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.page*, %struct.page** %3, align 8
  %81 = call i32 @unlock_page(%struct.page* %80)
  %82 = load i32, i32* @EFAULT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %156

84:                                               ; preds = %74
  %85 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %86 = load i32, i32* @F2FS_GET_BLOCK_PRE_AIO, align 4
  %87 = call i32 @__do_map_lock(%struct.f2fs_sb_info* %85, i32 %86, i32 1)
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = call i32 @set_new_dnode(%struct.dnode_of_data* %6, %struct.inode* %88, i32* null, i32* null, i32 0)
  %90 = load %struct.page*, %struct.page** %3, align 8
  %91 = getelementptr inbounds %struct.page, %struct.page* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @f2fs_get_block(%struct.dnode_of_data* %6, i64 %92)
  store i32 %93, i32* %7, align 4
  %94 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %6)
  %95 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %96 = load i32, i32* @F2FS_GET_BLOCK_PRE_AIO, align 4
  %97 = call i32 @__do_map_lock(%struct.f2fs_sb_info* %95, i32 %96, i32 0)
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %84
  %101 = load %struct.page*, %struct.page** %3, align 8
  %102 = call i32 @unlock_page(%struct.page* %101)
  br label %156

103:                                              ; preds = %84
  %104 = load %struct.page*, %struct.page** %3, align 8
  %105 = load i32, i32* @DATA, align 4
  %106 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %104, i32 %105, i32 0, i32 1)
  %107 = load %struct.inode*, %struct.inode** %4, align 8
  %108 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %6, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @f2fs_wait_on_block_writeback(%struct.inode* %107, i32 %109)
  %111 = load %struct.page*, %struct.page** %3, align 8
  %112 = call i64 @PageMappedToDisk(%struct.page* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %156

115:                                              ; preds = %103
  %116 = load %struct.page*, %struct.page** %3, align 8
  %117 = getelementptr inbounds %struct.page, %struct.page* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* @PAGE_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load %struct.inode*, %struct.inode** %4, align 8
  %124 = call i32 @i_size_read(%struct.inode* %123)
  %125 = icmp sgt i32 %122, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %115
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = call i32 @i_size_read(%struct.inode* %127)
  %129 = load i32, i32* @PAGE_MASK, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  store i32 %131, i32* %8, align 4
  %132 = load %struct.page*, %struct.page** %3, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = call i32 @zero_user_segment(%struct.page* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %126, %115
  %137 = load %struct.page*, %struct.page** %3, align 8
  %138 = call i32 @set_page_dirty(%struct.page* %137)
  %139 = load %struct.page*, %struct.page** %3, align 8
  %140 = call i32 @PageUptodate(%struct.page* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %136
  %143 = load %struct.page*, %struct.page** %3, align 8
  %144 = call i32 @SetPageUptodate(%struct.page* %143)
  br label %145

145:                                              ; preds = %142, %136
  %146 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %147 = load i32, i32* @APP_MAPPED_IO, align 4
  %148 = load i32, i32* @F2FS_BLKSIZE, align 4
  %149 = call i32 @f2fs_update_iostat(%struct.f2fs_sb_info* %146, i32 %147, i32 %148)
  %150 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %151 = load i32, i32* @REQ_TIME, align 4
  %152 = call i32 @f2fs_update_time(%struct.f2fs_sb_info* %150, i32 %151)
  %153 = load %struct.page*, %struct.page** %3, align 8
  %154 = load i32, i32* @DATA, align 4
  %155 = call i32 @trace_f2fs_vm_page_mkwrite(%struct.page* %153, i32 %154)
  br label %156

156:                                              ; preds = %145, %114, %100, %79
  %157 = load %struct.inode*, %struct.inode** %4, align 8
  %158 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %157)
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = call i32 @up_read(i32* %159)
  %161 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %162 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %6, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %161, i32 %163)
  %165 = load %struct.inode*, %struct.inode** %4, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @sb_end_pagefault(i32 %167)
  br label %169

169:                                              ; preds = %156, %32, %25
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @block_page_mkwrite_return(i32 %170)
  ret i32 %171
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info*) #1

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i32 @file_update_time(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @__do_map_lock(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_block(%struct.dnode_of_data*, i64) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @f2fs_wait_on_block_writeback(%struct.inode*, i32) #1

declare dso_local i64 @PageMappedToDisk(%struct.page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_update_iostat(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @f2fs_update_time(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @trace_f2fs_vm_page_mkwrite(%struct.page*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

declare dso_local i32 @block_page_mkwrite_return(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
