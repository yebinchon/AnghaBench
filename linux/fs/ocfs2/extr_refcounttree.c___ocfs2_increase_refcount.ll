; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c___ocfs2_increase_refcount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c___ocfs2_increase_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_refcount_rec = type { i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*)* @__ocfs2_increase_refcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_increase_refcount(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, i64 %3, i32 %4, i32 %5, %struct.ocfs2_alloc_context* %6, %struct.ocfs2_cached_dealloc_ctxt* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_caching_info*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.ocfs2_refcount_rec, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %10, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context** %15, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %7, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  store i32 0, i32* %17, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %23 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %22)
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @trace_ocfs2_increase_refcount_begin(i64 %23, i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %150, %8
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %160

30:                                               ; preds = %27
  %31 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %31, %struct.buffer_head* %32, i64 %33, i32 %34, %struct.ocfs2_refcount_rec* %20, i32* %18, %struct.buffer_head** %19)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %161

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @le32_to_cpu(i8* %43)
  store i32 %44, i32* %21, align 4
  %45 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %77

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @le64_to_cpu(i32 %50)
  %52 = load i64, i64* %12, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %48
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i64, i64* %12, align 8
  %60 = load i32, i32* %21, align 4
  %61 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @le32_to_cpu(i8* %62)
  %64 = call i32 @trace_ocfs2_increase_refcount_change(i64 %59, i32 %60, i32 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @ocfs2_change_refcount_rec(i32* %65, %struct.ocfs2_caching_info* %66, %struct.buffer_head* %67, i32 %68, i32 %69, i32 1)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %161

76:                                               ; preds = %58
  br label %150

77:                                               ; preds = %54, %48, %41
  %78 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %103, label %81

81:                                               ; preds = %77
  %82 = call i8* @cpu_to_le32(i32 1)
  %83 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @le64_to_cpu(i32 %85)
  %87 = load i32, i32* %21, align 4
  %88 = call i32 @trace_ocfs2_increase_refcount_insert(i64 %86, i32 %87)
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %96 = call i32 @ocfs2_insert_refcount_rec(i32* %89, %struct.ocfs2_caching_info* %90, %struct.buffer_head* %91, %struct.buffer_head* %92, %struct.ocfs2_refcount_rec* %20, i32 %93, i32 %94, %struct.ocfs2_alloc_context* %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %81
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %161

102:                                              ; preds = %81
  br label %149

103:                                              ; preds = %77
  %104 = load i64, i64* %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @le64_to_cpu(i32 %109)
  %111 = load i32, i32* %21, align 4
  %112 = zext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = call i64 @min(i64 %107, i64 %113)
  %115 = load i64, i64* %12, align 8
  %116 = sub nsw i64 %114, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %21, align 4
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @cpu_to_le64(i64 %118)
  %120 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 1
  store i32 %119, i32* %120, align 8
  %121 = load i32, i32* %21, align 4
  %122 = call i8* @cpu_to_le32(i32 %121)
  %123 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 2
  store i8* %122, i8** %123, align 8
  %124 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  %125 = call i32 @le32_add_cpu(i8** %124, i32 1)
  %126 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @le64_to_cpu(i32 %127)
  %129 = load i32, i32* %21, align 4
  %130 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @le32_to_cpu(i8* %131)
  %133 = call i32 @trace_ocfs2_increase_refcount_split(i64 %128, i32 %129, i32 %132)
  %134 = load i32*, i32** %9, align 8
  %135 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %136 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %141 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  %142 = call i32 @ocfs2_split_refcount_rec(i32* %134, %struct.ocfs2_caching_info* %135, %struct.buffer_head* %136, %struct.buffer_head* %137, %struct.ocfs2_refcount_rec* %20, i32 %138, i32 %139, %struct.ocfs2_alloc_context* %140, %struct.ocfs2_cached_dealloc_ctxt* %141)
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %103
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @mlog_errno(i32 %146)
  br label %161

148:                                              ; preds = %103
  br label %149

149:                                              ; preds = %148, %102
  br label %150

150:                                              ; preds = %149, %76
  %151 = load i32, i32* %21, align 4
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %12, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %12, align 8
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %13, align 4
  %157 = sub i32 %156, %155
  store i32 %157, i32* %13, align 4
  %158 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %159 = call i32 @brelse(%struct.buffer_head* %158)
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  br label %27

160:                                              ; preds = %27
  br label %161

161:                                              ; preds = %160, %145, %99, %73, %38
  %162 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %163 = call i32 @brelse(%struct.buffer_head* %162)
  %164 = load i32, i32* %17, align 4
  ret i32 %164
}

declare dso_local i32 @trace_ocfs2_increase_refcount_begin(i64, i64, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i32, %struct.ocfs2_refcount_rec*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_increase_refcount_change(i64, i32, i32) #1

declare dso_local i32 @ocfs2_change_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @trace_ocfs2_increase_refcount_insert(i64, i32) #1

declare dso_local i32 @ocfs2_insert_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*, i32, i32, %struct.ocfs2_alloc_context*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @le32_add_cpu(i8**, i32) #1

declare dso_local i32 @trace_ocfs2_increase_refcount_split(i64, i32, i32) #1

declare dso_local i32 @ocfs2_split_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
