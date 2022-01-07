; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_cache_cluster_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_cache_cluster_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cached_dealloc_ctxt = type { %struct.ocfs2_cached_block_free* }
%struct.ocfs2_cached_block_free = type { i32, %struct.ocfs2_cached_block_free*, i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_cache_cluster_dealloc(%struct.ocfs2_cached_dealloc_ctxt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_cached_block_free*, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %0, %struct.ocfs2_cached_dealloc_ctxt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @GFP_NOFS, align 4
  %11 = call %struct.ocfs2_cached_block_free* @kzalloc(i32 24, i32 %10)
  store %struct.ocfs2_cached_block_free* %11, %struct.ocfs2_cached_block_free** %9, align 8
  %12 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %9, align 8
  %13 = icmp eq %struct.ocfs2_cached_block_free* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mlog_errno(i32 %17)
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %39

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @trace_ocfs2_cache_cluster_dealloc(i64 %21, i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %9, align 8
  %26 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %9, align 8
  %29 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %30, i32 0, i32 0
  %32 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %31, align 8
  %33 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %9, align 8
  %34 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %33, i32 0, i32 1
  store %struct.ocfs2_cached_block_free* %32, %struct.ocfs2_cached_block_free** %34, align 8
  %35 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %9, align 8
  %36 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %5, align 8
  %37 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, %struct.ocfs2_cached_dealloc_ctxt* %36, i32 0, i32 0
  store %struct.ocfs2_cached_block_free* %35, %struct.ocfs2_cached_block_free** %37, align 8
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %20, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.ocfs2_cached_block_free* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @trace_ocfs2_cache_cluster_dealloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
