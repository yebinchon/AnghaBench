; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_lookup_dirty_node_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_lookup_dirty_node_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.nilfs_inode_info = type { %struct.address_space }
%struct.address_space = type { i32 }
%struct.pagevec = type { i32* }
%struct.buffer_head = type { %struct.buffer_head*, i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.list_head*)* @nilfs_lookup_dirty_node_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_lookup_dirty_node_buffers(%struct.inode* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.nilfs_inode_info*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.pagevec, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %12)
  store %struct.nilfs_inode_info* %13, %struct.nilfs_inode_info** %5, align 8
  %14 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %5, align 8
  %15 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %14, i32 0, i32 0
  store %struct.address_space* %15, %struct.address_space** %6, align 8
  store i32 0, i32* %11, align 4
  %16 = call i32 @pagevec_init(%struct.pagevec* %7)
  br label %17

17:                                               ; preds = %62, %2
  %18 = load %struct.address_space*, %struct.address_space** %6, align 8
  %19 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %20 = call i64 @pagevec_lookup_tag(%struct.pagevec* %7, %struct.address_space* %18, i32* %11, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @pagevec_count(%struct.pagevec* %7)
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %7, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.buffer_head* @page_buffers(i32 %33)
  store %struct.buffer_head* %34, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %34, %struct.buffer_head** %8, align 8
  br label %35

35:                                               ; preds = %54, %27
  %36 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %37 = call i64 @buffer_dirty(%struct.buffer_head* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = call i32 @buffer_async_write(%struct.buffer_head* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %45 = call i32 @get_bh(%struct.buffer_head* %44)
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 1
  %48 = load %struct.list_head*, %struct.list_head** %4, align 8
  %49 = call i32 @list_add_tail(i32* %47, %struct.list_head* %48)
  br label %50

50:                                               ; preds = %43, %39, %35
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load %struct.buffer_head*, %struct.buffer_head** %52, align 8
  store %struct.buffer_head* %53, %struct.buffer_head** %8, align 8
  br label %54

54:                                               ; preds = %50
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %57 = icmp ne %struct.buffer_head* %55, %56
  br i1 %57, label %35, label %58

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %23

62:                                               ; preds = %23
  %63 = call i32 @pagevec_release(%struct.pagevec* %7)
  %64 = call i32 (...) @cond_resched()
  br label %17

65:                                               ; preds = %17
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i64 @pagevec_lookup_tag(%struct.pagevec*, %struct.address_space*, i32*, i32) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local %struct.buffer_head* @page_buffers(i32) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @buffer_async_write(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
