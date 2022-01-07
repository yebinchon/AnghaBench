; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_inline.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_reflink = type { %struct.TYPE_12__*, i32, %struct.TYPE_11__*, i32, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ocfs2_super = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.ocfs2_dinode = type { i8*, %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32 }
%struct.ocfs2_xattr_header = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_xattr_value_buf = type { i32 (i32*, i32, %struct.TYPE_12__*, i32)*, %struct.TYPE_12__* }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@ocfs2_get_xattr_value_root = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xattr_reflink*)* @ocfs2_reflink_xattr_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reflink_xattr_inline(%struct.ocfs2_xattr_reflink* %0) #0 {
  %2 = alloca %struct.ocfs2_xattr_reflink*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_xattr_header*, align 8
  %11 = alloca %struct.ocfs2_xattr_header*, align 8
  %12 = alloca %struct.ocfs2_alloc_context*, align 8
  %13 = alloca %struct.ocfs2_inode_info*, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  %15 = alloca %struct.ocfs2_xattr_value_buf, align 8
  %16 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.ocfs2_xattr_reflink* %0, %struct.ocfs2_xattr_reflink** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %17 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %18 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %17, i32 0, i32 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ocfs2_super* @OCFS2_SB(i32 %21)
  store %struct.ocfs2_super* %22, %struct.ocfs2_super** %6, align 8
  %23 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %24 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %23, i32 0, i32 2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %28, %struct.ocfs2_dinode** %7, align 8
  %29 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %30 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @le16_to_cpu(i8* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %41 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = inttoptr i64 %47 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %48, %struct.ocfs2_xattr_header** %10, align 8
  %49 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %50 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = inttoptr i64 %56 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %57, %struct.ocfs2_xattr_header** %11, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %12, align 8
  %58 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %15, i32 0, i32 0
  store i32 (i32*, i32, %struct.TYPE_12__*, i32)* @ocfs2_journal_access_di, i32 (i32*, i32, %struct.TYPE_12__*, i32)** %58, align 8
  %59 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %15, i32 0, i32 1
  %60 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %61 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %59, align 8
  %63 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %64 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %10, align 8
  %65 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %66 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ocfs2_reflink_lock_xattr_allocators(%struct.ocfs2_super* %63, %struct.ocfs2_xattr_header* %64, i32 %67, i32* %4, %struct.ocfs2_alloc_context** %12)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %1
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %207

74:                                               ; preds = %1
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %75, i32 %76)
  store i32* %77, i32** %5, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i64 @IS_ERR(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @PTR_ERR(i32* %82)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %207

86:                                               ; preds = %74
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %89 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @INODE_CACHE(i32 %90)
  %92 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %93 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %96 = call i32 @ocfs2_journal_access_di(i32* %87, i32 %91, %struct.TYPE_12__* %94, i32 %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %203

102:                                              ; preds = %86
  %103 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %104 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %112 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %111, i32 0, i32 2
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @memcpy(i64 %110, i64 %118, i32 %119)
  %121 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %122 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %121, i32 0, i32 0
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %126, %struct.ocfs2_dinode** %14, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i8* @cpu_to_le16(i32 %127)
  %129 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %130 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %133 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %134 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %133, i32 0, i32 2
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %10, align 8
  %137 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %138 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %137, i32 0, i32 0
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %11, align 8
  %141 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %142 = load i32, i32* @ocfs2_get_xattr_value_root, align 4
  %143 = call i32 @ocfs2_reflink_xattr_header(i32* %131, %struct.ocfs2_xattr_reflink* %132, %struct.TYPE_11__* %135, %struct.ocfs2_xattr_header* %136, %struct.TYPE_12__* %139, %struct.ocfs2_xattr_header* %140, %struct.ocfs2_xattr_value_buf* %15, %struct.ocfs2_alloc_context* %141, i32 %142, i32* null)
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* %3, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %102
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @mlog_errno(i32 %147)
  br label %203

149:                                              ; preds = %102
  %150 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %151 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call %struct.ocfs2_inode_info* @OCFS2_I(i32 %152)
  store %struct.ocfs2_inode_info* %153, %struct.ocfs2_inode_info** %13, align 8
  %154 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %155 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %178, label %160

160:                                              ; preds = %149
  %161 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %162 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @ocfs2_inode_is_fast_symlink(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %160
  %167 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %168 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store %struct.ocfs2_extent_list* %169, %struct.ocfs2_extent_list** %16, align 8
  %170 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %171 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %170, i32 0, i32 0
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = udiv i64 %173, 4
  %175 = sub i64 0, %174
  %176 = trunc i64 %175 to i32
  %177 = call i32 @le16_add_cpu(i32* %171, i32 %176)
  br label %178

178:                                              ; preds = %166, %160, %149
  %179 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %180 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %179, i32 0, i32 1
  %181 = call i32 @spin_lock(i32* %180)
  %182 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %183 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %186 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %190 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @cpu_to_le16(i32 %191)
  %193 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %194 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %193, i32 0, i32 0
  store i8* %192, i8** %194, align 8
  %195 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %196 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %195, i32 0, i32 1
  %197 = call i32 @spin_unlock(i32* %196)
  %198 = load i32*, i32** %5, align 8
  %199 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %2, align 8
  %200 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %199, i32 0, i32 0
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = call i32 @ocfs2_journal_dirty(i32* %198, %struct.TYPE_12__* %201)
  br label %203

203:                                              ; preds = %178, %146, %99
  %204 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %205 = load i32*, i32** %5, align 8
  %206 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %204, i32* %205)
  br label %207

207:                                              ; preds = %203, %81, %71
  %208 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %209 = icmp ne %struct.ocfs2_alloc_context* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %212 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %211)
  br label %213

213:                                              ; preds = %210, %207
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ocfs2_reflink_lock_xattr_allocators(%struct.ocfs2_super*, %struct.ocfs2_xattr_header*, i32, i32*, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @INODE_CACHE(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_reflink_xattr_header(i32*, %struct.ocfs2_xattr_reflink*, %struct.TYPE_11__*, %struct.ocfs2_xattr_header*, %struct.TYPE_12__*, %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_alloc_context*, i32, i32*) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(i32) #1

declare dso_local i32 @ocfs2_inode_is_fast_symlink(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
