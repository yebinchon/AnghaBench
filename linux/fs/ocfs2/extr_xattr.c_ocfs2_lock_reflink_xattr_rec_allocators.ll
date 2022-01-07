; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_lock_reflink_xattr_rec_allocators.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_lock_reflink_xattr_rec_allocators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_reflink_xattr_tree_args = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_value_tree_metas = type { i32, i32, i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_refcount_block = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ocfs2_calc_value_tree_metas = common dso_local global i32 0, align 4
@OCFS2_EXPAND_REFCOUNT_TREE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_extent_tree*, i32, i32, i32*, %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context**)* @ocfs2_lock_reflink_xattr_rec_allocators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_lock_reflink_xattr_rec_allocators(%struct.ocfs2_reflink_xattr_tree_args* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i32 %3, i32* %4, %struct.ocfs2_alloc_context** %5, %struct.ocfs2_alloc_context** %6) #0 {
  %8 = alloca %struct.ocfs2_reflink_xattr_tree_args*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ocfs2_alloc_context**, align 8
  %14 = alloca %struct.ocfs2_alloc_context**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_value_tree_metas, align 8
  %18 = alloca %struct.ocfs2_super*, align 8
  %19 = alloca %struct.ocfs2_refcount_block*, align 8
  store %struct.ocfs2_reflink_xattr_tree_args* %0, %struct.ocfs2_reflink_xattr_tree_args** %8, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.ocfs2_alloc_context** %5, %struct.ocfs2_alloc_context*** %13, align 8
  store %struct.ocfs2_alloc_context** %6, %struct.ocfs2_alloc_context*** %14, align 8
  %20 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %8, align 8
  %21 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ocfs2_super* @OCFS2_SB(i32 %26)
  store %struct.ocfs2_super* %27, %struct.ocfs2_super** %18, align 8
  %28 = call i32 @memset(%struct.ocfs2_value_tree_metas* %17, i32 0, i32 16)
  %29 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %8, align 8
  %30 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @ocfs2_calc_value_tree_metas, align 4
  %37 = call i32 @ocfs2_iterate_xattr_buckets(%struct.TYPE_8__* %33, i32 %34, i32 %35, i32 %36, %struct.ocfs2_value_tree_metas* %17)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %7
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %177

43:                                               ; preds = %7
  %44 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %17, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %8, align 8
  %48 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %54, %struct.ocfs2_refcount_block** %19, align 8
  %55 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %17, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %58 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ocfs2_refcount_recs_per_rb(i32 %59)
  %61 = add nsw i32 %56, %60
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %64 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ocfs2_refcount_recs_per_rb(i32 %65)
  %67 = sdiv i32 %62, %66
  %68 = mul nsw i32 %67, 2
  %69 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %17, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %17, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %17, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %72
  store i64 %75, i64* %73, align 8
  %76 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %17, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %17, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @OCFS2_EXPAND_REFCOUNT_TREE_CREDITS, align 4
  %81 = mul nsw i32 %79, %80
  %82 = add nsw i32 %77, %81
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %87 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  %90 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %43
  %94 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %95 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %19, align 8
  %100 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le16_to_cpu(i32 %102)
  %104 = mul nsw i32 %98, %103
  %105 = add nsw i32 %104, 1
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %113

109:                                              ; preds = %43
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %109, %93
  %114 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %115 = call i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree* %114)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @mlog_errno(i32 %120)
  br label %177

122:                                              ; preds = %113
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %128 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @ocfs2_extend_meta_needed(i32 %129)
  %131 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %17, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %130
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %126, %122
  %135 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %136 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %139 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @ocfs2_calc_extend_credits(i32 %137, i32 %140)
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %141
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  %147 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %17, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %134
  %151 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %152 = getelementptr inbounds %struct.ocfs2_value_tree_metas, %struct.ocfs2_value_tree_metas* %17, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %13, align 8
  %155 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %151, i64 %153, %struct.ocfs2_alloc_context** %154)
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @mlog_errno(i32 %159)
  br label %177

161:                                              ; preds = %150
  br label %162

162:                                              ; preds = %161, %134
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %14, align 8
  %169 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %166, i32 %167, %struct.ocfs2_alloc_context** %168)
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @mlog_errno(i32 %173)
  br label %175

175:                                              ; preds = %172, %165
  br label %176

176:                                              ; preds = %175, %162
  br label %177

177:                                              ; preds = %176, %158, %118, %40
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %13, align 8
  %182 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %181, align 8
  %183 = icmp ne %struct.ocfs2_alloc_context* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %13, align 8
  %186 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %185, align 8
  %187 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %186)
  %188 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %13, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %188, align 8
  br label %189

189:                                              ; preds = %184, %180
  br label %190

190:                                              ; preds = %189, %177
  %191 = load i32, i32* %15, align 4
  ret i32 %191
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_value_tree_metas*, i32, i32) #1

declare dso_local i32 @ocfs2_iterate_xattr_buckets(%struct.TYPE_8__*, i32, i32, i32, %struct.ocfs2_value_tree_metas*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_refcount_recs_per_rb(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree*) #1

declare dso_local i64 @ocfs2_extend_meta_needed(i32) #1

declare dso_local i64 @ocfs2_calc_extend_credits(i32, i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i64, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
