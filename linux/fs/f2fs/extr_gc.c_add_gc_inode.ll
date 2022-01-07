; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_add_gc_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_add_gc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_inode_list = type { i32, i32 }
%struct.inode = type { i32 }
%struct.inode_entry = type { i32, %struct.inode* }

@f2fs_inode_entry_slab = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc_inode_list*, %struct.inode*)* @add_gc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_gc_inode(%struct.gc_inode_list* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.gc_inode_list*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode_entry*, align 8
  store %struct.gc_inode_list* %0, %struct.gc_inode_list** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = load %struct.gc_inode_list*, %struct.gc_inode_list** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.inode* @find_gc_inode(%struct.gc_inode_list* %7, i32 %10)
  %12 = icmp eq %struct.inode* %6, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32 @iput(%struct.inode* %14)
  br label %35

16:                                               ; preds = %2
  %17 = load i32, i32* @f2fs_inode_entry_slab, align 4
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = call %struct.inode_entry* @f2fs_kmem_cache_alloc(i32 %17, i32 %18)
  store %struct.inode_entry* %19, %struct.inode_entry** %5, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.inode_entry*, %struct.inode_entry** %5, align 8
  %22 = getelementptr inbounds %struct.inode_entry, %struct.inode_entry* %21, i32 0, i32 1
  store %struct.inode* %20, %struct.inode** %22, align 8
  %23 = load %struct.gc_inode_list*, %struct.gc_inode_list** %3, align 8
  %24 = getelementptr inbounds %struct.gc_inode_list, %struct.gc_inode_list* %23, i32 0, i32 1
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.inode_entry*, %struct.inode_entry** %5, align 8
  %29 = call i32 @f2fs_radix_tree_insert(i32* %24, i32 %27, %struct.inode_entry* %28)
  %30 = load %struct.inode_entry*, %struct.inode_entry** %5, align 8
  %31 = getelementptr inbounds %struct.inode_entry, %struct.inode_entry* %30, i32 0, i32 0
  %32 = load %struct.gc_inode_list*, %struct.gc_inode_list** %3, align 8
  %33 = getelementptr inbounds %struct.gc_inode_list, %struct.gc_inode_list* %32, i32 0, i32 0
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  br label %35

35:                                               ; preds = %16, %13
  ret void
}

declare dso_local %struct.inode* @find_gc_inode(%struct.gc_inode_list*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode_entry* @f2fs_kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @f2fs_radix_tree_insert(i32*, i32, %struct.inode_entry*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
