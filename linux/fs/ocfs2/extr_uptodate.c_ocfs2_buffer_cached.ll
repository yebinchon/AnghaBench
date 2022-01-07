; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_buffer_cached.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_buffer_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_meta_cache_item = type { i32 }

@OCFS2_CACHE_FL_INLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_caching_info*, %struct.buffer_head*)* @ocfs2_buffer_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_buffer_cached(%struct.ocfs2_caching_info* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.ocfs2_caching_info*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_meta_cache_item*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 -1, i32* %5, align 4
  store %struct.ocfs2_meta_cache_item* null, %struct.ocfs2_meta_cache_item** %6, align 8
  %7 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %8 = call i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info* %7)
  %9 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %10 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %9)
  %11 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @trace_ocfs2_buffer_cached_begin(i64 %10, i64 %13, i32 %22)
  %24 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %25 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ocfs2_search_cache_array(%struct.ocfs2_caching_info* %31, i64 %34)
  store i32 %35, i32* %5, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call %struct.ocfs2_meta_cache_item* @ocfs2_search_cache_tree(%struct.ocfs2_caching_info* %37, i64 %40)
  store %struct.ocfs2_meta_cache_item* %41, %struct.ocfs2_meta_cache_item** %6, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %44 = call i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %47 = call i32 @trace_ocfs2_buffer_cached_end(i32 %45, %struct.ocfs2_meta_cache_item* %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %52 = icmp ne %struct.ocfs2_meta_cache_item* %51, null
  br label %53

53:                                               ; preds = %50, %42
  %54 = phi i1 [ true, %42 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  ret i32 %55
}

declare dso_local i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @trace_ocfs2_buffer_cached_begin(i64, i64, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_search_cache_array(%struct.ocfs2_caching_info*, i64) #1

declare dso_local %struct.ocfs2_meta_cache_item* @ocfs2_search_cache_tree(%struct.ocfs2_caching_info*, i64) #1

declare dso_local i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @trace_ocfs2_buffer_cached_end(i32, %struct.ocfs2_meta_cache_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
