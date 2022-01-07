; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_register_inmem_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_register_inmem_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.inmem_pages = type { i32, %struct.page* }
%struct.TYPE_2__ = type { i32, i32 }

@ATOMIC_WRITTEN_PAGE = common dso_local global i64 0, align 8
@inmem_entry_slab = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@F2FS_INMEM_PAGES = common dso_local global i32 0, align 4
@INMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_register_inmem_page(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inmem_pages*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.page*, %struct.page** %4, align 8
  %7 = call i32 @f2fs_trace_pid(%struct.page* %6)
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = load i64, i64* @ATOMIC_WRITTEN_PAGE, align 8
  %10 = call i32 @f2fs_set_page_private(%struct.page* %8, i64 %9)
  %11 = load i32, i32* @inmem_entry_slab, align 4
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.inmem_pages* @f2fs_kmem_cache_alloc(i32 %11, i32 %12)
  store %struct.inmem_pages* %13, %struct.inmem_pages** %5, align 8
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = load %struct.inmem_pages*, %struct.inmem_pages** %5, align 8
  %16 = getelementptr inbounds %struct.inmem_pages, %struct.inmem_pages* %15, i32 0, i32 1
  store %struct.page* %14, %struct.page** %16, align 8
  %17 = load %struct.inmem_pages*, %struct.inmem_pages** %5, align 8
  %18 = getelementptr inbounds %struct.inmem_pages, %struct.inmem_pages* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i32 @get_page(%struct.page* %20)
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.inmem_pages*, %struct.inmem_pages** %5, align 8
  %27 = getelementptr inbounds %struct.inmem_pages, %struct.inmem_pages* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @list_add_tail(i32* %27, i32* %30)
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = call i32 @F2FS_I_SB(%struct.inode* %32)
  %34 = load i32, i32* @F2FS_INMEM_PAGES, align 4
  %35 = call i32 @inc_page_count(i32 %33, i32 %34)
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = load i32, i32* @INMEM, align 4
  %42 = call i32 @trace_f2fs_register_inmem_page(%struct.page* %40, i32 %41)
  ret void
}

declare dso_local i32 @f2fs_trace_pid(%struct.page*) #1

declare dso_local i32 @f2fs_set_page_private(%struct.page*, i64) #1

declare dso_local %struct.inmem_pages* @f2fs_kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @inc_page_count(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_f2fs_register_inmem_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
