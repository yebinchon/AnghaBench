; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_destroy_extent_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_destroy_extent_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.f2fs_sb_info = type { i32, i32, i32, i32, i32 }
%struct.extent_tree = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.extent_tree* }

@extent_tree_slab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_destroy_extent_tree(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.extent_tree*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %6)
  store %struct.f2fs_sb_info* %7, %struct.f2fs_sb_info** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.extent_tree*, %struct.extent_tree** %10, align 8
  store %struct.extent_tree* %11, %struct.extent_tree** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %13 = icmp ne %struct.extent_tree* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = call i32 @is_bad_inode(%struct.inode* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %20
  %25 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %26 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %25, i32 0, i32 0
  %27 = call i64 @atomic_read(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %31 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %34 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %33, i32 0, i32 1
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %36 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %35, i32 0, i32 4
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %39 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %38, i32 0, i32 3
  %40 = call i32 @atomic_inc(i32* %39)
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %42 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %76

44:                                               ; preds = %24, %20, %15
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = call i32 @f2fs_destroy_extent_node(%struct.inode* %45)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %48 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %51 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %52 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %51, i32 0, i32 0
  %53 = call i64 @atomic_read(i32* %52)
  %54 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %50, i64 %53)
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %56 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %55, i32 0, i32 2
  %57 = load %struct.inode*, %struct.inode** %2, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @radix_tree_delete(i32* %56, i32 %59)
  %61 = load i32, i32* @extent_tree_slab, align 4
  %62 = load %struct.extent_tree*, %struct.extent_tree** %4, align 8
  %63 = call i32 @kmem_cache_free(i32 %61, %struct.extent_tree* %62)
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %65 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %64, i32 0, i32 1
  %66 = call i32 @atomic_dec(i32* %65)
  %67 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %68 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.inode*, %struct.inode** %2, align 8
  %71 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.extent_tree* null, %struct.extent_tree** %72, align 8
  %73 = load %struct.inode*, %struct.inode** %2, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @trace_f2fs_destroy_extent_tree(%struct.inode* %73, i32 %74)
  br label %76

76:                                               ; preds = %44, %29, %14
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @f2fs_destroy_extent_node(%struct.inode*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.extent_tree*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @trace_f2fs_destroy_extent_tree(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
