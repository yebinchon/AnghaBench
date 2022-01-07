; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c___ocfs2_move_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c___ocfs2_move_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_move_extents_context = type { i32, i32, i32, %struct.TYPE_3__, %struct.inode* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32, i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Inode %llu has an extent at cpos %u which can no longer be found\0A\00", align 1
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_move_extents_context*, i32, i32, i32, i32, i32)* @__ocfs2_move_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_move_extent(i32* %0, %struct.ocfs2_move_extents_context* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_move_extents_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.ocfs2_super*, align 8
  %19 = alloca %struct.ocfs2_extent_rec*, align 8
  %20 = alloca %struct.ocfs2_extent_rec, align 4
  %21 = alloca %struct.ocfs2_path*, align 8
  %22 = alloca %struct.ocfs2_extent_list*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.ocfs2_move_extents_context* %1, %struct.ocfs2_move_extents_context** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %9, align 8
  %26 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %25, i32 0, i32 4
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %17, align 8
  %28 = load %struct.inode*, %struct.inode** %17, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ocfs2_super* @OCFS2_SB(i32 %30)
  store %struct.ocfs2_super* %31, %struct.ocfs2_super** %18, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %21, align 8
  %32 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %9, align 8
  %33 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ocfs2_metadata_cache_owner(i32 %35)
  store i64 %36, i64* %23, align 8
  %37 = load %struct.inode*, %struct.inode** %17, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @ocfs2_clusters_to_blocks(i32 %39, i32 %40)
  store i64 %41, i64* %24, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.inode*, %struct.inode** %17, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @ocfs2_duplicate_clusters_by_page(i32* %42, %struct.inode* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %7
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %198

54:                                               ; preds = %7
  %55 = call i32 @memset(%struct.ocfs2_extent_rec* %20, i32 0, i32 16)
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @cpu_to_le32(i32 %56)
  %58 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @cpu_to_le16(i32 %59)
  %61 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = load %struct.inode*, %struct.inode** %17, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i64 @ocfs2_clusters_to_blocks(i32 %64, i32 %65)
  %67 = call i32 @cpu_to_le64(i64 %66)
  %68 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %9, align 8
  %70 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %69, i32 0, i32 3
  %71 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.TYPE_3__* %70)
  store %struct.ocfs2_path* %71, %struct.ocfs2_path** %21, align 8
  %72 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %73 = icmp ne %struct.ocfs2_path* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %54
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %198

79:                                               ; preds = %54
  %80 = load %struct.inode*, %struct.inode** %17, align 8
  %81 = call i32 @INODE_CACHE(%struct.inode* %80)
  %82 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @ocfs2_find_path(i32 %81, %struct.ocfs2_path* %82, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %198

90:                                               ; preds = %79
  %91 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %92 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %91)
  store %struct.ocfs2_extent_list* %92, %struct.ocfs2_extent_list** %22, align 8
  %93 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %93, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %105

98:                                               ; preds = %90
  %99 = load %struct.inode*, %struct.inode** %17, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %23, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @ocfs2_error(i32 %101, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %102, i32 %103)
  store i32 %104, i32* %15, align 4
  br label %198

105:                                              ; preds = %90
  %106 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %22, align 8
  %107 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %106, i32 0, i32 0
  %108 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %108, i64 %110
  store %struct.ocfs2_extent_rec* %111, %struct.ocfs2_extent_rec** %19, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %19, align 8
  %114 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %112, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @BUG_ON(i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 0
  store i32 %122, i32* %123, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.inode*, %struct.inode** %17, align 8
  %126 = call i32 @INODE_CACHE(%struct.inode* %125)
  %127 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %9, align 8
  %128 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %132 = call i32 @ocfs2_journal_access_di(i32* %124, i32 %126, i32 %130, i32 %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %105
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @mlog_errno(i32 %136)
  br label %198

138:                                              ; preds = %105
  %139 = load i32*, i32** %8, align 8
  %140 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %9, align 8
  %141 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %140, i32 0, i32 3
  %142 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %9, align 8
  %145 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %9, align 8
  %148 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %147, i32 0, i32 0
  %149 = call i32 @ocfs2_split_extent(i32* %139, %struct.TYPE_3__* %141, %struct.ocfs2_path* %142, i32 %143, %struct.ocfs2_extent_rec* %20, i32 %146, i32* %148)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %138
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @mlog_errno(i32 %153)
  br label %198

155:                                              ; preds = %138
  %156 = load i32*, i32** %8, align 8
  %157 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %9, align 8
  %158 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ocfs2_journal_dirty(i32* %156, i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %9, align 8
  %164 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load i64, i64* %24, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %194

167:                                              ; preds = %155
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %167
  %173 = load %struct.inode*, %struct.inode** %17, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %176 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i64, i64* %24, align 8
  %179 = call i32 @ocfs2_blocks_to_clusters(i32 %177, i64 %178)
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %9, align 8
  %182 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %9, align 8
  %185 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %184, i32 0, i32 0
  %186 = call i32 @ocfs2_decrease_refcount(%struct.inode* %173, i32* %174, i32 %179, i32 %180, i32 %183, i32* %185, i32 1)
  store i32 %186, i32* %15, align 4
  br label %193

187:                                              ; preds = %167
  %188 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %189 = load i32*, i32** %8, align 8
  %190 = load i64, i64* %24, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %188, i32* %189, i64 %190, i32 %191)
  store i32 %192, i32* %15, align 4
  br label %193

193:                                              ; preds = %187, %172
  br label %194

194:                                              ; preds = %193, %155
  %195 = load i32*, i32** %8, align 8
  %196 = load %struct.inode*, %struct.inode** %17, align 8
  %197 = call i32 @ocfs2_update_inode_fsync_trans(i32* %195, %struct.inode* %196, i32 0)
  br label %198

198:                                              ; preds = %194, %152, %135, %98, %87, %74, %51
  %199 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %200 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %199)
  %201 = load i32, i32* %15, align 4
  ret i32 %201
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_duplicate_clusters_by_page(i32*, %struct.inode*, i32, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_extent_rec*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.TYPE_3__*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_split_extent(i32*, %struct.TYPE_3__*, %struct.ocfs2_path*, i32, %struct.ocfs2_extent_rec*, i32, i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

declare dso_local i32 @ocfs2_decrease_refcount(%struct.inode*, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super*, i32*, i64, i32) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
