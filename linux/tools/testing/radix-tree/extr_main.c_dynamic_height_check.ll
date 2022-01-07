; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c_dynamic_height_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c_dynamic_height_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dynamic_height_check() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @tree, align 4
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call i32 @RADIX_TREE(i32 %2, i32 %3)
  %5 = call i32 @tree_verify_min_height(i32* @tree, i32 0)
  %6 = call i32 @item_insert(i32* @tree, i32 42)
  %7 = call i32 @tree_verify_min_height(i32* @tree, i32 42)
  %8 = call i32 @item_insert(i32* @tree, i32 1000000)
  %9 = call i32 @tree_verify_min_height(i32* @tree, i32 1000000)
  %10 = call i32 @item_delete(i32* @tree, i32 1000000)
  %11 = call i32 @assert(i32 %10)
  %12 = call i32 @tree_verify_min_height(i32* @tree, i32 42)
  %13 = call i32 @item_delete(i32* @tree, i32 42)
  %14 = call i32 @assert(i32 %13)
  %15 = call i32 @tree_verify_min_height(i32* @tree, i32 0)
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %24, %0
  %17 = load i32, i32* %1, align 4
  %18 = icmp slt i32 %17, 1000
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @item_insert(i32* @tree, i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @tree_verify_min_height(i32* @tree, i32 %22)
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %16

27:                                               ; preds = %16
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %38, %27
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @item_delete(i32* @tree, i32 %31)
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %1, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @tree_verify_min_height(i32* @tree, i32 0)
  br label %43

38:                                               ; preds = %30
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @tree_verify_min_height(i32* @tree, i32 %41)
  br label %30

43:                                               ; preds = %36
  %44 = call i32 @item_kill_tree(i32* @tree)
  ret void
}

declare dso_local i32 @RADIX_TREE(i32, i32) #1

declare dso_local i32 @tree_verify_min_height(i32*, i32) #1

declare dso_local i32 @item_insert(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @item_delete(i32*, i32) #1

declare dso_local i32 @item_kill_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
