; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___f2fs_init_extent_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___f2fs_init_extent_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_extent = type { i64 }
%struct.f2fs_sb_info = type { i32, i32 }
%struct.extent_tree = type { i32, i32 }
%struct.extent_node = type { i32 }
%struct.extent_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.f2fs_extent*)* @__f2fs_init_extent_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__f2fs_init_extent_tree(%struct.inode* %0, %struct.f2fs_extent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.f2fs_extent*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.extent_tree*, align 8
  %8 = alloca %struct.extent_node*, align 8
  %9 = alloca %struct.extent_info, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.f2fs_extent* %1, %struct.f2fs_extent** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %10)
  store %struct.f2fs_sb_info* %11, %struct.f2fs_sb_info** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @f2fs_may_extent_tree(%struct.inode* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load %struct.f2fs_extent*, %struct.f2fs_extent** %5, align 8
  %17 = icmp ne %struct.f2fs_extent* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.f2fs_extent*, %struct.f2fs_extent** %5, align 8
  %20 = getelementptr inbounds %struct.f2fs_extent, %struct.f2fs_extent* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.f2fs_extent*, %struct.f2fs_extent** %5, align 8
  %25 = getelementptr inbounds %struct.f2fs_extent, %struct.f2fs_extent* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  store i32 1, i32* %3, align 4
  br label %72

26:                                               ; preds = %18, %15
  store i32 0, i32* %3, align 4
  br label %72

27:                                               ; preds = %2
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call %struct.extent_tree* @__grab_extent_tree(%struct.inode* %28)
  store %struct.extent_tree* %29, %struct.extent_tree** %7, align 8
  %30 = load %struct.f2fs_extent*, %struct.f2fs_extent** %5, align 8
  %31 = icmp ne %struct.f2fs_extent* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.f2fs_extent*, %struct.f2fs_extent** %5, align 8
  %34 = getelementptr inbounds %struct.f2fs_extent, %struct.f2fs_extent* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %27
  store i32 0, i32* %3, align 4
  br label %72

38:                                               ; preds = %32
  %39 = load %struct.f2fs_extent*, %struct.f2fs_extent** %5, align 8
  %40 = call i32 @get_extent_info(%struct.extent_info* %9, %struct.f2fs_extent* %39)
  %41 = load %struct.extent_tree*, %struct.extent_tree** %7, align 8
  %42 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %41, i32 0, i32 0
  %43 = call i32 @write_lock(i32* %42)
  %44 = load %struct.extent_tree*, %struct.extent_tree** %7, align 8
  %45 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %44, i32 0, i32 1
  %46 = call i64 @atomic_read(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %68

49:                                               ; preds = %38
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %51 = load %struct.extent_tree*, %struct.extent_tree** %7, align 8
  %52 = call %struct.extent_node* @__init_extent_tree(%struct.f2fs_sb_info* %50, %struct.extent_tree* %51, %struct.extent_info* %9)
  store %struct.extent_node* %52, %struct.extent_node** %8, align 8
  %53 = load %struct.extent_node*, %struct.extent_node** %8, align 8
  %54 = icmp ne %struct.extent_node* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %57 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %56, i32 0, i32 0
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.extent_node*, %struct.extent_node** %8, align 8
  %60 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %59, i32 0, i32 0
  %61 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %62 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %61, i32 0, i32 1
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %65 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  br label %67

67:                                               ; preds = %55, %49
  br label %68

68:                                               ; preds = %67, %48
  %69 = load %struct.extent_tree*, %struct.extent_tree** %7, align 8
  %70 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %69, i32 0, i32 0
  %71 = call i32 @write_unlock(i32* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %37, %26, %23
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_may_extent_tree(%struct.inode*) #1

declare dso_local %struct.extent_tree* @__grab_extent_tree(%struct.inode*) #1

declare dso_local i32 @get_extent_info(%struct.extent_info*, %struct.f2fs_extent*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.extent_node* @__init_extent_tree(%struct.f2fs_sb_info*, %struct.extent_tree*, %struct.extent_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
