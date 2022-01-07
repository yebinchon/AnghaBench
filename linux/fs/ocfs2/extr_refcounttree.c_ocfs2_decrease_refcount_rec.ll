; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_decrease_refcount_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_decrease_refcount_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_refcount_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ocfs2_refcount_rec* }
%struct.ocfs2_refcount_rec = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, i32, i64, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_decrease_refcount_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_decrease_refcount_rec(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, i32 %4, i64 %5, i32 %6, %struct.ocfs2_alloc_context* %7, %struct.ocfs2_cached_dealloc_ctxt* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_caching_info*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_refcount_block*, align 8
  %21 = alloca %struct.ocfs2_refcount_rec*, align 8
  %22 = alloca %struct.ocfs2_refcount_rec, align 4
  store i32* %0, i32** %10, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %11, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.ocfs2_alloc_context* %7, %struct.ocfs2_alloc_context** %17, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %8, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %26, %struct.ocfs2_refcount_block** %20, align 8
  %27 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %28 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %30, i64 %32
  store %struct.ocfs2_refcount_rec* %33, %struct.ocfs2_refcount_rec** %21, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %36 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le64_to_cpu(i32 %37)
  %39 = icmp slt i64 %34, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load i64, i64* %15, align 8
  %43 = load i32, i32* %16, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %47 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le64_to_cpu(i32 %48)
  %50 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %51 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %49, %54
  %56 = icmp sgt i64 %45, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %60 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %59)
  %61 = load i64, i64* %15, align 8
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @trace_ocfs2_decrease_refcount_rec(i64 %60, i64 %61, i32 %62)
  %64 = load i64, i64* %15, align 8
  %65 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %66 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le64_to_cpu(i32 %67)
  %69 = icmp eq i64 %64, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %9
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %73 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @ocfs2_change_refcount_rec(i32* %78, %struct.ocfs2_caching_info* %79, %struct.buffer_head* %80, i32 %81, i32 1, i32 -1)
  store i32 %82, i32* %19, align 4
  br label %103

83:                                               ; preds = %70, %9
  %84 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %85 = bitcast %struct.ocfs2_refcount_rec* %22 to i8*
  %86 = bitcast %struct.ocfs2_refcount_rec* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 12, i1 false)
  %87 = load i64, i64* %15, align 8
  %88 = call i32 @cpu_to_le64(i64 %87)
  %89 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %22, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @cpu_to_le32(i32 %90)
  %92 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %22, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %22, i32 0, i32 0
  %94 = call i32 @le32_add_cpu(i32* %93, i32 -1)
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %98 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %101 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  %102 = call i32 @ocfs2_split_refcount_rec(i32* %95, %struct.ocfs2_caching_info* %96, %struct.buffer_head* %97, %struct.buffer_head* %98, %struct.ocfs2_refcount_rec* %22, i32 %99, i32 1, %struct.ocfs2_alloc_context* %100, %struct.ocfs2_cached_dealloc_ctxt* %101)
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %83, %77
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %19, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %134

109:                                              ; preds = %103
  %110 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %111 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %109
  %116 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %117 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %118 = icmp ne %struct.buffer_head* %116, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %115
  %120 = load i32*, i32** %10, align 8
  %121 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %124 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %125 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  %126 = call i32 @ocfs2_remove_refcount_extent(i32* %120, %struct.ocfs2_caching_info* %121, %struct.buffer_head* %122, %struct.buffer_head* %123, %struct.ocfs2_alloc_context* %124, %struct.ocfs2_cached_dealloc_ctxt* %125)
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load i32, i32* %19, align 4
  %131 = call i32 @mlog_errno(i32 %130)
  br label %132

132:                                              ; preds = %129, %119
  br label %133

133:                                              ; preds = %132, %115, %109
  br label %134

134:                                              ; preds = %133, %106
  %135 = load i32, i32* %19, align 4
  ret i32 %135
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_decrease_refcount_rec(i64, i64, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_change_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_split_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_remove_refcount_extent(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
