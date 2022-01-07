; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___remove_ino_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c___remove_ino_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.inode_management* }
%struct.inode_management = type { i32, i32, i32 }
%struct.ino_entry = type { i32 }

@ino_entry_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i32)* @__remove_ino_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__remove_ino_entry(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode_management*, align 8
  %8 = alloca %struct.ino_entry*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %10 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %9, i32 0, i32 0
  %11 = load %struct.inode_management*, %struct.inode_management** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %11, i64 %13
  store %struct.inode_management* %14, %struct.inode_management** %7, align 8
  %15 = load %struct.inode_management*, %struct.inode_management** %7, align 8
  %16 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.inode_management*, %struct.inode_management** %7, align 8
  %19 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %18, i32 0, i32 2
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.ino_entry* @radix_tree_lookup(i32* %19, i32 %20)
  store %struct.ino_entry* %21, %struct.ino_entry** %8, align 8
  %22 = load %struct.ino_entry*, %struct.ino_entry** %8, align 8
  %23 = icmp ne %struct.ino_entry* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = load %struct.ino_entry*, %struct.ino_entry** %8, align 8
  %26 = getelementptr inbounds %struct.ino_entry, %struct.ino_entry* %25, i32 0, i32 0
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.inode_management*, %struct.inode_management** %7, align 8
  %29 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %28, i32 0, i32 2
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @radix_tree_delete(i32* %29, i32 %30)
  %32 = load %struct.inode_management*, %struct.inode_management** %7, align 8
  %33 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.inode_management*, %struct.inode_management** %7, align 8
  %37 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* @ino_entry_slab, align 4
  %40 = load %struct.ino_entry*, %struct.ino_entry** %8, align 8
  %41 = call i32 @kmem_cache_free(i32 %39, %struct.ino_entry* %40)
  br label %46

42:                                               ; preds = %3
  %43 = load %struct.inode_management*, %struct.inode_management** %7, align 8
  %44 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  br label %46

46:                                               ; preds = %42, %24
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ino_entry* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ino_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
