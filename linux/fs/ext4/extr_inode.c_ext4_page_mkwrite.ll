; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.page*, %struct.vm_area_struct* }
%struct.page = type { i64, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.vm_area_struct = type { %struct.file* }
%struct.file = type { i32 }
%struct.inode = type { i32, %struct.address_space* }
%struct.TYPE_2__ = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@DELALLOC = common dso_local global i32 0, align 4
@ext4_da_get_block_prep = common dso_local global i32* null, align 8
@ENOSPC = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@ext4_bh_unmapped = common dso_local global i32 0, align 4
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4
@ext4_get_block_unwritten = common dso_local global i32* null, align 8
@ext4_get_block = common dso_local global i32* null, align 8
@EXT4_HT_WRITE_PAGE = common dso_local global i32 0, align 4
@do_journal_get_write_access = common dso_local global i32 0, align 4
@EXT4_STATE_JDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %16 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 1
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  store %struct.vm_area_struct* %18, %struct.vm_area_struct** %4, align 8
  %19 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %20 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %19, i32 0, i32 0
  %21 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %21, %struct.page** %5, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load %struct.file*, %struct.file** %23, align 8
  store %struct.file* %24, %struct.file** %10, align 8
  %25 = load %struct.file*, %struct.file** %10, align 8
  %26 = call %struct.inode* @file_inode(%struct.file* %25)
  store %struct.inode* %26, %struct.inode** %11, align 8
  %27 = load %struct.inode*, %struct.inode** %11, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load %struct.address_space*, %struct.address_space** %28, align 8
  store %struct.address_space* %29, %struct.address_space** %12, align 8
  store i32 0, i32* %15, align 4
  %30 = load %struct.inode*, %struct.inode** %11, align 8
  %31 = call i32 @IS_IMMUTABLE(%struct.inode* %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %35, i32* %2, align 4
  br label %221

36:                                               ; preds = %1
  %37 = load %struct.inode*, %struct.inode** %11, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @sb_start_pagefault(i32 %39)
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 0
  %43 = load %struct.file*, %struct.file** %42, align 8
  %44 = call i32 @file_update_time(%struct.file* %43)
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @down_read(i32* %47)
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = call i32 @ext4_convert_inline_data(%struct.inode* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %208

54:                                               ; preds = %36
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DELALLOC, align 4
  %59 = call i64 @test_opt(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %54
  %62 = load %struct.inode*, %struct.inode** %11, align 8
  %63 = call i64 @ext4_should_journal_data(%struct.inode* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %91, label %65

65:                                               ; preds = %61
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ext4_nonda_switch(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %88, %71
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %74 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %75 = load i32*, i32** @ext4_da_get_block_prep, align 8
  %76 = call i32 @block_page_mkwrite(%struct.vm_area_struct* %73, %struct.vm_fault* %74, i32* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @ENOSPC, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.inode*, %struct.inode** %11, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @ext4_should_retry_alloc(i32 %85, i32* %15)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %82, %77
  %89 = phi i1 [ false, %77 ], [ %87, %82 ]
  br i1 %89, label %72, label %90

90:                                               ; preds = %88
  br label %208

91:                                               ; preds = %65, %61, %54
  %92 = load %struct.page*, %struct.page** %5, align 8
  %93 = call i32 @lock_page(%struct.page* %92)
  %94 = load %struct.inode*, %struct.inode** %11, align 8
  %95 = call i64 @i_size_read(%struct.inode* %94)
  store i64 %95, i64* %6, align 8
  %96 = load %struct.page*, %struct.page** %5, align 8
  %97 = getelementptr inbounds %struct.page, %struct.page* %96, i32 0, i32 1
  %98 = load %struct.address_space*, %struct.address_space** %97, align 8
  %99 = load %struct.address_space*, %struct.address_space** %12, align 8
  %100 = icmp ne %struct.address_space* %98, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %91
  %102 = load %struct.page*, %struct.page** %5, align 8
  %103 = call i64 @page_offset(%struct.page* %102)
  %104 = load i64, i64* %6, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %101, %91
  %107 = load %struct.page*, %struct.page** %5, align 8
  %108 = call i32 @unlock_page(%struct.page* %107)
  %109 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %109, i32* %9, align 4
  br label %211

110:                                              ; preds = %101
  %111 = load %struct.page*, %struct.page** %5, align 8
  %112 = getelementptr inbounds %struct.page, %struct.page* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i32, i32* @PAGE_SHIFT, align 4
  %116 = zext i32 %115 to i64
  %117 = lshr i64 %114, %116
  %118 = icmp eq i64 %113, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %110
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* @PAGE_MASK, align 8
  %122 = xor i64 %121, -1
  %123 = and i64 %120, %122
  store i64 %123, i64* %7, align 8
  br label %126

124:                                              ; preds = %110
  %125 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %124, %119
  %127 = load %struct.page*, %struct.page** %5, align 8
  %128 = call i64 @page_has_buffers(%struct.page* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = load %struct.page*, %struct.page** %5, align 8
  %132 = call i32 @page_buffers(%struct.page* %131)
  %133 = load i64, i64* %7, align 8
  %134 = load i32, i32* @ext4_bh_unmapped, align 4
  %135 = call i64 @ext4_walk_page_buffers(i32* null, i32 %132, i32 0, i64 %133, i32* null, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %130
  %138 = load %struct.page*, %struct.page** %5, align 8
  %139 = call i32 @wait_for_stable_page(%struct.page* %138)
  %140 = load i32, i32* @VM_FAULT_LOCKED, align 4
  store i32 %140, i32* %9, align 4
  br label %211

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %126
  %143 = load %struct.page*, %struct.page** %5, align 8
  %144 = call i32 @unlock_page(%struct.page* %143)
  %145 = load %struct.inode*, %struct.inode** %11, align 8
  %146 = call i64 @ext4_should_dioread_nolock(%struct.inode* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32*, i32** @ext4_get_block_unwritten, align 8
  store i32* %149, i32** %14, align 8
  br label %152

150:                                              ; preds = %142
  %151 = load i32*, i32** @ext4_get_block, align 8
  store i32* %151, i32** %14, align 8
  br label %152

152:                                              ; preds = %150, %148
  br label %153

153:                                              ; preds = %206, %152
  %154 = load %struct.inode*, %struct.inode** %11, align 8
  %155 = load i32, i32* @EXT4_HT_WRITE_PAGE, align 4
  %156 = load %struct.inode*, %struct.inode** %11, align 8
  %157 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %156)
  %158 = call i32* @ext4_journal_start(%struct.inode* %154, i32 %155, i32 %157)
  store i32* %158, i32** %13, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = call i64 @IS_ERR(i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %153
  %163 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %163, i32* %9, align 4
  br label %211

164:                                              ; preds = %153
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %166 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %167 = load i32*, i32** %14, align 8
  %168 = call i32 @block_page_mkwrite(%struct.vm_area_struct* %165, %struct.vm_fault* %166, i32* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %193, label %171

171:                                              ; preds = %164
  %172 = load %struct.inode*, %struct.inode** %11, align 8
  %173 = call i64 @ext4_should_journal_data(%struct.inode* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %193

175:                                              ; preds = %171
  %176 = load i32*, i32** %13, align 8
  %177 = load %struct.page*, %struct.page** %5, align 8
  %178 = call i32 @page_buffers(%struct.page* %177)
  %179 = load i64, i64* @PAGE_SIZE, align 8
  %180 = load i32, i32* @do_journal_get_write_access, align 4
  %181 = call i64 @ext4_walk_page_buffers(i32* %176, i32 %178, i32 0, i64 %179, i32* null, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %175
  %184 = load %struct.page*, %struct.page** %5, align 8
  %185 = call i32 @unlock_page(%struct.page* %184)
  %186 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %186, i32* %9, align 4
  %187 = load i32*, i32** %13, align 8
  %188 = call i32 @ext4_journal_stop(i32* %187)
  br label %211

189:                                              ; preds = %175
  %190 = load %struct.inode*, %struct.inode** %11, align 8
  %191 = load i32, i32* @EXT4_STATE_JDATA, align 4
  %192 = call i32 @ext4_set_inode_state(%struct.inode* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %171, %164
  %194 = load i32*, i32** %13, align 8
  %195 = call i32 @ext4_journal_stop(i32* %194)
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @ENOSPC, align 4
  %198 = sub nsw i32 0, %197
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %193
  %201 = load %struct.inode*, %struct.inode** %11, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @ext4_should_retry_alloc(i32 %203, i32* %15)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %153

207:                                              ; preds = %200, %193
  br label %208

208:                                              ; preds = %207, %90, %53
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @block_page_mkwrite_return(i32 %209)
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %208, %183, %162, %137, %106
  %212 = load %struct.inode*, %struct.inode** %11, align 8
  %213 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %212)
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = call i32 @up_read(i32* %214)
  %216 = load %struct.inode*, %struct.inode** %11, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @sb_end_pagefault(i32 %218)
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %211, %34
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_convert_inline_data(%struct.inode*) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_nonda_switch(i32) #1

declare dso_local i32 @block_page_mkwrite(%struct.vm_area_struct*, %struct.vm_fault*, i32*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local i64 @ext4_walk_page_buffers(i32*, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

declare dso_local i64 @ext4_should_dioread_nolock(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @block_page_mkwrite_return(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
