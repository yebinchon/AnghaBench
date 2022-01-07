; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_remove_metadata_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_remove_metadata_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_meta_cache_item = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_caching_info*, %struct.ocfs2_meta_cache_item*)* @ocfs2_remove_metadata_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_remove_metadata_tree(%struct.ocfs2_caching_info* %0, %struct.ocfs2_meta_cache_item* %1) #0 {
  %3 = alloca %struct.ocfs2_caching_info*, align 8
  %4 = alloca %struct.ocfs2_meta_cache_item*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %3, align 8
  store %struct.ocfs2_meta_cache_item* %1, %struct.ocfs2_meta_cache_item** %4, align 8
  %5 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %6 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %5)
  %7 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %4, align 8
  %8 = getelementptr inbounds %struct.ocfs2_meta_cache_item, %struct.ocfs2_meta_cache_item* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @trace_ocfs2_remove_metadata_tree(i64 %6, i64 %9)
  %11 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %4, align 8
  %12 = getelementptr inbounds %struct.ocfs2_meta_cache_item, %struct.ocfs2_meta_cache_item* %11, i32 0, i32 0
  %13 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @rb_erase(i32* %12, i32* %15)
  %17 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %18 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  ret void
}

declare dso_local i32 @trace_ocfs2_remove_metadata_tree(i64, i64) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
