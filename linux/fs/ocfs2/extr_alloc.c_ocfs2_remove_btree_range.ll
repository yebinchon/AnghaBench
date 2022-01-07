; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_remove_btree_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_remove_btree_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_super = type { i32, %struct.inode* }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }

@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_remove_btree_range(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.ocfs2_cached_dealloc_ctxt* %6, i64 %7, i32 %8) #0 {
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_extent_tree*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.ocfs2_super*, align 8
  %24 = alloca %struct.inode*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.ocfs2_alloc_context*, align 8
  %27 = alloca %struct.ocfs2_refcount_tree*, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %6, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i64 @ocfs2_clusters_to_blocks(i32 %30, i32 %31)
  store i64 %32, i64* %22, align 8
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.ocfs2_super* @OCFS2_SB(i32 %35)
  store %struct.ocfs2_super* %36, %struct.ocfs2_super** %23, align 8
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 1
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  store %struct.inode* %39, %struct.inode** %24, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %26, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %27, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %9
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %44
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = call i32 @ocfs2_is_refcount_inode(%struct.inode* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %47
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %58 = load i64, i64* %17, align 8
  %59 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %57, i64 %58, i32 1, %struct.ocfs2_refcount_tree** %27, i32* null)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %204

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %47
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %22, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @ocfs2_prepare_refcount_change_for_del(%struct.inode* %67, i64 %68, i64 %69, i32 %70, i32* %20, i32* %21)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %204

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %44, %9
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %81 = load i32, i32* %21, align 4
  %82 = call i32 @ocfs2_reserve_blocks_for_rec_trunc(%struct.inode* %79, %struct.ocfs2_extent_tree* %80, i32 1, %struct.ocfs2_alloc_context** %26, i32 %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %204

88:                                               ; preds = %78
  %89 = load %struct.inode*, %struct.inode** %24, align 8
  %90 = call i32 @inode_lock(%struct.inode* %89)
  %91 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %92 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %96 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* %19, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %201

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %88
  %104 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %105 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %106 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @ocfs2_remove_extent_credits(i32 %107)
  %109 = load i32, i32* %20, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %104, i64 %111)
  store i32* %112, i32** %25, align 8
  %113 = load i32*, i32** %25, align 8
  %114 = call i64 @IS_ERR(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %103
  %117 = load i32*, i32** %25, align 8
  %118 = call i32 @PTR_ERR(i32* %117)
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @mlog_errno(i32 %119)
  br label %201

121:                                              ; preds = %103
  %122 = load i32*, i32** %25, align 8
  %123 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %124 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %125 = call i32 @ocfs2_et_root_journal_access(i32* %122, %struct.ocfs2_extent_tree* %123, i32 %124)
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @mlog_errno(i32 %129)
  br label %197

131:                                              ; preds = %121
  %132 = load %struct.inode*, %struct.inode** %10, align 8
  %133 = load %struct.inode*, %struct.inode** %10, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @ocfs2_clusters_to_bytes(i32 %135, i32 %136)
  %138 = call i32 @dquot_free_space_nodirty(%struct.inode* %132, i32 %137)
  %139 = load i32*, i32** %25, align 8
  %140 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %26, align 8
  %144 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  %145 = call i32 @ocfs2_remove_extent(i32* %139, %struct.ocfs2_extent_tree* %140, i32 %141, i32 %142, %struct.ocfs2_alloc_context* %143, %struct.ocfs2_cached_dealloc_ctxt* %144)
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %131
  %149 = load i32, i32* %19, align 4
  %150 = call i32 @mlog_errno(i32 %149)
  br label %197

151:                                              ; preds = %131
  %152 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sub nsw i32 0, %153
  %155 = call i32 @ocfs2_et_update_clusters(%struct.ocfs2_extent_tree* %152, i32 %154)
  %156 = load i32*, i32** %25, align 8
  %157 = load %struct.inode*, %struct.inode** %10, align 8
  %158 = call i32 @ocfs2_update_inode_fsync_trans(i32* %156, %struct.inode* %157, i32 1)
  %159 = load i32*, i32** %25, align 8
  %160 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %161 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ocfs2_journal_dirty(i32* %159, i32 %162)
  %164 = load i64, i64* %22, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %196

166:                                              ; preds = %151
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %166
  %172 = load %struct.inode*, %struct.inode** %10, align 8
  %173 = load i32*, i32** %25, align 8
  %174 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %175 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i64, i64* %22, align 8
  %178 = call i32 @ocfs2_blocks_to_clusters(i32 %176, i64 %177)
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %26, align 8
  %181 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  %182 = call i32 @ocfs2_decrease_refcount(%struct.inode* %172, i32* %173, i32 %178, i32 %179, %struct.ocfs2_alloc_context* %180, %struct.ocfs2_cached_dealloc_ctxt* %181, i32 1)
  store i32 %182, i32* %19, align 4
  br label %189

183:                                              ; preds = %166
  %184 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %185 = load i32*, i32** %25, align 8
  %186 = load i64, i64* %22, align 8
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %184, i32* %185, i64 %186, i32 %187)
  store i32 %188, i32* %19, align 4
  br label %189

189:                                              ; preds = %183, %171
  %190 = load i32, i32* %19, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %19, align 4
  %194 = call i32 @mlog_errno(i32 %193)
  br label %195

195:                                              ; preds = %192, %189
  br label %196

196:                                              ; preds = %195, %151
  br label %197

197:                                              ; preds = %196, %148, %128
  %198 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %199 = load i32*, i32** %25, align 8
  %200 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %198, i32* %199)
  br label %201

201:                                              ; preds = %197, %116, %99
  %202 = load %struct.inode*, %struct.inode** %24, align 8
  %203 = call i32 @inode_unlock(%struct.inode* %202)
  br label %204

204:                                              ; preds = %201, %85, %74, %62
  %205 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %26, align 8
  %206 = icmp ne %struct.ocfs2_alloc_context* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %26, align 8
  %209 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %208)
  br label %210

210:                                              ; preds = %207, %204
  %211 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %27, align 8
  %212 = icmp ne %struct.ocfs2_refcount_tree* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  %215 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %27, align 8
  %216 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %214, %struct.ocfs2_refcount_tree* %215, i32 1)
  br label %217

217:                                              ; preds = %213, %210
  %218 = load i32, i32* %19, align 4
  ret i32 %218
}

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i64, i32, %struct.ocfs2_refcount_tree**, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_prepare_refcount_change_for_del(%struct.inode*, i64, i64, i32, i32*, i32*) #1

declare dso_local i32 @ocfs2_reserve_blocks_for_rec_trunc(%struct.inode*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_alloc_context**, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i64) #1

declare dso_local i64 @ocfs2_remove_extent_credits(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_et_root_journal_access(i32*, %struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @dquot_free_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_remove_extent(i32*, %struct.ocfs2_extent_tree*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_et_update_clusters(%struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

declare dso_local i32 @ocfs2_decrease_refcount(%struct.inode*, i32*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*, i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super*, i32*, i64, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
