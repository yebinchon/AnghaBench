; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_add_clusters_in_btree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_add_clusters_in_btree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32, i32, i32 }
%struct.ocfs2_alloc_context = type { i64, i32, i32 }
%struct.ocfs2_super = type { i32 }

@RESTART_NONE = common dso_local global i32 0, align 4
@OCFS2_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RESTART_META = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@RESTART_TRANS = common dso_local global i32 0, align 4
@OCFS2_AC_USE_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_add_clusters_in_btree(i32* %0, %struct.ocfs2_extent_tree* %1, i32* %2, i32 %3, i32 %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_extent_tree*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_alloc_context*, align 8
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.ocfs2_super*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %14, align 8
  store %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load i32, i32* @RESTART_NONE, align 4
  store i32 %27, i32* %21, align 4
  store i32 0, i32* %25, align 4
  %28 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %29 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ocfs2_metadata_cache_get_super(i32 %30)
  %32 = call %struct.ocfs2_super* @OCFS2_SB(i32 %31)
  store %struct.ocfs2_super* %32, %struct.ocfs2_super** %26, align 8
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %8
  %41 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  store i32 %41, i32* %25, align 4
  br label %42

42:                                               ; preds = %40, %8
  %43 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %44 = call i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree* %43)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %20, align 4
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %189

51:                                               ; preds = %42
  %52 = load i32, i32* %20, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %56 = icmp ne %struct.ocfs2_alloc_context* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  store i32 -1, i32* %18, align 4
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* @RESTART_META, align 4
  store i32 %60, i32* %21, align 4
  br label %189

61:                                               ; preds = %54, %51
  %62 = load i32, i32* %20, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %66 = call i64 @ocfs2_alloc_context_bits_left(%struct.ocfs2_alloc_context* %65)
  %67 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %68 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ocfs2_extend_meta_needed(i32 %69)
  %71 = icmp slt i64 %66, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  store i32 -2, i32* %18, align 4
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* @RESTART_META, align 4
  store i32 %75, i32* %21, align 4
  br label %189

76:                                               ; preds = %64, %61
  br label %77

77:                                               ; preds = %76
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @__ocfs2_claim_clusters(i32* %78, %struct.ocfs2_alloc_context* %79, i32 1, i32 %80, i32* %22, i32* %23)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @ENOSPC, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %92

92:                                               ; preds = %89, %84
  br label %189

93:                                               ; preds = %77
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp sgt i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @BUG_ON(i32 %97)
  %99 = load i32*, i32** %9, align 8
  %100 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %101 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %102 = call i32 @ocfs2_et_root_journal_access(i32* %99, %struct.ocfs2_extent_tree* %100, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  store i32 1, i32* %19, align 4
  br label %156

108:                                              ; preds = %93
  %109 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %110 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %22, align 4
  %113 = call i32 @ocfs2_clusters_to_blocks(i32 %111, i32 %112)
  store i32 %113, i32* %24, align 4
  %114 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %115 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @ocfs2_metadata_cache_owner(i32 %116)
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %23, align 4
  %120 = call i32 @trace_ocfs2_add_clusters_in_btree(i64 %117, i32 %118, i32 %119)
  %121 = load i32*, i32** %9, align 8
  %122 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %24, align 4
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %25, align 4
  %128 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %129 = call i32 @ocfs2_insert_extent(i32* %121, %struct.ocfs2_extent_tree* %122, i32 %124, i32 %125, i32 %126, i32 %127, %struct.ocfs2_alloc_context* %128)
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %108
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @mlog_errno(i32 %133)
  store i32 1, i32* %19, align 4
  br label %156

135:                                              ; preds = %108
  %136 = load i32*, i32** %9, align 8
  %137 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %138 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ocfs2_journal_dirty(i32* %136, i32 %139)
  %141 = load i32, i32* %23, align 4
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %23, align 4
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, %144
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %135
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* @EAGAIN, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* @RESTART_TRANS, align 4
  store i32 %154, i32* %21, align 4
  br label %155

155:                                              ; preds = %150, %135
  br label %156

156:                                              ; preds = %155, %132, %105
  %157 = load i32, i32* %19, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %188

159:                                              ; preds = %156
  %160 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %161 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @OCFS2_AC_USE_LOCAL, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %159
  %166 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %169 = load i32, i32* %22, align 4
  %170 = load i32, i32* %23, align 4
  %171 = call i32 @ocfs2_free_local_alloc_bits(%struct.ocfs2_super* %166, i32* %167, %struct.ocfs2_alloc_context* %168, i32 %169, i32 %170)
  br label %187

172:                                              ; preds = %159
  %173 = load i32*, i32** %9, align 8
  %174 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %175 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %178 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %181 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %22, align 4
  %184 = call i32 @ocfs2_clusters_to_blocks(i32 %182, i32 %183)
  %185 = load i32, i32* %23, align 4
  %186 = call i32 @ocfs2_free_clusters(i32* %173, i32 %176, i32 %179, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %172, %165
  br label %188

188:                                              ; preds = %187, %156
  br label %189

189:                                              ; preds = %188, %92, %72, %57, %47
  %190 = load i32*, i32** %16, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %21, align 4
  %194 = load i32*, i32** %16, align 8
  store i32 %193, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* %18, align 4
  %199 = call i32 @trace_ocfs2_add_clusters_in_btree_ret(i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %17, align 4
  ret i32 %200
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_alloc_context_bits_left(%struct.ocfs2_alloc_context*) #1

declare dso_local i64 @ocfs2_extend_meta_needed(i32) #1

declare dso_local i32 @__ocfs2_claim_clusters(i32*, %struct.ocfs2_alloc_context*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ocfs2_et_root_journal_access(i32*, %struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @trace_ocfs2_add_clusters_in_btree(i64, i32, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @ocfs2_insert_extent(i32*, %struct.ocfs2_extent_tree*, i32, i32, i32, i32, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

declare dso_local i32 @ocfs2_free_local_alloc_bits(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i32, i32) #1

declare dso_local i32 @ocfs2_free_clusters(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @trace_ocfs2_add_clusters_in_btree_ret(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
