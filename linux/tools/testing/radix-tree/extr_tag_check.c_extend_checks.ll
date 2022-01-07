; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_extend_checks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_extend_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @extend_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extend_checks() #0 {
  %1 = load i32, i32* @tree, align 4
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call i32 @RADIX_TREE(i32 %1, i32 %2)
  %4 = call i32 @item_insert(i32* @tree, i32 43)
  %5 = call i32 @item_tag_get(i32* @tree, i32 43, i32 0)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = call i32 @item_tag_set(i32* @tree, i32 43, i32 0)
  %10 = call i32 @item_tag_get(i32* @tree, i32 43, i32 0)
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 @item_insert(i32* @tree, i32 1000000)
  %15 = call i32 @item_tag_get(i32* @tree, i32 43, i32 0)
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 @item_insert(i32* @tree, i32 0)
  %20 = call i32 @item_tag_set(i32* @tree, i32 0, i32 0)
  %21 = call i32 @item_delete(i32* @tree, i32 1000000)
  %22 = call i32 @item_tag_get(i32* @tree, i32 43, i32 0)
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i32 @item_delete(i32* @tree, i32 43)
  %27 = call i32 @item_tag_get(i32* @tree, i32 43, i32 0)
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = call i32 @item_tag_get(i32* @tree, i32 0, i32 0)
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = call i32 @verify_tag_consistency(i32* @tree, i32 0)
  %36 = call i32 @item_kill_tree(i32* @tree)
  ret void
}

declare dso_local i32 @RADIX_TREE(i32, i32) #1

declare dso_local i32 @item_insert(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @item_tag_get(i32*, i32, i32) #1

declare dso_local i32 @item_tag_set(i32*, i32, i32) #1

declare dso_local i32 @item_delete(i32*, i32) #1

declare dso_local i32 @verify_tag_consistency(i32*, i32) #1

declare dso_local i32 @item_kill_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
