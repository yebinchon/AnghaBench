; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_delete_node.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_delete_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32* }
%struct.radix_tree_node = type { i64, i32, i64, i32**, %struct.radix_tree_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_tree_root*, %struct.radix_tree_node*)* @delete_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_node(%struct.radix_tree_root* %0, %struct.radix_tree_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_tree_root*, align 8
  %5 = alloca %struct.radix_tree_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radix_tree_node*, align 8
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %4, align 8
  store %struct.radix_tree_node* %1, %struct.radix_tree_node** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %67, %2
  %9 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %10 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %15 = call i64 @node_to_entry(%struct.radix_tree_node* %14)
  %16 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %17 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @rcu_dereference_raw(i32* %18)
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %23 = call i32 @radix_tree_shrink(%struct.radix_tree_root* %22)
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %21, %13
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %72

28:                                               ; preds = %8
  %29 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %30 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %29, i32 0, i32 4
  %31 = load %struct.radix_tree_node*, %struct.radix_tree_node** %30, align 8
  store %struct.radix_tree_node* %31, %struct.radix_tree_node** %7, align 8
  %32 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %33 = icmp ne %struct.radix_tree_node* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %36 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %35, i32 0, i32 3
  %37 = load i32**, i32*** %36, align 8
  %38 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %39 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32*, i32** %37, i64 %40
  store i32* null, i32** %41, align 8
  %42 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %43 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  br label %56

46:                                               ; preds = %28
  %47 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %48 = call i32 @is_idr(%struct.radix_tree_root* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %52 = call i32 @root_tag_clear_all(%struct.radix_tree_root* %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %55 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %53, %34
  %57 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %58 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %57, i32 0, i32 1
  %59 = call i32 @list_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON_ONCE(i32 %62)
  %64 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %65 = call i32 @radix_tree_node_free(%struct.radix_tree_node* %64)
  store i32 1, i32* %6, align 4
  %66 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  store %struct.radix_tree_node* %66, %struct.radix_tree_node** %5, align 8
  br label %67

67:                                               ; preds = %56
  %68 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %69 = icmp ne %struct.radix_tree_node* %68, null
  br i1 %69, label %8, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %26
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @node_to_entry(%struct.radix_tree_node*) #1

declare dso_local i64 @rcu_dereference_raw(i32*) #1

declare dso_local i32 @radix_tree_shrink(%struct.radix_tree_root*) #1

declare dso_local i32 @is_idr(%struct.radix_tree_root*) #1

declare dso_local i32 @root_tag_clear_all(%struct.radix_tree_root*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @radix_tree_node_free(%struct.radix_tree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
