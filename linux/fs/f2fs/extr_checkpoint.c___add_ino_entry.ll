; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___add_ino_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___add_ino_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.inode_management* }
%struct.inode_management = type { i32, i32, i32, i32 }
%struct.ino_entry = type { i32, i32, i32 }

@ino_entry_slab = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@ORPHAN_INO = common dso_local global i32 0, align 4
@FLUSH_INO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i32, i32)* @__add_ino_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__add_ino_entry(%struct.f2fs_sb_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode_management*, align 8
  %10 = alloca %struct.ino_entry*, align 8
  %11 = alloca %struct.ino_entry*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %13 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %12, i32 0, i32 0
  %14 = load %struct.inode_management*, %struct.inode_management** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %14, i64 %16
  store %struct.inode_management* %17, %struct.inode_management** %9, align 8
  %18 = load i32, i32* @ino_entry_slab, align 4
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.ino_entry* @f2fs_kmem_cache_alloc(i32 %18, i32 %19)
  store %struct.ino_entry* %20, %struct.ino_entry** %11, align 8
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = load i32, i32* @__GFP_NOFAIL, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @radix_tree_preload(i32 %23)
  %25 = load %struct.inode_management*, %struct.inode_management** %9, align 8
  %26 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.inode_management*, %struct.inode_management** %9, align 8
  %29 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %28, i32 0, i32 3
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.ino_entry* @radix_tree_lookup(i32* %29, i32 %30)
  store %struct.ino_entry* %31, %struct.ino_entry** %10, align 8
  %32 = load %struct.ino_entry*, %struct.ino_entry** %10, align 8
  %33 = icmp ne %struct.ino_entry* %32, null
  br i1 %33, label %66, label %34

34:                                               ; preds = %4
  %35 = load %struct.ino_entry*, %struct.ino_entry** %11, align 8
  store %struct.ino_entry* %35, %struct.ino_entry** %10, align 8
  %36 = load %struct.inode_management*, %struct.inode_management** %9, align 8
  %37 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %36, i32 0, i32 3
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ino_entry*, %struct.ino_entry** %10, align 8
  %40 = call i32 @radix_tree_insert(i32* %37, i32 %38, %struct.ino_entry* %39)
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %45 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %44, i32 1)
  br label %46

46:                                               ; preds = %43, %34
  %47 = load %struct.ino_entry*, %struct.ino_entry** %10, align 8
  %48 = call i32 @memset(%struct.ino_entry* %47, i32 0, i32 12)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.ino_entry*, %struct.ino_entry** %10, align 8
  %51 = getelementptr inbounds %struct.ino_entry, %struct.ino_entry* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ino_entry*, %struct.ino_entry** %10, align 8
  %53 = getelementptr inbounds %struct.ino_entry, %struct.ino_entry* %52, i32 0, i32 1
  %54 = load %struct.inode_management*, %struct.inode_management** %9, align 8
  %55 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %54, i32 0, i32 2
  %56 = call i32 @list_add_tail(i32* %53, i32* %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @ORPHAN_INO, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %46
  %61 = load %struct.inode_management*, %struct.inode_management** %9, align 8
  %62 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %46
  br label %66

66:                                               ; preds = %65, %4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @FLUSH_INO, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.ino_entry*, %struct.ino_entry** %10, align 8
  %73 = getelementptr inbounds %struct.ino_entry, %struct.ino_entry* %72, i32 0, i32 0
  %74 = bitcast i32* %73 to i8*
  %75 = call i32 @f2fs_set_bit(i32 %71, i8* %74)
  br label %76

76:                                               ; preds = %70, %66
  %77 = load %struct.inode_management*, %struct.inode_management** %9, align 8
  %78 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = call i32 (...) @radix_tree_preload_end()
  %81 = load %struct.ino_entry*, %struct.ino_entry** %10, align 8
  %82 = load %struct.ino_entry*, %struct.ino_entry** %11, align 8
  %83 = icmp ne %struct.ino_entry* %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load i32, i32* @ino_entry_slab, align 4
  %86 = load %struct.ino_entry*, %struct.ino_entry** %11, align 8
  %87 = call i32 @kmem_cache_free(i32 %85, %struct.ino_entry* %86)
  br label %88

88:                                               ; preds = %84, %76
  ret void
}

declare dso_local %struct.ino_entry* @f2fs_kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ino_entry* @radix_tree_lookup(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.ino_entry*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @memset(%struct.ino_entry*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @f2fs_set_bit(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ino_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
