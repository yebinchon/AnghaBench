; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_split_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_split_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_extent_rec = type { i64, i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec* }
%struct.buffer_head = type { i32 }
%struct.ocfs2_merge_ctxt = type { i32, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@CONTIG_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_split_extent(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, i32 %3, %struct.ocfs2_extent_rec* %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_cached_dealloc_ctxt* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_extent_rec*, align 8
  %13 = alloca %struct.ocfs2_alloc_context*, align 8
  %14 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_extent_list*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_extent_rec*, align 8
  %19 = alloca %struct.ocfs2_merge_ctxt, align 8
  store i32* %0, i32** %8, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %9, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_extent_rec* %4, %struct.ocfs2_extent_rec** %12, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %13, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %6, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %21 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %20)
  store %struct.ocfs2_extent_list* %21, %struct.ocfs2_extent_list** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %22 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %23 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %22, i32 0, i32 0
  %24 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %24, i64 %26
  store %struct.ocfs2_extent_rec* %27, %struct.ocfs2_extent_rec** %18, align 8
  %28 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %29 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @le32_to_cpu(i64 %30)
  %32 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %33 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @le32_to_cpu(i64 %34)
  %36 = icmp sgt i64 %31, %35
  br i1 %36, label %57, label %37

37:                                               ; preds = %7
  %38 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %39 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @le32_to_cpu(i64 %40)
  %42 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %43 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @le16_to_cpu(i64 %44)
  %46 = add nsw i64 %41, %45
  %47 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @le32_to_cpu(i64 %49)
  %51 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %52 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @le16_to_cpu(i64 %53)
  %55 = add nsw i64 %50, %54
  %56 = icmp slt i64 %46, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %37, %7
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %173

62:                                               ; preds = %37
  %63 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %64 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %65 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %68 = call i32 @ocfs2_figure_merge_contig_type(%struct.ocfs2_extent_tree* %63, %struct.ocfs2_path* %64, %struct.ocfs2_extent_list* %65, i32 %66, %struct.ocfs2_extent_rec* %67, %struct.ocfs2_merge_ctxt* %19)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %173

74:                                               ; preds = %62
  %75 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %76 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %81 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %84 = call i32 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree* %83)
  %85 = call i32 @ocfs2_read_extent_block(i32 %82, i32 %84, %struct.buffer_head** %17)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %173

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %74
  %93 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %94 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %97 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %92
  %101 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %102 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %105 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %112

110:                                              ; preds = %100, %92
  %111 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %114 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %113, i32 0, i32 0
  %115 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %114, align 8
  %116 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %115, i64 0
  %117 = call i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %116)
  %118 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 2
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* %11, align 4
  %120 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @trace_ocfs2_split_extent(i32 %119, i64 %121, i32 %123, i32 %125)
  %127 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CONTIG_NONE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %112
  %132 = getelementptr inbounds %struct.ocfs2_merge_ctxt, %struct.ocfs2_merge_ctxt* %19, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load i32*, i32** %8, align 8
  %137 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %138 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %139 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %142 = call i32 @ocfs2_replace_extent_rec(i32* %136, %struct.ocfs2_extent_tree* %137, %struct.ocfs2_path* %138, %struct.ocfs2_extent_list* %139, i32 %140, %struct.ocfs2_extent_rec* %141)
  store i32 %142, i32* %15, align 4
  br label %151

143:                                              ; preds = %131
  %144 = load i32*, i32** %8, align 8
  %145 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %146 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %149 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %13, align 8
  %150 = call i32 @ocfs2_split_and_insert(i32* %144, %struct.ocfs2_extent_tree* %145, %struct.ocfs2_path* %146, %struct.buffer_head** %17, i32 %147, %struct.ocfs2_extent_rec* %148, %struct.ocfs2_alloc_context* %149)
  store i32 %150, i32* %15, align 4
  br label %151

151:                                              ; preds = %143, %135
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @mlog_errno(i32 %155)
  br label %157

157:                                              ; preds = %154, %151
  br label %172

158:                                              ; preds = %112
  %159 = load i32*, i32** %8, align 8
  %160 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %161 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %164 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %14, align 8
  %165 = call i32 @ocfs2_try_to_merge_extent(i32* %159, %struct.ocfs2_extent_tree* %160, %struct.ocfs2_path* %161, i32 %162, %struct.ocfs2_extent_rec* %163, %struct.ocfs2_cached_dealloc_ctxt* %164, %struct.ocfs2_merge_ctxt* %19)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %158
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @mlog_errno(i32 %169)
  br label %171

171:                                              ; preds = %168, %158
  br label %172

172:                                              ; preds = %171, %157
  br label %173

173:                                              ; preds = %172, %88, %71, %57
  %174 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %175 = call i32 @brelse(%struct.buffer_head* %174)
  %176 = load i32, i32* %15, align 4
  ret i32 %176
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_figure_merge_contig_type(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_list*, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_merge_ctxt*) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @trace_ocfs2_split_extent(i32, i64, i32, i32) #1

declare dso_local i32 @ocfs2_replace_extent_rec(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_list*, i32, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_split_and_insert(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.buffer_head**, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_try_to_merge_extent(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_merge_ctxt*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
