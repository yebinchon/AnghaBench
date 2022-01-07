; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_create_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_create_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { i8*, i8* }
%struct.ocfs2_inode_info = type { i32, i32, i64 }
%struct.ocfs2_super = type { i32, i32, i32, i32 }
%struct.ocfs2_refcount_block = type { i64, %struct.TYPE_4__, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8* }
%struct.ocfs2_refcount_tree = type { i64, i32 }

@OCFS2_REFCOUNT_TREE_CREATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_REFCOUNT_BLOCK_SIGNATURE = common dso_local global i32 0, align 4
@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @ocfs2_create_refcount_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_refcount_tree(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_alloc_context*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.ocfs2_inode_info*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_refcount_block*, align 8
  %13 = alloca %struct.ocfs2_refcount_tree*, align 8
  %14 = alloca %struct.ocfs2_refcount_tree*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32* null, i32** %6, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %7, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %22, %struct.ocfs2_dinode** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %23)
  store %struct.ocfs2_inode_info* %24, %struct.ocfs2_inode_info** %9, align 8
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_5__* %27)
  store %struct.ocfs2_super* %28, %struct.ocfs2_super** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %13, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %14, align 8
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call i32 @ocfs2_is_refcount_inode(%struct.inode* %29)
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %33 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @trace_ocfs2_create_refcount_tree(i64 %34)
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %37 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %36, i32 1, %struct.ocfs2_alloc_context** %7)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %265

