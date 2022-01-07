; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_radix_tree_tag_get.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_radix_tree_tag_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_node = type { i32 }
%struct.radix_tree_root = type { i32 }

@RADIX_TREE_RETRY = common dso_local global %struct.radix_tree_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radix_tree_tag_get(%struct.radix_tree_root* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radix_tree_root*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radix_tree_node*, align 8
  %9 = alloca %struct.radix_tree_node*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @root_tag_get(%struct.radix_tree_root* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

17:                                               ; preds = %3
  %18 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %19 = call i32 @radix_tree_load_root(%struct.radix_tree_root* %18, %struct.radix_tree_node** %8, i64* %10)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %48

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %46, %24
  %26 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %27 = call i64 @radix_tree_is_internal_node(%struct.radix_tree_node* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %31 = call %struct.radix_tree_node* @entry_to_node(%struct.radix_tree_node* %30)
  store %struct.radix_tree_node* %31, %struct.radix_tree_node** %9, align 8
  %32 = load %struct.radix_tree_node*, %struct.radix_tree_node** %9, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @radix_tree_descend(%struct.radix_tree_node* %32, %struct.radix_tree_node** %8, i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.radix_tree_node*, %struct.radix_tree_node** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @tag_get(%struct.radix_tree_node* %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %48

41:                                               ; preds = %29
  %42 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %43 = load %struct.radix_tree_node*, %struct.radix_tree_node** @RADIX_TREE_RETRY, align 8
  %44 = icmp eq %struct.radix_tree_node* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %47

46:                                               ; preds = %41
  br label %25

47:                                               ; preds = %45, %25
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %40, %23, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @root_tag_get(%struct.radix_tree_root*, i32) #1

declare dso_local i32 @radix_tree_load_root(%struct.radix_tree_root*, %struct.radix_tree_node**, i64*) #1

declare dso_local i64 @radix_tree_is_internal_node(%struct.radix_tree_node*) #1

declare dso_local %struct.radix_tree_node* @entry_to_node(%struct.radix_tree_node*) #1

declare dso_local i32 @radix_tree_descend(%struct.radix_tree_node*, %struct.radix_tree_node**, i64) #1

declare dso_local i32 @tag_get(%struct.radix_tree_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
