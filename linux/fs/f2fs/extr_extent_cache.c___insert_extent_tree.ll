; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___insert_extent_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___insert_extent_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_node = type { i32 }
%struct.f2fs_sb_info = type { i32, i32 }
%struct.extent_tree = type { %struct.extent_node*, i32 }
%struct.extent_info = type { i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_node* (%struct.f2fs_sb_info*, %struct.extent_tree*, %struct.extent_info*, %struct.rb_node**, %struct.rb_node*, i32)* @__insert_extent_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_node* @__insert_extent_tree(%struct.f2fs_sb_info* %0, %struct.extent_tree* %1, %struct.extent_info* %2, %struct.rb_node** %3, %struct.rb_node* %4, i32 %5) #0 {
  %7 = alloca %struct.extent_node*, align 8
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca %struct.extent_tree*, align 8
  %10 = alloca %struct.extent_info*, align 8
  %11 = alloca %struct.rb_node**, align 8
  %12 = alloca %struct.rb_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rb_node**, align 8
  %15 = alloca %struct.rb_node*, align 8
  %16 = alloca %struct.extent_node*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %8, align 8
  store %struct.extent_tree* %1, %struct.extent_tree** %9, align 8
  store %struct.extent_info* %2, %struct.extent_info** %10, align 8
  store %struct.rb_node** %3, %struct.rb_node*** %11, align 8
  store %struct.rb_node* %4, %struct.rb_node** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.rb_node* null, %struct.rb_node** %15, align 8
  store %struct.extent_node* null, %struct.extent_node** %16, align 8
  %17 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %18 = icmp ne %struct.rb_node** %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %21 = icmp ne %struct.rb_node* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  store %struct.rb_node* %23, %struct.rb_node** %15, align 8
  %24 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  store %struct.rb_node** %24, %struct.rb_node*** %14, align 8
  br label %33

25:                                               ; preds = %19, %6
  store i32 1, i32* %13, align 4
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %27 = load %struct.extent_tree*, %struct.extent_tree** %9, align 8
  %28 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %27, i32 0, i32 1
  %29 = load %struct.extent_info*, %struct.extent_info** %10, align 8
  %30 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.rb_node** @f2fs_lookup_rb_tree_for_insert(%struct.f2fs_sb_info* %26, i32* %28, %struct.rb_node** %15, i32 %31, i32* %13)
  store %struct.rb_node** %32, %struct.rb_node*** %14, align 8
  br label %33

33:                                               ; preds = %25, %22
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %35 = load %struct.extent_tree*, %struct.extent_tree** %9, align 8
  %36 = load %struct.extent_info*, %struct.extent_info** %10, align 8
  %37 = load %struct.rb_node*, %struct.rb_node** %15, align 8
  %38 = load %struct.rb_node**, %struct.rb_node*** %14, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call %struct.extent_node* @__attach_extent_node(%struct.f2fs_sb_info* %34, %struct.extent_tree* %35, %struct.extent_info* %36, %struct.rb_node* %37, %struct.rb_node** %38, i32 %39)
  store %struct.extent_node* %40, %struct.extent_node** %16, align 8
  %41 = load %struct.extent_node*, %struct.extent_node** %16, align 8
  %42 = icmp ne %struct.extent_node* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  store %struct.extent_node* null, %struct.extent_node** %7, align 8
  br label %63

44:                                               ; preds = %33
  %45 = load %struct.extent_tree*, %struct.extent_tree** %9, align 8
  %46 = load %struct.extent_node*, %struct.extent_node** %16, align 8
  %47 = call i32 @__try_update_largest_extent(%struct.extent_tree* %45, %struct.extent_node* %46)
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %49 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.extent_node*, %struct.extent_node** %16, align 8
  %52 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %51, i32 0, i32 0
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %54 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %53, i32 0, i32 1
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  %56 = load %struct.extent_node*, %struct.extent_node** %16, align 8
  %57 = load %struct.extent_tree*, %struct.extent_tree** %9, align 8
  %58 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %57, i32 0, i32 0
  store %struct.extent_node* %56, %struct.extent_node** %58, align 8
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %60 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load %struct.extent_node*, %struct.extent_node** %16, align 8
  store %struct.extent_node* %62, %struct.extent_node** %7, align 8
  br label %63

63:                                               ; preds = %44, %43
  %64 = load %struct.extent_node*, %struct.extent_node** %7, align 8
  ret %struct.extent_node* %64
}

declare dso_local %struct.rb_node** @f2fs_lookup_rb_tree_for_insert(%struct.f2fs_sb_info*, i32*, %struct.rb_node**, i32, i32*) #1

declare dso_local %struct.extent_node* @__attach_extent_node(%struct.f2fs_sb_info*, %struct.extent_tree*, %struct.extent_info*, %struct.rb_node*, %struct.rb_node**, i32) #1

declare dso_local i32 @__try_update_largest_extent(%struct.extent_tree*, %struct.extent_node*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
