; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_destroy_extent_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_destroy_extent_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.extent_tree = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.extent_tree* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_destroy_extent_node(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.extent_tree*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %7)
  store %struct.f2fs_sb_info* %8, %struct.f2fs_sb_info** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.extent_tree*, %struct.extent_tree** %11, align 8
  store %struct.extent_tree* %12, %struct.extent_tree** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.extent_tree*, %struct.extent_tree** %5, align 8
  %14 = icmp ne %struct.extent_tree* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.extent_tree*, %struct.extent_tree** %5, align 8
  %17 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %16, i32 0, i32 1
  %18 = call i32 @atomic_read(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %32

21:                                               ; preds = %15
  %22 = load %struct.extent_tree*, %struct.extent_tree** %5, align 8
  %23 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %22, i32 0, i32 0
  %24 = call i32 @write_lock(i32* %23)
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %26 = load %struct.extent_tree*, %struct.extent_tree** %5, align 8
  %27 = call i32 @__free_extent_tree(%struct.f2fs_sb_info* %25, %struct.extent_tree* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.extent_tree*, %struct.extent_tree** %5, align 8
  %29 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %28, i32 0, i32 0
  %30 = call i32 @write_unlock(i32* %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %21, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @__free_extent_tree(%struct.f2fs_sb_info*, %struct.extent_tree*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
