; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___init_extent_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___init_extent_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_node = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.extent_tree = type { %struct.extent_node*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rb_node* }
%struct.rb_node = type { i32 }
%struct.extent_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_node* (%struct.f2fs_sb_info*, %struct.extent_tree*, %struct.extent_info*)* @__init_extent_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_node* @__init_extent_tree(%struct.f2fs_sb_info* %0, %struct.extent_tree* %1, %struct.extent_info* %2) #0 {
  %4 = alloca %struct.extent_node*, align 8
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.extent_tree*, align 8
  %7 = alloca %struct.extent_info*, align 8
  %8 = alloca %struct.rb_node**, align 8
  %9 = alloca %struct.extent_node*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.extent_tree* %1, %struct.extent_tree** %6, align 8
  store %struct.extent_info* %2, %struct.extent_info** %7, align 8
  %10 = load %struct.extent_tree*, %struct.extent_tree** %6, align 8
  %11 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.rb_node** %13, %struct.rb_node*** %8, align 8
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %15 = load %struct.extent_tree*, %struct.extent_tree** %6, align 8
  %16 = load %struct.extent_info*, %struct.extent_info** %7, align 8
  %17 = load %struct.rb_node**, %struct.rb_node*** %8, align 8
  %18 = call %struct.extent_node* @__attach_extent_node(%struct.f2fs_sb_info* %14, %struct.extent_tree* %15, %struct.extent_info* %16, i32* null, %struct.rb_node** %17, i32 1)
  store %struct.extent_node* %18, %struct.extent_node** %9, align 8
  %19 = load %struct.extent_node*, %struct.extent_node** %9, align 8
  %20 = icmp ne %struct.extent_node* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.extent_node* null, %struct.extent_node** %4, align 8
  br label %32

22:                                               ; preds = %3
  %23 = load %struct.extent_node*, %struct.extent_node** %9, align 8
  %24 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.extent_tree*, %struct.extent_tree** %6, align 8
  %27 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.extent_node*, %struct.extent_node** %9, align 8
  %29 = load %struct.extent_tree*, %struct.extent_tree** %6, align 8
  %30 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %29, i32 0, i32 0
  store %struct.extent_node* %28, %struct.extent_node** %30, align 8
  %31 = load %struct.extent_node*, %struct.extent_node** %9, align 8
  store %struct.extent_node* %31, %struct.extent_node** %4, align 8
  br label %32

32:                                               ; preds = %22, %21
  %33 = load %struct.extent_node*, %struct.extent_node** %4, align 8
  ret %struct.extent_node* %33
}

declare dso_local %struct.extent_node* @__attach_extent_node(%struct.f2fs_sb_info*, %struct.extent_tree*, %struct.extent_info*, i32*, %struct.rb_node**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
