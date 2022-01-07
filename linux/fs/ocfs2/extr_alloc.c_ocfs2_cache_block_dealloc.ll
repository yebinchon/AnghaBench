; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_cache_block_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_cache_block_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_per_slot_free_list = type { %struct.ocfs2_cached_block_free* }
%struct.ocfs2_cached_block_free = type { i32, %struct.ocfs2_cached_block_free*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_cache_block_dealloc(%struct.ocfs2_cached_dealloc_ctxt* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_per_slot_free_list*, align 8
  %15 = alloca %struct.ocfs2_cached_block_free*, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %0, %struct.ocfs2_cached_dealloc_ctxt** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %7, align 8
  %19 = call %struct.ocfs2_per_slot_free_list* @ocfs2_find_per_slot_free_list(i32 %16, i32 %17, %struct.ocfs2_cached_dealloc_ctxt* %18)
  store %struct.ocfs2_per_slot_free_list* %19, %struct.ocfs2_per_slot_free_list** %14, align 8
  %20 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %14, align 8
  %21 = icmp eq %struct.ocfs2_per_slot_free_list* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @mlog_errno(i32 %25)
  br label %63

27:                                               ; preds = %6
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = call %struct.ocfs2_cached_block_free* @kzalloc(i32 32, i32 %28)
  store %struct.ocfs2_cached_block_free* %29, %struct.ocfs2_cached_block_free** %15, align 8
  %30 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %15, align 8
  %31 = icmp eq %struct.ocfs2_cached_block_free* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %63

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load i8*, i8** %11, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @trace_ocfs2_cache_block_dealloc(i32 %38, i32 %39, i64 %41, i64 %43, i32 %44)
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %15, align 8
  %48 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %15, align 8
  %51 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %15, align 8
  %54 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %14, align 8
  %56 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %55, i32 0, i32 0
  %57 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %56, align 8
  %58 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %15, align 8
  %59 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %58, i32 0, i32 1
  store %struct.ocfs2_cached_block_free* %57, %struct.ocfs2_cached_block_free** %59, align 8
  %60 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %15, align 8
  %61 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %14, align 8
  %62 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %61, i32 0, i32 0
  store %struct.ocfs2_cached_block_free* %60, %struct.ocfs2_cached_block_free** %62, align 8
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %37, %32, %22
  %64 = load i32, i32* %13, align 4
  ret i32 %64
}

declare dso_local %struct.ocfs2_per_slot_free_list* @ocfs2_find_per_slot_free_list(i32, i32, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.ocfs2_cached_block_free* @kzalloc(i32, i32) #1

declare dso_local i32 @trace_ocfs2_cache_block_dealloc(i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
