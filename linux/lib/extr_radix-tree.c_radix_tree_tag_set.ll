; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_radix_tree_tag_set.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_radix-tree.c_radix_tree_tag_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }
%struct.radix_tree_node = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @radix_tree_tag_set(%struct.radix_tree_root* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.radix_tree_root*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radix_tree_node*, align 8
  %8 = alloca %struct.radix_tree_node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %12 = bitcast %struct.radix_tree_node** %7 to i8**
  %13 = call i32 @radix_tree_load_root(%struct.radix_tree_root* %11, i8** %12, i64* %9)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ugt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  br label %19

19:                                               ; preds = %51, %3
  %20 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %21 = bitcast %struct.radix_tree_node* %20 to i8*
  %22 = call i64 @radix_tree_is_internal_node(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %26 = bitcast %struct.radix_tree_node* %25 to i8*
  %27 = call i8* @entry_to_node(i8* %26)
  %28 = bitcast i8* %27 to %struct.radix_tree_node*
  store %struct.radix_tree_node* %28, %struct.radix_tree_node** %8, align 8
  %29 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %30 = bitcast %struct.radix_tree_node* %29 to i8*
  %31 = bitcast %struct.radix_tree_node** %7 to i8**
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @radix_tree_descend(i8* %30, i8** %31, i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %35 = icmp ne %struct.radix_tree_node* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %40 = bitcast %struct.radix_tree_node* %39 to i8*
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @tag_get(i8* %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %24
  %46 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %47 = bitcast %struct.radix_tree_node* %46 to i8*
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @tag_set(i8* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %24
  br label %19

52:                                               ; preds = %19
  %53 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @root_tag_get(%struct.radix_tree_root* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @root_tag_set(%struct.radix_tree_root* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  %63 = bitcast %struct.radix_tree_node* %62 to i8*
  ret i8* %63
}

declare dso_local i32 @radix_tree_load_root(%struct.radix_tree_root*, i8**, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @radix_tree_is_internal_node(i8*) #1

declare dso_local i8* @entry_to_node(i8*) #1

declare dso_local i32 @radix_tree_descend(i8*, i8**, i64) #1

declare dso_local i32 @tag_get(i8*, i32, i32) #1

declare dso_local i32 @tag_set(i8*, i32, i32) #1

declare dso_local i32 @root_tag_get(%struct.radix_tree_root*, i32) #1

declare dso_local i32 @root_tag_set(%struct.radix_tree_root*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
