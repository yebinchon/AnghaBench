; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_radix_tree_load_root.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_radix_tree_load_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }
%struct.radix_tree_node = type { i32 }

@RADIX_TREE_MAP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_tree_root*, %struct.radix_tree_node**, i64*)* @radix_tree_load_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radix_tree_load_root(%struct.radix_tree_root* %0, %struct.radix_tree_node** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radix_tree_root*, align 8
  %6 = alloca %struct.radix_tree_node**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.radix_tree_node*, align 8
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %5, align 8
  store %struct.radix_tree_node** %1, %struct.radix_tree_node*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %10 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.radix_tree_node* @rcu_dereference_raw(i32 %11)
  store %struct.radix_tree_node* %12, %struct.radix_tree_node** %8, align 8
  %13 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %14 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %6, align 8
  store %struct.radix_tree_node* %13, %struct.radix_tree_node** %14, align 8
  %15 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %16 = call i32 @radix_tree_is_internal_node(%struct.radix_tree_node* %15)
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %21 = call %struct.radix_tree_node* @entry_to_node(%struct.radix_tree_node* %20)
  store %struct.radix_tree_node* %21, %struct.radix_tree_node** %8, align 8
  %22 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %23 = call i64 @node_maxindex(%struct.radix_tree_node* %22)
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  %25 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %26 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RADIX_TREE_MAP_SHIFT, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i64*, i64** %7, align 8
  store i64 0, i64* %31, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.radix_tree_node* @rcu_dereference_raw(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @radix_tree_is_internal_node(%struct.radix_tree_node*) #1

declare dso_local %struct.radix_tree_node* @entry_to_node(%struct.radix_tree_node*) #1

declare dso_local i64 @node_maxindex(%struct.radix_tree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
