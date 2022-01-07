; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c___ext_tree_search.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c___ext_tree_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_block_extent = type { i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnfs_block_extent* (%struct.rb_root*, i64)* @__ext_tree_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnfs_block_extent* @__ext_tree_search(%struct.rb_root* %0, i64 %1) #0 {
  %3 = alloca %struct.pnfs_block_extent*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.pnfs_block_extent*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %9 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %8, i32 0, i32 0
  %10 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  store %struct.rb_node* %10, %struct.rb_node** %6, align 8
  store %struct.pnfs_block_extent* null, %struct.pnfs_block_extent** %7, align 8
  br label %11

11:                                               ; preds = %38, %2
  %12 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %13 = icmp ne %struct.rb_node* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %16 = call %struct.pnfs_block_extent* @ext_node(%struct.rb_node* %15)
  store %struct.pnfs_block_extent* %16, %struct.pnfs_block_extent** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %7, align 8
  %19 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %24 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %23, i32 0, i32 1
  %25 = load %struct.rb_node*, %struct.rb_node** %24, align 8
  store %struct.rb_node* %25, %struct.rb_node** %6, align 8
  br label %38

26:                                               ; preds = %14
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %7, align 8
  %29 = call i64 @ext_f_end(%struct.pnfs_block_extent* %28)
  %30 = icmp sge i64 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %33 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %32, i32 0, i32 0
  %34 = load %struct.rb_node*, %struct.rb_node** %33, align 8
  store %struct.rb_node* %34, %struct.rb_node** %6, align 8
  br label %37

35:                                               ; preds = %26
  %36 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %7, align 8
  store %struct.pnfs_block_extent* %36, %struct.pnfs_block_extent** %3, align 8
  br label %60

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %22
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %7, align 8
  %41 = icmp ne %struct.pnfs_block_extent* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %7, align 8
  %45 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %7, align 8
  store %struct.pnfs_block_extent* %49, %struct.pnfs_block_extent** %3, align 8
  br label %60

50:                                               ; preds = %42
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %7, align 8
  %53 = call i64 @ext_f_end(%struct.pnfs_block_extent* %52)
  %54 = icmp sge i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %7, align 8
  %57 = call %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent* %56)
  store %struct.pnfs_block_extent* %57, %struct.pnfs_block_extent** %3, align 8
  br label %60

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %39
  store %struct.pnfs_block_extent* null, %struct.pnfs_block_extent** %3, align 8
  br label %60

60:                                               ; preds = %59, %55, %48, %35
  %61 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %3, align 8
  ret %struct.pnfs_block_extent* %61
}

declare dso_local %struct.pnfs_block_extent* @ext_node(%struct.rb_node*) #1

declare dso_local i64 @ext_f_end(%struct.pnfs_block_extent*) #1

declare dso_local %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
