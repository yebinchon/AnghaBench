; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_attach_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_attach_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { i8*, i8* }
%struct.ocfs2_dx_root_block = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.ocfs2_dir_block_trailer = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_DX_ROOT_SIGNATURE = common dso_local global i32 0, align 4
@OCFS2_DX_FLAG_INLINE = common dso_local global i32 0, align 4
@OCFS2_INDEXED_DIR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, i32, i32, %struct.buffer_head**)* @ocfs2_dx_dir_attach_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_dir_attach_index(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.buffer_head* %3, %struct.buffer_head* %4, %struct.ocfs2_alloc_context* %5, i32 %6, i32 %7, %struct.buffer_head** %8) #0 {
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.buffer_head**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_dinode*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.buffer_head*, align 8
  %26 = alloca %struct.ocfs2_dx_root_block*, align 8
  %27 = alloca %struct.ocfs2_dir_block_trailer*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.inode* %2, %struct.inode** %12, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %14, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.buffer_head** %8, %struct.buffer_head*** %18, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %31, %struct.ocfs2_dinode** %20, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %25, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %33 = load %struct.inode*, %struct.inode** %12, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head* %32, i32 %35)
  store %struct.ocfs2_dir_block_trailer* %36, %struct.ocfs2_dir_block_trailer** %27, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %39 = call i32 @ocfs2_claim_metadata(i32* %37, %struct.ocfs2_alloc_context* %38, i32 1, i64* %22, i32* %21, i32* %24, i64* %23)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %9
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %218

45:                                               ; preds = %9
  %46 = load %struct.inode*, %struct.inode** %12, align 8
  %47 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %23, align 8
  %51 = call i32 @trace_ocfs2_dx_dir_attach_index(i64 %49, i64 %50)
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %53 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i64, i64* %23, align 8
  %56 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_9__* %54, i64 %55)
  store %struct.buffer_head* %56, %struct.buffer_head** %25, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %58 = icmp eq %struct.buffer_head* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %19, align 4
  br label %218

62:                                               ; preds = %45
  %63 = load %struct.inode*, %struct.inode** %12, align 8
  %64 = call i32 @INODE_CACHE(%struct.inode* %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %66 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %64, %struct.buffer_head* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.inode*, %struct.inode** %12, align 8
  %69 = call i32 @INODE_CACHE(%struct.inode* %68)
  %70 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %71 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %72 = call i32 @ocfs2_journal_access_dr(i32* %67, i32 %69, %struct.buffer_head* %70, i32 %71)
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %218

78:                                               ; preds = %62
  %79 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %82, %struct.ocfs2_dx_root_block** %26, align 8
  %83 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %85 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memset(%struct.ocfs2_dx_root_block* %83, i32 0, i32 %88)
  %90 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %91 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @OCFS2_DX_ROOT_SIGNATURE, align 4
  %94 = call i32 @strcpy(i32 %92, i32 %93)
  %95 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %96 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %100 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %99, i32 0, i32 10
  store i8* %98, i8** %100, align 8
  %101 = load i64, i64* %22, align 8
  %102 = call i8* @cpu_to_le64(i64 %101)
  %103 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %104 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %103, i32 0, i32 9
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %21, align 4
  %106 = call i8* @cpu_to_le16(i32 %105)
  %107 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %108 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %107, i32 0, i32 8
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %110 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %114 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  %115 = load i64, i64* %23, align 8
  %116 = call i8* @cpu_to_le64(i64 %115)
  %117 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %118 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  %119 = load %struct.inode*, %struct.inode** %12, align 8
  %120 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %119)
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @cpu_to_le64(i64 %122)
  %124 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %125 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %17, align 4
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %129 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %128, i32 0, i32 4
  store i8* %127, i8** %129, align 8
  %130 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %27, align 8
  %131 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @le16_to_cpu(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %78
  %136 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %137 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i8* @cpu_to_le64(i64 %138)
  %140 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %141 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  br label %146

142:                                              ; preds = %78
  %143 = call i8* @cpu_to_le64(i64 0)
  %144 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %145 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %142, %135
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %146
  %150 = load i32, i32* @OCFS2_DX_FLAG_INLINE, align 4
  %151 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %152 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %156 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = call i32 @ocfs2_dx_entries_per_root(%struct.TYPE_9__* %157)
  %159 = call i8* @cpu_to_le16(i32 %158)
  %160 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %161 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  br label %172

163:                                              ; preds = %146
  %164 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %165 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %164, i32 0, i32 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = call i32 @ocfs2_extent_recs_per_dx_root(%struct.TYPE_9__* %166)
  %168 = call i8* @cpu_to_le16(i32 %167)
  %169 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %26, align 8
  %170 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i8* %168, i8** %171, align 8
  br label %172

172:                                              ; preds = %163, %149
  %173 = load i32*, i32** %11, align 8
  %174 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %175 = call i32 @ocfs2_journal_dirty(i32* %173, %struct.buffer_head* %174)
  %176 = load i32*, i32** %11, align 8
  %177 = load %struct.inode*, %struct.inode** %12, align 8
  %178 = call i32 @INODE_CACHE(%struct.inode* %177)
  %179 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %180 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %181 = call i32 @ocfs2_journal_access_di(i32* %176, i32 %178, %struct.buffer_head* %179, i32 %180)
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %19, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %172
  %185 = load i32, i32* %19, align 4
  %186 = call i32 @mlog_errno(i32 %185)
  br label %218

187:                                              ; preds = %172
  %188 = load i64, i64* %23, align 8
  %189 = call i8* @cpu_to_le64(i64 %188)
  %190 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %191 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %190, i32 0, i32 1
  store i8* %189, i8** %191, align 8
  %192 = load %struct.inode*, %struct.inode** %12, align 8
  %193 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %192)
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = call i32 @spin_lock(i32* %194)
  %196 = load i32, i32* @OCFS2_INDEXED_DIR_FL, align 4
  %197 = load %struct.inode*, %struct.inode** %12, align 8
  %198 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %197)
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %196
  store i32 %201, i32* %199, align 4
  %202 = load %struct.inode*, %struct.inode** %12, align 8
  %203 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %202)
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @cpu_to_le16(i32 %205)
  %207 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %208 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %207, i32 0, i32 0
  store i8* %206, i8** %208, align 8
  %209 = load %struct.inode*, %struct.inode** %12, align 8
  %210 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %209)
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = call i32 @spin_unlock(i32* %211)
  %213 = load i32*, i32** %11, align 8
  %214 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %215 = call i32 @ocfs2_journal_dirty(i32* %213, %struct.buffer_head* %214)
  %216 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %217 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  store %struct.buffer_head* %216, %struct.buffer_head** %217, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %25, align 8
  br label %218

218:                                              ; preds = %187, %184, %75, %59, %42
  %219 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %220 = call i32 @brelse(%struct.buffer_head* %219)
  %221 = load i32, i32* %19, align 4
  ret i32 %221
}

declare dso_local %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_claim_metadata(i32*, %struct.ocfs2_alloc_context*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @trace_ocfs2_dx_dir_attach_index(i64, i64) #1

declare dso_local %struct.TYPE_10__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_dr(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_dx_root_block*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_dx_entries_per_root(%struct.TYPE_9__*) #1

declare dso_local i32 @ocfs2_extent_recs_per_dx_root(%struct.TYPE_9__*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
