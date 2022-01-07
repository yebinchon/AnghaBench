; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_contract_checks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_contract_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }

@tree = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RADIX_TREE_MAP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @contract_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @contract_checks() #0 {
  %1 = alloca %struct.item*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @tree, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i32 @RADIX_TREE(i32 %3, i32 %4)
  %6 = load i32, i32* @RADIX_TREE_MAP_SHIFT, align 4
  %7 = shl i32 1, %6
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @item_insert(i32* @tree, i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 @item_insert(i32* @tree, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @item_tag_set(i32* @tree, i32 %13, i32 0)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @item_tag_set(i32* @tree, i32 %15, i32 1)
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @item_tag_set(i32* @tree, i32 %18, i32 0)
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @item_delete(i32* @tree, i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @item_tag_clear(i32* @tree, i32 %23, i32 1)
  %25 = bitcast %struct.item** %1 to i8**
  %26 = call i32 @radix_tree_gang_lookup_tag(i32* @tree, i8** %25, i32 0, i32 1, i32 0)
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = bitcast %struct.item** %1 to i8**
  %31 = call i32 @radix_tree_gang_lookup_tag(i32* @tree, i8** %30, i32 0, i32 1, i32 1)
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @item_tag_get(i32* @tree, i32 %35, i32 0)
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @item_tag_get(i32* @tree, i32 %40, i32 1)
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = call i32 @verify_tag_consistency(i32* @tree, i32 0)
  %46 = call i32 @item_kill_tree(i32* @tree)
  ret void
}

declare dso_local i32 @RADIX_TREE(i32, i32) #1

declare dso_local i32 @item_insert(i32*, i32) #1

declare dso_local i32 @item_tag_set(i32*, i32, i32) #1

declare dso_local i32 @item_delete(i32*, i32) #1

declare dso_local i32 @item_tag_clear(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @radix_tree_gang_lookup_tag(i32*, i8**, i32, i32, i32) #1

declare dso_local i32 @item_tag_get(i32*, i32, i32) #1

declare dso_local i32 @verify_tag_consistency(i32*, i32) #1

declare dso_local i32 @item_kill_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
