; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_remove_block_from_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_remove_block_from_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32, i32 }
%struct.ocfs2_meta_cache_item = type { i32 }

@OCFS2_CACHE_FL_INLINE = common dso_local global i32 0, align 4
@ocfs2_uptodate_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_caching_info*, i64)* @ocfs2_remove_block_from_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_remove_block_from_cache(%struct.ocfs2_caching_info* %0, i64 %1) #0 {
  %3 = alloca %struct.ocfs2_caching_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_meta_cache_item*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.ocfs2_meta_cache_item* null, %struct.ocfs2_meta_cache_item** %6, align 8
  %7 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %8 = call i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info* %7)
  %9 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %10 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %9)
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @trace_ocfs2_remove_block_from_cache(i64 %10, i64 %11, i32 %14, i32 %17)
  %19 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @ocfs2_search_cache_array(%struct.ocfs2_caching_info* %26, i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ocfs2_remove_metadata_array(%struct.ocfs2_caching_info* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %25
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call %struct.ocfs2_meta_cache_item* @ocfs2_search_cache_tree(%struct.ocfs2_caching_info* %37, i64 %38)
  store %struct.ocfs2_meta_cache_item* %39, %struct.ocfs2_meta_cache_item** %6, align 8
  %40 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %41 = icmp ne %struct.ocfs2_meta_cache_item* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %44 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %45 = call i32 @ocfs2_remove_metadata_tree(%struct.ocfs2_caching_info* %43, %struct.ocfs2_meta_cache_item* %44)
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %35
  %48 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %49 = call i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info* %48)
  %50 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %51 = icmp ne %struct.ocfs2_meta_cache_item* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @ocfs2_uptodate_cachep, align 4
  %54 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %55 = call i32 @kmem_cache_free(i32 %53, %struct.ocfs2_meta_cache_item* %54)
  br label %56

56:                                               ; preds = %52, %47
  ret void
}

declare dso_local i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @trace_ocfs2_remove_block_from_cache(i64, i64, i32, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_search_cache_array(%struct.ocfs2_caching_info*, i64) #1

declare dso_local i32 @ocfs2_remove_metadata_array(%struct.ocfs2_caching_info*, i32) #1

declare dso_local %struct.ocfs2_meta_cache_item* @ocfs2_search_cache_tree(%struct.ocfs2_caching_info*, i64) #1

declare dso_local i32 @ocfs2_remove_metadata_tree(%struct.ocfs2_caching_info*, %struct.ocfs2_meta_cache_item*) #1

declare dso_local i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ocfs2_meta_cache_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
