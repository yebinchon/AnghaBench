; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_value_attach_refcount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_value_attach_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_value_root = type { %struct.ocfs2_extent_list, i32 }
%struct.ocfs2_extent_list = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_post_refcount = type { i32 }

@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_value_root*, %struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_post_refcount*)* @ocfs2_xattr_value_attach_refcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_value_attach_refcount(%struct.inode* %0, %struct.ocfs2_xattr_value_root* %1, %struct.ocfs2_extent_tree* %2, %struct.ocfs2_caching_info* %3, %struct.buffer_head* %4, %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_post_refcount* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_xattr_value_root*, align 8
  %10 = alloca %struct.ocfs2_extent_tree*, align 8
  %11 = alloca %struct.ocfs2_caching_info*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %14 = alloca %struct.ocfs2_post_refcount*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ocfs2_extent_list*, align 8
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.ocfs2_xattr_value_root* %1, %struct.ocfs2_xattr_value_root** %9, align 8
  store %struct.ocfs2_extent_tree* %2, %struct.ocfs2_extent_tree** %10, align 8
  store %struct.ocfs2_caching_info* %3, %struct.ocfs2_caching_info** %11, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %12, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  store %struct.ocfs2_post_refcount* %6, %struct.ocfs2_post_refcount** %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %9, align 8
  %23 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %16, align 8
  %26 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %9, align 8
  %27 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %26, i32 0, i32 0
  store %struct.ocfs2_extent_list* %27, %struct.ocfs2_extent_list** %20, align 8
  store i64 0, i64* %17, align 8
  br label %28

28:                                               ; preds = %74, %50, %7
  %29 = load i64, i64* %17, align 8
  %30 = load i64, i64* %16, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = load i64, i64* %17, align 8
  %35 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %36 = call i32 @ocfs2_xattr_get_clusters(%struct.inode* %33, i64 %34, i64* %18, i64* %19, %struct.ocfs2_extent_list* %35, i32* %21)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %75

42:                                               ; preds = %32
  %43 = load i64, i64* %19, align 8
  %44 = load i64, i64* %17, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %17, align 8
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %28

51:                                               ; preds = %42
  %52 = load i64, i64* %18, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %10, align 8
  %59 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %19, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* %19, align 8
  %66 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %67 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %14, align 8
  %68 = call i32 @ocfs2_add_refcount_flag(%struct.inode* %57, %struct.ocfs2_extent_tree* %58, %struct.ocfs2_caching_info* %59, %struct.buffer_head* %60, i64 %63, i64 %64, i64 %65, %struct.ocfs2_cached_dealloc_ctxt* %66, %struct.ocfs2_post_refcount* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %51
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %75

74:                                               ; preds = %51
  br label %28

75:                                               ; preds = %71, %39, %28
  %76 = load i32, i32* %15, align 4
  ret i32 %76
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_get_clusters(%struct.inode*, i64, i64*, i64*, %struct.ocfs2_extent_list*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_add_refcount_flag(%struct.inode*, %struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i64, i64, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_post_refcount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
