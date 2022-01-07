; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_create_xattr_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_create_xattr_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_xattr_set_ctxt = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ocfs2_dinode = type { i8*, i8* }
%struct.ocfs2_xattr_block = type { i8*, %struct.TYPE_9__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { %struct.ocfs2_xattr_tree_root }
%struct.ocfs2_xattr_tree_root = type { %struct.TYPE_10__, i64, i8* }
%struct.TYPE_10__ = type { i8*, i8*, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_XATTR_BLOCK_SIGNATURE = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEXED = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.ocfs2_xattr_set_ctxt*, i32, %struct.buffer_head**)* @ocfs2_create_xattr_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_xattr_block(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_xattr_set_ctxt* %2, i32 %3, %struct.buffer_head** %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_dinode*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_xattr_block*, align 8
  %19 = alloca %struct.ocfs2_xattr_tree_root*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.ocfs2_xattr_set_ctxt* %2, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.buffer_head** %4, %struct.buffer_head*** %10, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %23, %struct.ocfs2_dinode** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %24 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %25 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @INODE_CACHE(%struct.inode* %27)
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %31 = call i32 @ocfs2_journal_access_di(i32 %26, i32 %28, %struct.buffer_head* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %194

37:                                               ; preds = %5
  %38 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %39 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %42 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %41, i32 0, i32 1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = call i32 @ocfs2_claim_metadata(i32 %40, %struct.TYPE_12__* %43, i32 1, i32* %14, i32* %12, i32* %13, i32* %15)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %194

50:                                               ; preds = %37
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_11__* %53, i32 %54)
  store %struct.buffer_head* %55, %struct.buffer_head** %17, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %57 = icmp ne %struct.buffer_head* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %194

63:                                               ; preds = %50
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = call i32 @INODE_CACHE(%struct.inode* %64)
  %66 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %67 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %65, %struct.buffer_head* %66)
  %68 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %69 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = call i32 @INODE_CACHE(%struct.inode* %71)
  %73 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %74 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %75 = call i32 @ocfs2_journal_access_xb(i32 %70, i32 %72, %struct.buffer_head* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %63
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  br label %194

81:                                               ; preds = %63
  %82 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %85, %struct.ocfs2_xattr_block** %18, align 8
  %86 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %18, align 8
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memset(%struct.ocfs2_xattr_block* %86, i32 0, i32 %91)
  %93 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %18, align 8
  %94 = bitcast %struct.ocfs2_xattr_block* %93 to i8*
  %95 = load i32, i32* @OCFS2_XATTR_BLOCK_SIGNATURE, align 4
  %96 = call i32 @strcpy(i8* %94, i32 %95)
  %97 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %98 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %18, align 8
  %104 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %103, i32 0, i32 6
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i8* @cpu_to_le64(i32 %105)
  %107 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %18, align 8
  %108 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i8* @cpu_to_le16(i32 %109)
  %111 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %18, align 8
  %112 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = call %struct.TYPE_13__* @OCFS2_SB(%struct.TYPE_11__* %115)
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %18, align 8
  %121 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i8* @cpu_to_le64(i32 %122)
  %124 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %18, align 8
  %125 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %81
  %129 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %18, align 8
  %130 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store %struct.ocfs2_xattr_tree_root* %131, %struct.ocfs2_xattr_tree_root** %19, align 8
  %132 = call i8* @cpu_to_le32(i32 1)
  %133 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %19, align 8
  %134 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %19, align 8
  %136 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %19, align 8
  %138 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  store i64 0, i64* %139, align 8
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 0
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = call i32 @ocfs2_xattr_recs_per_xb(%struct.TYPE_11__* %142)
  %144 = call i8* @cpu_to_le16(i32 %143)
  %145 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %19, align 8
  %146 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  store i8* %144, i8** %147, align 8
  %148 = call i8* @cpu_to_le16(i32 1)
  %149 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %19, align 8
  %150 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  store i8* %148, i8** %151, align 8
  %152 = load i32, i32* @OCFS2_XATTR_INDEXED, align 4
  %153 = call i8* @cpu_to_le16(i32 %152)
  %154 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %18, align 8
  %155 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %128, %81
  %157 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %158 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %161 = call i32 @ocfs2_journal_dirty(i32 %159, %struct.buffer_head* %160)
  %162 = load i32, i32* %15, align 4
  %163 = call i8* @cpu_to_le64(i32 %162)
  %164 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %165 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load %struct.inode*, %struct.inode** %6, align 8
  %167 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %166)
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = call i32 @spin_lock(i32* %168)
  %170 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %171 = load %struct.inode*, %struct.inode** %6, align 8
  %172 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %171)
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 4
  %176 = load %struct.inode*, %struct.inode** %6, align 8
  %177 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %176)
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @cpu_to_le16(i32 %179)
  %181 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %182 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  %183 = load %struct.inode*, %struct.inode** %6, align 8
  %184 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %183)
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = call i32 @spin_unlock(i32* %185)
  %187 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %188 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %191 = call i32 @ocfs2_journal_dirty(i32 %189, %struct.buffer_head* %190)
  %192 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %193 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  store %struct.buffer_head* %192, %struct.buffer_head** %193, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  br label %194

194:                                              ; preds = %156, %78, %58, %47, %34
  %195 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %196 = call i32 @brelse(%struct.buffer_head* %195)
  %197 = load i32, i32* %11, align 4
  ret i32 %197
}

declare dso_local i32 @ocfs2_journal_access_di(i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_claim_metadata(i32, %struct.TYPE_12__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_xb(i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_xattr_block*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_13__* @OCFS2_SB(%struct.TYPE_11__*) #1

declare dso_local i32 @ocfs2_xattr_recs_per_xb(%struct.TYPE_11__*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32, %struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_14__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
