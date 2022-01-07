; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_item_insert.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_test.c_item_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }
%struct.item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @item_insert(%struct.radix_tree_root* %0, i64 %1) #0 {
  %3 = alloca %struct.radix_tree_root*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.item*, align 8
  %6 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call %struct.item* @item_create(i64 %7, i32 0)
  store %struct.item* %8, %struct.item** %5, align 8
  %9 = load %struct.radix_tree_root*, %struct.radix_tree_root** %3, align 8
  %10 = load %struct.item*, %struct.item** %5, align 8
  %11 = getelementptr inbounds %struct.item, %struct.item* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.item*, %struct.item** %5, align 8
  %14 = call i32 @radix_tree_insert(%struct.radix_tree_root* %9, i32 %12, %struct.item* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.item*, %struct.item** %5, align 8
  %19 = call i32 @free(%struct.item* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local %struct.item* @item_create(i64, i32) #1

declare dso_local i32 @radix_tree_insert(%struct.radix_tree_root*, i32, %struct.item*) #1

declare dso_local i32 @free(%struct.item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
