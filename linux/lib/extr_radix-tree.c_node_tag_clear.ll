; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_node_tag_clear.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_node_tag_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }
%struct.radix_tree_node = type { i32, %struct.radix_tree_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radix_tree_root*, %struct.radix_tree_node*, i32, i32)* @node_tag_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_tag_clear(%struct.radix_tree_root* %0, %struct.radix_tree_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radix_tree_root*, align 8
  %6 = alloca %struct.radix_tree_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %5, align 8
  store %struct.radix_tree_node* %1, %struct.radix_tree_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %29, %4
  %10 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %11 = icmp ne %struct.radix_tree_node* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @tag_get(%struct.radix_tree_node* %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %45

19:                                               ; preds = %12
  %20 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @tag_clear(%struct.radix_tree_node* %20, i32 %21, i32 %22)
  %24 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @any_tag_set(%struct.radix_tree_node* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %45

29:                                               ; preds = %19
  %30 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %31 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %34 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %33, i32 0, i32 1
  %35 = load %struct.radix_tree_node*, %struct.radix_tree_node** %34, align 8
  store %struct.radix_tree_node* %35, %struct.radix_tree_node** %6, align 8
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @root_tag_get(%struct.radix_tree_root* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @root_tag_clear(%struct.radix_tree_root* %42, i32 %43)
  br label %45

45:                                               ; preds = %18, %28, %41, %36
  ret void
}

declare dso_local i32 @tag_get(%struct.radix_tree_node*, i32, i32) #1

declare dso_local i32 @tag_clear(%struct.radix_tree_node*, i32, i32) #1

declare dso_local i64 @any_tag_set(%struct.radix_tree_node*, i32) #1

declare dso_local i64 @root_tag_get(%struct.radix_tree_root*, i32) #1

declare dso_local i32 @root_tag_clear(%struct.radix_tree_root*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
