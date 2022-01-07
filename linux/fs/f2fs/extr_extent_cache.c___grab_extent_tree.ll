; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___grab_extent_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___grab_extent_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_tree = type { i32, i32, i32, i32*, i32, i32 }
%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.extent_tree* }

@extent_tree_slab = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@RB_ROOT_CACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_tree* (%struct.inode*)* @__grab_extent_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_tree* @__grab_extent_tree(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.extent_tree*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %6)
  store %struct.f2fs_sb_info* %7, %struct.f2fs_sb_info** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %14, i32 0, i32 3
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.extent_tree* @radix_tree_lookup(i32* %15, i32 %16)
  store %struct.extent_tree* %17, %struct.extent_tree** %4, align 8
  %18 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %19 = icmp ne %struct.extent_tree* %18, null
  br i1 %19, label %51, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @extent_tree_slab, align 4
  %22 = load i32, i32* @GFP_NOFS, align 4
  %23 = call %struct.extent_tree* @f2fs_kmem_cache_alloc(i32 %21, i32 %22)
  store %struct.extent_tree* %23, %struct.extent_tree** %4, align 8
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %25 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %24, i32 0, i32 3
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %28 = call i32 @f2fs_radix_tree_insert(i32* %25, i32 %26, %struct.extent_tree* %27)
  %29 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %30 = call i32 @memset(%struct.extent_tree* %29, i32 0, i32 32)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %33 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @RB_ROOT_CACHED, align 4
  %35 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %36 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %38 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %40 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %39, i32 0, i32 2
  %41 = call i32 @rwlock_init(i32* %40)
  %42 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %43 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %42, i32 0, i32 0
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %46 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %45, i32 0, i32 1
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %49 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %48, i32 0, i32 2
  %50 = call i32 @atomic_inc(i32* %49)
  br label %58

51:                                               ; preds = %1
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %53 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %52, i32 0, i32 1
  %54 = call i32 @atomic_dec(i32* %53)
  %55 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %56 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %55, i32 0, i32 0
  %57 = call i32 @list_del_init(i32* %56)
  br label %58

58:                                               ; preds = %51, %20
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %60 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %63 = load %struct.inode*, %struct.inode** %2, align 8
  %64 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store %struct.extent_tree* %62, %struct.extent_tree** %65, align 8
  %66 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  ret %struct.extent_tree* %66
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.extent_tree* @radix_tree_lookup(i32*, i32) #1

declare dso_local %struct.extent_tree* @f2fs_kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @f2fs_radix_tree_insert(i32*, i32, %struct.extent_tree*) #1

declare dso_local i32 @memset(%struct.extent_tree*, i32, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
