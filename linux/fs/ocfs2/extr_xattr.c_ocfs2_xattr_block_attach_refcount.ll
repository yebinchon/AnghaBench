; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_attach_refcount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_attach_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_xattr_block = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_xattr_header }
%struct.ocfs2_xattr_header = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32, %struct.buffer_head* }
%struct.ocfs2_xattr_tree_value_refcount_para = type { %struct.ocfs2_cached_dealloc_ctxt*, %struct.buffer_head*, %struct.ocfs2_caching_info* }

@OCFS2_XATTR_INDEXED = common dso_local global i32 0, align 4
@ocfs2_journal_access_xb = common dso_local global i32 0, align 4
@ocfs2_refcount_xattr_tree_rec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_xattr_block_attach_refcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_block_attach_refcount(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_caching_info* %2, %struct.buffer_head* %3, %struct.ocfs2_cached_dealloc_ctxt* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_caching_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_xattr_block*, align 8
  %13 = alloca %struct.ocfs2_xattr_header*, align 8
  %14 = alloca %struct.ocfs2_xattr_value_buf, align 8
  %15 = alloca %struct.ocfs2_xattr_tree_value_refcount_para, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %4, %struct.ocfs2_cached_dealloc_ctxt** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %19, %struct.ocfs2_xattr_block** %12, align 8
  %20 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %12, align 8
  %21 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = load i32, i32* @OCFS2_XATTR_INDEXED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %5
  %28 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %12, align 8
  %29 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.ocfs2_xattr_header* %30, %struct.ocfs2_xattr_header** %13, align 8
  %31 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %14, i32 0, i32 0
  %32 = load i32, i32* @ocfs2_journal_access_xb, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %14, i32 0, i32 1
  %34 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %34, %struct.buffer_head** %33, align 8
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %37 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %10, align 8
  %40 = call i32 @ocfs2_xattr_attach_refcount_normal(%struct.inode* %35, %struct.ocfs2_xattr_value_buf* %14, %struct.ocfs2_xattr_header* %36, %struct.ocfs2_caching_info* %37, %struct.buffer_head* %38, %struct.ocfs2_cached_dealloc_ctxt* %39)
  store i32 %40, i32* %11, align 4
  br label %52

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.ocfs2_xattr_tree_value_refcount_para, %struct.ocfs2_xattr_tree_value_refcount_para* %15, i32 0, i32 0
  %43 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %10, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %43, %struct.ocfs2_cached_dealloc_ctxt** %42, align 8
  %44 = getelementptr inbounds %struct.ocfs2_xattr_tree_value_refcount_para, %struct.ocfs2_xattr_tree_value_refcount_para* %15, i32 0, i32 1
  %45 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %45, %struct.buffer_head** %44, align 8
  %46 = getelementptr inbounds %struct.ocfs2_xattr_tree_value_refcount_para, %struct.ocfs2_xattr_tree_value_refcount_para* %15, i32 0, i32 2
  %47 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  store %struct.ocfs2_caching_info* %47, %struct.ocfs2_caching_info** %46, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = load i32, i32* @ocfs2_refcount_xattr_tree_rec, align 4
  %51 = call i32 @ocfs2_iterate_xattr_index_block(%struct.inode* %48, %struct.buffer_head* %49, i32 %50, %struct.ocfs2_xattr_tree_value_refcount_para* %15)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %41, %27
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_attach_refcount_normal(%struct.inode*, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_header*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_iterate_xattr_index_block(%struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_xattr_tree_value_refcount_para*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
