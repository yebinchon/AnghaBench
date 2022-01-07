; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_inline_attach_refcount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_inline_attach_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_xattr_header = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32, %struct.buffer_head* }

@ocfs2_journal_access_di = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_xattr_inline_attach_refcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_inline_attach_refcount(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_caching_info* %2, %struct.buffer_head* %3, %struct.ocfs2_cached_dealloc_ctxt* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_caching_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.ocfs2_xattr_header*, align 8
  %13 = alloca %struct.ocfs2_xattr_value_buf, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %4, %struct.ocfs2_cached_dealloc_ctxt** %10, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %17, %struct.ocfs2_dinode** %11, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %20, %25
  %27 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %28 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le16_to_cpu(i32 %29)
  %31 = sub nsw i64 %26, %30
  %32 = inttoptr i64 %31 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %32, %struct.ocfs2_xattr_header** %12, align 8
  %33 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %13, i32 0, i32 0
  %34 = load i32, i32* @ocfs2_journal_access_di, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %13, i32 0, i32 1
  %36 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %36, %struct.buffer_head** %35, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  %39 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %41 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %10, align 8
  %42 = call i32 @ocfs2_xattr_attach_refcount_normal(%struct.inode* %37, %struct.ocfs2_xattr_value_buf* %13, %struct.ocfs2_xattr_header* %38, %struct.ocfs2_caching_info* %39, %struct.buffer_head* %40, %struct.ocfs2_cached_dealloc_ctxt* %41)
  ret i32 %42
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_attach_refcount_normal(%struct.inode*, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_header*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
