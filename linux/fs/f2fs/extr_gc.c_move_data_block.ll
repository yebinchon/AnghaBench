; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_move_data_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_move_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.f2fs_io_info = type { i32, i32, i64, i64, %struct.TYPE_12__*, %struct.page*, i32, i32, %struct.page*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.page = type { i64, i64 }
%struct.dnode_of_data = type { i64, %struct.page*, i32, i32 }
%struct.f2fs_summary = type { i32 }
%struct.node_info = type { i32 }
%struct.TYPE_11__ = type { i32* }

@REQ_OP_READ = common dso_local global i32 0, align 4
@COLD = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@LFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GC_FAILURE_ATOMIC = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@LOOKUP_NODE = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@FGP_LOCK = common dso_local global i32 0, align 4
@FGP_CREAT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@F2FS_DIRTY_META = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@FS_GC_DATA_IO = common dso_local global i32 0, align 4
@F2FS_BLKSIZE = common dso_local global i32 0, align 4
@FI_APPEND_WRITE = common dso_local global i32 0, align 4
@FI_FIRST_BLOCK_WRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, i32, i32)* @move_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_data_block(%struct.inode* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.f2fs_io_info, align 8
  %13 = alloca %struct.dnode_of_data, align 8
  %14 = alloca %struct.f2fs_summary, align 4
  %15 = alloca %struct.node_info, align 4
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call %struct.TYPE_12__* @F2FS_I_SB(%struct.inode* %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %25, align 8
  %28 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  store %struct.page* null, %struct.page** %28, align 8
  %29 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 6
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 7
  %31 = load i32, i32* @REQ_OP_READ, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 8
  store %struct.page* null, %struct.page** %32, align 8
  %33 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 9
  %34 = load i32, i32* @COLD, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 10
  %36 = load i32, i32* @DATA, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 11
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %37, align 8
  store i32 0, i32* %19, align 4
  %41 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load i32, i32* @LFS, align 4
  %44 = call i32 @test_opt(%struct.TYPE_12__* %42, i32 %43)
  store i32 %44, i32* %20, align 4
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call %struct.page* @f2fs_grab_cache_page(i64 %47, i64 %48, i32 0)
  store %struct.page* %49, %struct.page** %16, align 8
  %50 = load %struct.page*, %struct.page** %16, align 8
  %51 = icmp ne %struct.page* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %5
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %347

55:                                               ; preds = %5
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call %struct.TYPE_12__* @F2FS_I_SB(%struct.inode* %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @check_valid_map(%struct.TYPE_12__* %57, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %19, align 4
  br label %343

65:                                               ; preds = %55
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call i64 @f2fs_is_atomic_file(%struct.inode* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = call %struct.TYPE_11__* @F2FS_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @GC_FAILURE_ATOMIC, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = call %struct.TYPE_12__* @F2FS_I_SB(%struct.inode* %78)
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %19, align 4
  br label %343

89:                                               ; preds = %65
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = call i64 @f2fs_is_pinned_file(%struct.inode* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  %95 = call i32 @f2fs_pin_file_control(%struct.inode* %94, i32 1)
  %96 = load i32, i32* @EAGAIN, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %19, align 4
  br label %343

98:                                               ; preds = %89
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = call i32 @set_new_dnode(%struct.dnode_of_data* %13, %struct.inode* %99, i32* null, i32* null, i32 0)
  %101 = load i64, i64* %8, align 8
  %102 = load i32, i32* @LOOKUP_NODE, align 4
  %103 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %13, i64 %101, i32 %102)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %343

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @NULL_ADDR, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %107
  %116 = load %struct.page*, %struct.page** %16, align 8
  %117 = call i32 @ClearPageUptodate(%struct.page* %116)
  %118 = load i32, i32* @ENOENT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %19, align 4
  br label %341

120:                                              ; preds = %107
  %121 = load %struct.page*, %struct.page** %16, align 8
  %122 = load i32, i32* @DATA, align 4
  %123 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %121, i32 %122, i32 1, i32 1)
  %124 = load %struct.inode*, %struct.inode** %7, align 8
  %125 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @f2fs_wait_on_block_writeback(%struct.inode* %124, i64 %126)
  %128 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @f2fs_get_node_info(%struct.TYPE_12__* %129, i32 %131, %struct.node_info* %15)
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %120
  br label %341

136:                                              ; preds = %120
  %137 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds %struct.node_info, %struct.node_info* %15, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @set_summary(%struct.f2fs_summary* %14, i32 %138, i32 %140, i32 %142)
  %144 = load %struct.page*, %struct.page** %16, align 8
  %145 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 8
  store %struct.page* %144, %struct.page** %145, align 8
  %146 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 3
  store i64 %147, i64* %148, align 8
  %149 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = load i32, i32* %20, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %136
  %153 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = call i32 @down_write(i32* %155)
  br label %157

157:                                              ; preds = %152, %136
  %158 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = call i64 @META_MAPPING(%struct.TYPE_12__* %159)
  %161 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = call %struct.page* @f2fs_grab_cache_page(i64 %160, i64 %162, i32 0)
  store %struct.page* %163, %struct.page** %17, align 8
  %164 = load %struct.page*, %struct.page** %17, align 8
  %165 = icmp ne %struct.page* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %157
  br label %332

167:                                              ; preds = %157
  %168 = load %struct.page*, %struct.page** %17, align 8
  %169 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  store %struct.page* %168, %struct.page** %169, align 8
  %170 = load %struct.page*, %struct.page** %17, align 8
  %171 = call i32 @PageUptodate(%struct.page* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %206, label %173

173:                                              ; preds = %167
  %174 = call i32 @f2fs_submit_page_bio(%struct.f2fs_io_info* %12)
  store i32 %174, i32* %19, align 4
  %175 = load i32, i32* %19, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.page*, %struct.page** %17, align 8
  %179 = call i32 @f2fs_put_page(%struct.page* %178, i32 1)
  br label %332

180:                                              ; preds = %173
  %181 = load %struct.page*, %struct.page** %17, align 8
  %182 = call i32 @lock_page(%struct.page* %181)
  %183 = load %struct.page*, %struct.page** %17, align 8
  %184 = getelementptr inbounds %struct.page, %struct.page* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = call i64 @META_MAPPING(%struct.TYPE_12__* %187)
  %189 = icmp ne i64 %185, %188
  br i1 %189, label %195, label %190

190:                                              ; preds = %180
  %191 = load %struct.page*, %struct.page** %17, align 8
  %192 = call i32 @PageUptodate(%struct.page* %191)
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  br label %195

195:                                              ; preds = %190, %180
  %196 = phi i1 [ true, %180 ], [ %194, %190 ]
  %197 = zext i1 %196 to i32
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load i32, i32* @EIO, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %19, align 4
  %203 = load %struct.page*, %struct.page** %17, align 8
  %204 = call i32 @f2fs_put_page(%struct.page* %203, i32 1)
  br label %332

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %205, %167
  %207 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %212 = call i32 @f2fs_allocate_data_block(%struct.TYPE_12__* %208, i32* null, i64 %210, i64* %18, %struct.f2fs_summary* %14, i32 %211, i32* null, i32 0)
  %213 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = call i64 @META_MAPPING(%struct.TYPE_12__* %214)
  %216 = load i64, i64* %18, align 8
  %217 = load i32, i32* @FGP_LOCK, align 4
  %218 = load i32, i32* @FGP_CREAT, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @GFP_NOFS, align 4
  %221 = call %struct.page* @f2fs_pagecache_get_page(i64 %215, i64 %216, i32 %219, i32 %220)
  %222 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  store %struct.page* %221, %struct.page** %222, align 8
  %223 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  %224 = load %struct.page*, %struct.page** %223, align 8
  %225 = icmp ne %struct.page* %224, null
  br i1 %225, label %231, label %226

226:                                              ; preds = %206
  %227 = load i32, i32* @ENOMEM, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %19, align 4
  %229 = load %struct.page*, %struct.page** %17, align 8
  %230 = call i32 @f2fs_put_page(%struct.page* %229, i32 1)
  br label %321

231:                                              ; preds = %206
  %232 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  %233 = load %struct.page*, %struct.page** %232, align 8
  %234 = load i32, i32* @DATA, align 4
  %235 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %233, i32 %234, i32 1, i32 1)
  %236 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  %237 = load %struct.page*, %struct.page** %236, align 8
  %238 = call i32 @page_address(%struct.page* %237)
  %239 = load %struct.page*, %struct.page** %17, align 8
  %240 = call i32 @page_address(%struct.page* %239)
  %241 = load i32, i32* @PAGE_SIZE, align 4
  %242 = call i32 @memcpy(i32 %238, i32 %240, i32 %241)
  %243 = load %struct.page*, %struct.page** %17, align 8
  %244 = call i32 @f2fs_put_page(%struct.page* %243, i32 1)
  %245 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %245, align 8
  %247 = call i64 @META_MAPPING(%struct.TYPE_12__* %246)
  %248 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @invalidate_mapping_pages(i64 %247, i64 %249, i64 %251)
  %253 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  %254 = load %struct.page*, %struct.page** %253, align 8
  %255 = call i32 @set_page_dirty(%struct.page* %254)
  %256 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  %257 = load %struct.page*, %struct.page** %256, align 8
  %258 = call i64 @clear_page_dirty_for_io(%struct.page* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %231
  %261 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %261, align 8
  %263 = load i32, i32* @F2FS_DIRTY_META, align 4
  %264 = call i32 @dec_page_count(%struct.TYPE_12__* %262, i32 %263)
  br label %265

265:                                              ; preds = %260, %231
  %266 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  %267 = load %struct.page*, %struct.page** %266, align 8
  %268 = call i32 @set_page_writeback(%struct.page* %267)
  %269 = load %struct.page*, %struct.page** %16, align 8
  %270 = call i32 @ClearPageError(%struct.page* %269)
  %271 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 1
  %272 = load %struct.page*, %struct.page** %271, align 8
  %273 = load i32, i32* @NODE, align 4
  %274 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %272, i32 %273, i32 1, i32 1)
  %275 = load i32, i32* @REQ_OP_WRITE, align 4
  %276 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 7
  store i32 %275, i32* %276, align 4
  %277 = load i32, i32* @REQ_SYNC, align 4
  %278 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 6
  store i32 %277, i32* %278, align 8
  %279 = load i64, i64* %18, align 8
  %280 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 2
  store i64 %279, i64* %280, align 8
  %281 = call i32 @f2fs_submit_page_write(%struct.f2fs_io_info* %12)
  %282 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %265
  %286 = load i32, i32* @EAGAIN, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %19, align 4
  %288 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  %289 = load %struct.page*, %struct.page** %288, align 8
  %290 = call i64 @PageWriteback(%struct.page* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  %294 = load %struct.page*, %struct.page** %293, align 8
  %295 = call i32 @end_page_writeback(%struct.page* %294)
  br label %296

296:                                              ; preds = %292, %285
  br label %317

297:                                              ; preds = %265
  %298 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %298, align 8
  %300 = load i32, i32* @FS_GC_DATA_IO, align 4
  %301 = load i32, i32* @F2FS_BLKSIZE, align 4
  %302 = call i32 @f2fs_update_iostat(%struct.TYPE_12__* %299, i32 %300, i32 %301)
  %303 = load i64, i64* %18, align 8
  %304 = call i32 @f2fs_update_data_blkaddr(%struct.dnode_of_data* %13, i64 %303)
  %305 = load %struct.inode*, %struct.inode** %7, align 8
  %306 = load i32, i32* @FI_APPEND_WRITE, align 4
  %307 = call i32 @set_inode_flag(%struct.inode* %305, i32 %306)
  %308 = load %struct.page*, %struct.page** %16, align 8
  %309 = getelementptr inbounds %struct.page, %struct.page* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %297
  %313 = load %struct.inode*, %struct.inode** %7, align 8
  %314 = load i32, i32* @FI_FIRST_BLOCK_WRITTEN, align 4
  %315 = call i32 @set_inode_flag(%struct.inode* %313, i32 %314)
  br label %316

316:                                              ; preds = %312, %297
  br label %317

317:                                              ; preds = %316, %296
  %318 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 5
  %319 = load %struct.page*, %struct.page** %318, align 8
  %320 = call i32 @f2fs_put_page(%struct.page* %319, i32 1)
  br label %321

321:                                              ; preds = %317, %226
  %322 = load i32, i32* %19, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %325, align 8
  %327 = load i64, i64* %18, align 8
  %328 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 3
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @f2fs_do_replace_block(%struct.TYPE_12__* %326, %struct.f2fs_summary* %14, i64 %327, i64 %329, i32 1, i32 1)
  br label %331

331:                                              ; preds = %324, %321
  br label %332

332:                                              ; preds = %331, %200, %177, %166
  %333 = load i32, i32* %20, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %332
  %336 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %12, i32 0, i32 4
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 0
  %339 = call i32 @up_write(i32* %338)
  br label %340

340:                                              ; preds = %335, %332
  br label %341

341:                                              ; preds = %340, %135, %115
  %342 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %13)
  br label %343

343:                                              ; preds = %341, %106, %93, %69, %62
  %344 = load %struct.page*, %struct.page** %16, align 8
  %345 = call i32 @f2fs_put_page(%struct.page* %344, i32 1)
  %346 = load i32, i32* %19, align 4
  store i32 %346, i32* %6, align 4
  br label %347

347:                                              ; preds = %343, %52
  %348 = load i32, i32* %6, align 4
  ret i32 %348
}

declare dso_local %struct.TYPE_12__* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @test_opt(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.page* @f2fs_grab_cache_page(i64, i64, i32) #1

declare dso_local i32 @check_valid_map(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local %struct.TYPE_11__* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @f2fs_is_pinned_file(%struct.inode*) #1

declare dso_local i32 @f2fs_pin_file_control(%struct.inode*, i32) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @f2fs_wait_on_block_writeback(%struct.inode*, i64) #1

declare dso_local i32 @f2fs_get_node_info(%struct.TYPE_12__*, i32, %struct.node_info*) #1

declare dso_local i32 @set_summary(%struct.f2fs_summary*, i32, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @META_MAPPING(%struct.TYPE_12__*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_submit_page_bio(%struct.f2fs_io_info*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @f2fs_allocate_data_block(%struct.TYPE_12__*, i32*, i64, i64*, %struct.f2fs_summary*, i32, i32*, i32) #1

declare dso_local %struct.page* @f2fs_pagecache_get_page(i64, i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @invalidate_mapping_pages(i64, i64, i64) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i64 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @dec_page_count(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @f2fs_submit_page_write(%struct.f2fs_io_info*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @f2fs_update_iostat(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @f2fs_update_data_blkaddr(%struct.dnode_of_data*, i64) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_do_replace_block(%struct.TYPE_12__*, %struct.f2fs_summary*, i64, i64, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
