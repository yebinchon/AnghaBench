; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_remove_xattr_clusters_from_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_remove_xattr_clusters_from_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_remove_xattr_clusters_from_cache(%struct.ocfs2_caching_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_caching_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %4, align 8
  %11 = call %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %10)
  store %struct.super_block* %11, %struct.super_block** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %7, align 8
  %13 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %12, i32 1)
  %14 = load i32, i32* %6, align 4
  %15 = mul i32 %13, %14
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %24, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ocfs2_remove_block_from_cache(%struct.ocfs2_caching_info* %21, i32 %22)
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %16

29:                                               ; preds = %16
  ret void
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_remove_block_from_cache(%struct.ocfs2_caching_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
