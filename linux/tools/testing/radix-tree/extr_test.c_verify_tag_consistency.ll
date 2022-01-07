; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_verify_tag_consistency.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_verify_tag_consistency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { %struct.radix_tree_node* }
%struct.radix_tree_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_tag_consistency(%struct.radix_tree_root* %0, i32 %1) #0 {
  %3 = alloca %struct.radix_tree_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radix_tree_node*, align 8
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %7 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %6, i32 0, i32 0
  %8 = load %struct.radix_tree_node*, %struct.radix_tree_node** %7, align 8
  store %struct.radix_tree_node* %8, %struct.radix_tree_node** %5, align 8
  %9 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %10 = call i32 @radix_tree_is_internal_node(%struct.radix_tree_node* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.radix_tree_node*, %struct.radix_tree_node** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @root_tag_get(%struct.radix_tree_root* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @verify_node(%struct.radix_tree_node* %14, i32 %15, i32 %22)
  br label %24

24:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @radix_tree_is_internal_node(%struct.radix_tree_node*) #1

declare dso_local i32 @verify_node(%struct.radix_tree_node*, i32, i32) #1

declare dso_local i32 @root_tag_get(%struct.radix_tree_root*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
