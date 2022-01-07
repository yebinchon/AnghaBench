; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_lock_xattr_remove_allocators.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_lock_xattr_remove_allocators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_value_root = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_value_root*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_alloc_context**, i32*)* @ocfs2_lock_xattr_remove_allocators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_lock_xattr_remove_allocators(%struct.inode* %0, %struct.ocfs2_xattr_value_root* %1, %struct.ocfs2_caching_info* %2, %struct.buffer_head* %3, %struct.ocfs2_alloc_context** %4, i32* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_xattr_value_root*, align 8
  %9 = alloca %struct.ocfs2_caching_info*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_alloc_context**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.ocfs2_xattr_value_root* %1, %struct.ocfs2_xattr_value_root** %8, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store %struct.ocfs2_alloc_context** %4, %struct.ocfs2_alloc_context*** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %12, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %8, align 8
  %21 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %20, i32 0, i32 0
  %22 = call i32 @ocfs2_xattr_get_clusters(%struct.inode* %19, i32 0, i32* %15, i32* %16, i32* %21, i32* %17)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @mlog_errno(i32 %26)
  br label %60

28:                                               ; preds = %6
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %60

34:                                               ; preds = %28
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %38 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %8, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @ocfs2_refcounted_xattr_delete_need(%struct.inode* %35, %struct.ocfs2_caching_info* %36, %struct.buffer_head* %37, %struct.ocfs2_xattr_value_root* %38, i32* %14, i32* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %60

46:                                               ; preds = %34
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @OCFS2_SB(i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %11, align 8
  %53 = call i32 @ocfs2_reserve_new_metadata_blocks(i32 %50, i32 %51, %struct.ocfs2_alloc_context** %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %59

59:                                               ; preds = %56, %46
  br label %60

60:                                               ; preds = %59, %43, %33, %25
  %61 = load i32, i32* %13, align 4
  ret i32 %61
}

declare dso_local i32 @ocfs2_xattr_get_clusters(%struct.inode*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_refcounted_xattr_delete_need(%struct.inode*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_xattr_value_root*, i32*, i32*) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(i32, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @OCFS2_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
