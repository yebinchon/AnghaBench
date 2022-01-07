; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_add_fsync_node_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_add_fsync_node_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32, i32, i32 }
%struct.page = type { i32 }
%struct.fsync_node_entry = type { i32, i32, %struct.page* }

@fsync_node_entry_slab = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.page*)* @f2fs_add_fsync_node_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_add_fsync_node_entry(%struct.f2fs_sb_info* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.fsync_node_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load i32, i32* @fsync_node_entry_slab, align 4
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.fsync_node_entry* @f2fs_kmem_cache_alloc(i32 %8, i32 %9)
  store %struct.fsync_node_entry* %10, %struct.fsync_node_entry** %5, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @get_page(%struct.page* %11)
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = load %struct.fsync_node_entry*, %struct.fsync_node_entry** %5, align 8
  %15 = getelementptr inbounds %struct.fsync_node_entry, %struct.fsync_node_entry* %14, i32 0, i32 2
  store %struct.page* %13, %struct.page** %15, align 8
  %16 = load %struct.fsync_node_entry*, %struct.fsync_node_entry** %5, align 8
  %17 = getelementptr inbounds %struct.fsync_node_entry, %struct.fsync_node_entry* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.fsync_node_entry*, %struct.fsync_node_entry** %5, align 8
  %24 = getelementptr inbounds %struct.fsync_node_entry, %struct.fsync_node_entry* %23, i32 0, i32 1
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %25, i32 0, i32 3
  %27 = call i32 @list_add_tail(i32* %24, i32* %26)
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %29 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.fsync_node_entry*, %struct.fsync_node_entry** %5, align 8
  %33 = getelementptr inbounds %struct.fsync_node_entry, %struct.fsync_node_entry* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.fsync_node_entry*, %struct.fsync_node_entry** %5, align 8
  %35 = getelementptr inbounds %struct.fsync_node_entry, %struct.fsync_node_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %38 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %42 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %41, i32 0, i32 0
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.fsync_node_entry* @f2fs_kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