43:                                               ; preds = %2
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %45 = load i32, i32* @OCFS2_REFCOUNT_TREE_CREATE_CREDITS, align 4
  %46 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %44, i32 %45)
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @IS_ERR(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @PTR_ERR(i32* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %265

55:                                               ; preds = %43
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = call i32 @INODE_CACHE(%struct.inode* %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %60 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %61 = call i32 @ocfs2_journal_access_di(i32* %56, i32 %58, %struct.buffer_head* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %261

67:                                               ; preds = %55
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %70 = call i32 @ocfs2_claim_metadata(i32* %68, %struct.ocfs2_alloc_context* %69, i32 1, i64* %17, i32* %15, i32* %16, i64* %18)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %261

76:                                               ; preds = %67
  %77 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %78 = load i64, i64* %18, align 8
  %79 = call %struct.ocfs2_refcount_tree* @ocfs2_allocate_refcount_tree(%struct.ocfs2_super* %77, i64 %78)
  store %struct.ocfs2_refcount_tree* %79, %struct.ocfs2_refcount_tree** %13, align 8
  %80 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %81 = icmp ne %struct.ocfs2_refcount_tree* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %261

87:                                               ; preds = %76
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i64, i64* %18, align 8
  %92 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_5__* %90, i64 %91)
  store %struct.buffer_head* %92, %struct.buffer_head** %11, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %94 = icmp ne %struct.buffer_head* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @mlog_errno(i32 %98)
  br label %261

100:                                              ; preds = %87
  %101 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %102 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %101, i32 0, i32 1
  %103 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %104 = call i32 @ocfs2_set_new_buffer_uptodate(i32* %102, %struct.buffer_head* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %107 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %106, i32 0, i32 1
  %108 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %109 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %110 = call i32 @ocfs2_journal_access_rb(i32* %105, i32* %107, %struct.buffer_head* %108, i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @mlog_errno(i32 %114)
  br label %261

116:                                              ; preds = %100
  %117 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %118 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %120, %struct.ocfs2_refcount_block** %12, align 8
  %121 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %122 = load %struct.inode*, %struct.inode** %3, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memset(%struct.ocfs2_refcount_block* %121, i32 0, i32 %126)
  %128 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %129 = bitcast %struct.ocfs2_refcount_block* %128 to i8*
  %130 = load i32, i32* @OCFS2_REFCOUNT_BLOCK_SIGNATURE, align 4
  %131 = call i32 @strcpy(i8* %129, i32 %130)
  %132 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %133 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %137 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %136, i32 0, i32 7
  store i8* %135, i8** %137, align 8
  %138 = load i64, i64* %17, align 8
  %139 = call i8* @cpu_to_le64(i64 %138)
  %140 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %141 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %140, i32 0, i32 6
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* %15, align 4
  %143 = call i8* @cpu_to_le16(i32 %142)
  %144 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %145 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %147 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @cpu_to_le32(i32 %148)
  %150 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %151 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load i64, i64* %18, align 8
  %153 = call i8* @cpu_to_le64(i64 %152)
  %154 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %155 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  %156 = call i8* @cpu_to_le32(i32 1)
  %157 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %158 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %160 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ocfs2_refcount_recs_per_rb(i32 %161)
  %163 = call i8* @cpu_to_le16(i32 %162)
  %164 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %165 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  store i8* %163, i8** %166, align 8
  %167 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %168 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %167, i32 0, i32 1
  %169 = call i32 @spin_lock(i32* %168)
  %170 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %171 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = sext i32 %172 to i64
  %175 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %176 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %178 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %177, i32 0, i32 1
  %179 = call i32 @spin_unlock(i32* %178)
  %180 = load i32*, i32** %6, align 8
  %181 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %182 = call i32 @ocfs2_journal_dirty(i32* %180, %struct.buffer_head* %181)
  %183 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %184 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %183, i32 0, i32 0
  %185 = call i32 @spin_lock(i32* %184)
  %186 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %187 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %188 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %192 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @cpu_to_le16(i32 %193)
  %195 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %196 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load i64, i64* %18, align 8
  %198 = call i8* @cpu_to_le64(i64 %197)
  %199 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %200 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  %201 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %202 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %201, i32 0, i32 0
  %203 = call i32 @spin_unlock(i32* %202)
  %204 = load i64, i64* %18, align 8
  %205 = call i32 @trace_ocfs2_create_refcount_tree_blkno(i64 %204)
  %206 = load i32*, i32** %6, align 8
  %207 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %208 = call i32 @ocfs2_journal_dirty(i32* %206, %struct.buffer_head* %207)
  %209 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %210 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i64 @le32_to_cpu(i64 %211)
  %213 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %214 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  %215 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %216 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %217 = load i64, i64* %18, align 8
  %218 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %219 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @ocfs2_init_refcount_tree_lock(%struct.ocfs2_super* %215, %struct.ocfs2_refcount_tree* %216, i64 %217, i64 %220)
  %222 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %223 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %222, i32 0, i32 1
  %224 = call i32 @spin_lock(i32* %223)
  %225 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %226 = load i64, i64* %18, align 8
  %227 = call %struct.ocfs2_refcount_tree* @ocfs2_find_refcount_tree(%struct.ocfs2_super* %225, i64 %226)
  store %struct.ocfs2_refcount_tree* %227, %struct.ocfs2_refcount_tree** %14, align 8
  %228 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %229 = icmp ne %struct.ocfs2_refcount_tree* %228, null
  br i1 %229, label %230, label %238

230:                                              ; preds = %116
  %231 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %232 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %235 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %233, %236
  br label %238

238:                                              ; preds = %230, %116
  %239 = phi i1 [ false, %116 ], [ %237, %230 ]
  %240 = zext i1 %239 to i32
  %241 = call i32 @BUG_ON(i32 %240)
  %242 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %243 = icmp ne %struct.ocfs2_refcount_tree* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %238
  %245 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %246 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %247 = call i32 @ocfs2_erase_refcount_tree_from_list_no_lock(%struct.ocfs2_super* %245, %struct.ocfs2_refcount_tree* %246)
  br label %248

248:                                              ; preds = %244, %238
  %249 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %250 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %251 = call i32 @ocfs2_insert_refcount_tree(%struct.ocfs2_super* %249, %struct.ocfs2_refcount_tree* %250)
  %252 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %253 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %252, i32 0, i32 1
  %254 = call i32 @spin_unlock(i32* %253)
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %13, align 8
  %255 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %256 = icmp ne %struct.ocfs2_refcount_tree* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %248
  %258 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %259 = call i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree* %258)
  br label %260

260:                                              ; preds = %257, %248
  br label %261

261:                                              ; preds = %260, %113, %95, %82, %73, %64
  %262 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %263 = load i32*, i32** %6, align 8
  %264 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %262, i32* %263)
  br label %265

265:                                              ; preds = %261, %50, %40
  %266 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %267 = icmp ne %struct.ocfs2_refcount_tree* %266, null
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %270 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %269, i32 0, i32 1
  %271 = call i32 @ocfs2_metadata_cache_exit(i32* %270)
  %272 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %13, align 8
  %273 = call i32 @kfree(%struct.ocfs2_refcount_tree* %272)
  br label %274

274:                                              ; preds = %268, %265
  %275 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %276 = call i32 @brelse(%struct.buffer_head* %275)
  %277 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %278 = icmp ne %struct.ocfs2_alloc_context* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %274
  %280 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %281 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %280)
  br label %282

282:                                              ; preds = %279, %274
  %283 = load i32, i32* %5, align 4
  ret i32 %283
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_5__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_create_refcount_tree(i64) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_claim_metadata(i32*, %struct.ocfs2_alloc_context*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local %struct.ocfs2_refcount_tree* @ocfs2_allocate_refcount_tree(%struct.ocfs2_super*, i64) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, i32*, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_refcount_block*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_refcount_recs_per_rb(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_create_refcount_tree_blkno(i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @ocfs2_init_refcount_tree_lock(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i64, i64) #1

declare dso_local %struct.ocfs2_refcount_tree* @ocfs2_find_refcount_tree(%struct.ocfs2_super*, i64) #1

declare dso_local i32 @ocfs2_erase_refcount_tree_from_list_no_lock(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @ocfs2_insert_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_metadata_cache_exit(i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
