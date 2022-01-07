; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_tree_verify_min_height.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_tree_verify_min_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { %struct.radix_tree_node* }
%struct.radix_tree_node = type { i32 }

@RADIX_TREE_MAP_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tree_verify_min_height(%struct.radix_tree_root* %0, i32 %1) #0 {
  %3 = alloca %struct.radix_tree_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.radix_tree_node*, align 8
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %8 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %7, i32 0, i32 0
  %9 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  store %struct.radix_tree_node* %9, %struct.radix_tree_node** %6, align 8
  %10 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %11 = call i32 @radix_tree_is_internal_node(%struct.radix_tree_node* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %20 = call %struct.radix_tree_node* @entry_to_node(%struct.radix_tree_node* %19)
  store %struct.radix_tree_node* %20, %struct.radix_tree_node** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %23 = call i32 @node_maxindex(%struct.radix_tree_node* %22)
  %24 = icmp sle i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %28 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* @RADIX_TREE_MAP_SHIFT, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i32 @shift_maxindex(i64 %37)
  %39 = icmp sgt i32 %33, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %47

42:                                               ; preds = %18
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %13, %42, %32
  ret void
}

declare dso_local i32 @radix_tree_is_internal_node(%struct.radix_tree_node*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.radix_tree_node* @entry_to_node(%struct.radix_tree_node*) #1

declare dso_local i32 @node_maxindex(%struct.radix_tree_node*) #1

declare dso_local i32 @shift_maxindex(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
