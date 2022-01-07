; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_attach_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_attach_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_inode_info = type { i32 }
%struct.ocfs2_dinode = type { i32 }

@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_xattr_attach_refcount_tree(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_caching_info* %2, %struct.buffer_head* %3, %struct.ocfs2_cached_dealloc_ctxt* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_caching_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_inode_info*, align 8
  %13 = alloca %struct.ocfs2_dinode*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %4, %struct.ocfs2_cached_dealloc_ctxt** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %15)
  store %struct.ocfs2_inode_info* %16, %struct.ocfs2_inode_info** %12, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %20, %struct.ocfs2_dinode** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  %21 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %12, align 8
  %22 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %5
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %32 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %10, align 8
  %33 = call i32 @ocfs2_xattr_inline_attach_refcount(%struct.inode* %28, %struct.buffer_head* %29, %struct.ocfs2_caching_info* %30, %struct.buffer_head* %31, %struct.ocfs2_cached_dealloc_ctxt* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %73

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %5
  %41 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %42 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %73

46:                                               ; preds = %40
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %49 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le64_to_cpu(i32 %50)
  %52 = call i32 @ocfs2_read_xattr_block(%struct.inode* %47, i32 %51, %struct.buffer_head** %14)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %73

58:                                               ; preds = %46
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %61 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %63 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %10, align 8
  %64 = call i32 @ocfs2_xattr_block_attach_refcount(%struct.inode* %59, %struct.buffer_head* %60, %struct.ocfs2_caching_info* %61, %struct.buffer_head* %62, %struct.ocfs2_cached_dealloc_ctxt* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %72 = call i32 @brelse(%struct.buffer_head* %71)
  br label %73

73:                                               ; preds = %70, %55, %45, %36
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_xattr_inline_attach_refcount(%struct.inode*, %struct.buffer_head*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_xattr_block(%struct.inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_block_attach_refcount(%struct.inode*, %struct.buffer_head*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
