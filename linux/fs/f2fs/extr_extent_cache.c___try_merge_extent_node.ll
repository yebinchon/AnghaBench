; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___try_merge_extent_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___try_merge_extent_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32 }
%struct.extent_tree = type { %struct.extent_node* }
%struct.extent_info = type { i64, i32, i32 }
%struct.extent_node = type { i32, %struct.extent_info }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_node* (%struct.f2fs_sb_info*, %struct.extent_tree*, %struct.extent_info*, %struct.extent_node*, %struct.extent_node*)* @__try_merge_extent_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_node* @__try_merge_extent_node(%struct.f2fs_sb_info* %0, %struct.extent_tree* %1, %struct.extent_info* %2, %struct.extent_node* %3, %struct.extent_node* %4) #0 {
  %6 = alloca %struct.extent_node*, align 8
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca %struct.extent_tree*, align 8
  %9 = alloca %struct.extent_info*, align 8
  %10 = alloca %struct.extent_node*, align 8
  %11 = alloca %struct.extent_node*, align 8
  %12 = alloca %struct.extent_node*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %7, align 8
  store %struct.extent_tree* %1, %struct.extent_tree** %8, align 8
  store %struct.extent_info* %2, %struct.extent_info** %9, align 8
  store %struct.extent_node* %3, %struct.extent_node** %10, align 8
  store %struct.extent_node* %4, %struct.extent_node** %11, align 8
  store %struct.extent_node* null, %struct.extent_node** %12, align 8
  %13 = load %struct.extent_node*, %struct.extent_node** %10, align 8
  %14 = icmp ne %struct.extent_node* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %5
  %16 = load %struct.extent_info*, %struct.extent_info** %9, align 8
  %17 = load %struct.extent_node*, %struct.extent_node** %10, align 8
  %18 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %17, i32 0, i32 1
  %19 = call i64 @__is_back_mergeable(%struct.extent_info* %16, %struct.extent_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.extent_info*, %struct.extent_info** %9, align 8
  %23 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.extent_node*, %struct.extent_node** %10, align 8
  %26 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %24
  store i64 %29, i64* %27, align 8
  %30 = load %struct.extent_node*, %struct.extent_node** %10, align 8
  %31 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %30, i32 0, i32 1
  store %struct.extent_info* %31, %struct.extent_info** %9, align 8
  %32 = load %struct.extent_node*, %struct.extent_node** %10, align 8
  store %struct.extent_node* %32, %struct.extent_node** %12, align 8
  br label %33

33:                                               ; preds = %21, %15, %5
  %34 = load %struct.extent_node*, %struct.extent_node** %11, align 8
  %35 = icmp ne %struct.extent_node* %34, null
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  %37 = load %struct.extent_info*, %struct.extent_info** %9, align 8
  %38 = load %struct.extent_node*, %struct.extent_node** %11, align 8
  %39 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %38, i32 0, i32 1
  %40 = call i64 @__is_front_mergeable(%struct.extent_info* %37, %struct.extent_info* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %36
  %43 = load %struct.extent_info*, %struct.extent_info** %9, align 8
  %44 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.extent_node*, %struct.extent_node** %11, align 8
  %47 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load %struct.extent_info*, %struct.extent_info** %9, align 8
  %50 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.extent_node*, %struct.extent_node** %11, align 8
  %53 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load %struct.extent_info*, %struct.extent_info** %9, align 8
  %56 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.extent_node*, %struct.extent_node** %11, align 8
  %59 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %57
  store i64 %62, i64* %60, align 8
  %63 = load %struct.extent_node*, %struct.extent_node** %12, align 8
  %64 = icmp ne %struct.extent_node* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %42
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %67 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %68 = load %struct.extent_node*, %struct.extent_node** %10, align 8
  %69 = call i32 @__release_extent_node(%struct.f2fs_sb_info* %66, %struct.extent_tree* %67, %struct.extent_node* %68)
  br label %70

70:                                               ; preds = %65, %42
  %71 = load %struct.extent_node*, %struct.extent_node** %11, align 8
  store %struct.extent_node* %71, %struct.extent_node** %12, align 8
  br label %72

72:                                               ; preds = %70, %36, %33
  %73 = load %struct.extent_node*, %struct.extent_node** %12, align 8
  %74 = icmp ne %struct.extent_node* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store %struct.extent_node* null, %struct.extent_node** %6, align 8
  br label %101

76:                                               ; preds = %72
  %77 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %78 = load %struct.extent_node*, %struct.extent_node** %12, align 8
  %79 = call i32 @__try_update_largest_extent(%struct.extent_tree* %77, %struct.extent_node* %78)
  %80 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %81 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %80, i32 0, i32 0
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.extent_node*, %struct.extent_node** %12, align 8
  %84 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %83, i32 0, i32 0
  %85 = call i32 @list_empty(i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %76
  %88 = load %struct.extent_node*, %struct.extent_node** %12, align 8
  %89 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %88, i32 0, i32 0
  %90 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %91 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %90, i32 0, i32 1
  %92 = call i32 @list_move_tail(i32* %89, i32* %91)
  %93 = load %struct.extent_node*, %struct.extent_node** %12, align 8
  %94 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %95 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %94, i32 0, i32 0
  store %struct.extent_node* %93, %struct.extent_node** %95, align 8
  br label %96

96:                                               ; preds = %87, %76
  %97 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %98 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.extent_node*, %struct.extent_node** %12, align 8
  store %struct.extent_node* %100, %struct.extent_node** %6, align 8
  br label %101

101:                                              ; preds = %96, %75
  %102 = load %struct.extent_node*, %struct.extent_node** %6, align 8
  ret %struct.extent_node* %102
}

declare dso_local i64 @__is_back_mergeable(%struct.extent_info*, %struct.extent_info*) #1

declare dso_local i64 @__is_front_mergeable(%struct.extent_info*, %struct.extent_info*) #1

declare dso_local i32 @__release_extent_node(%struct.f2fs_sb_info*, %struct.extent_tree*, %struct.extent_node*) #1

declare dso_local i32 @__try_update_largest_extent(%struct.extent_tree*, %struct.extent_node*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
