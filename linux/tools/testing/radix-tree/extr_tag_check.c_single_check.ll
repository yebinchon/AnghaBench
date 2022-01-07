; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_single_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c_single_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }

@BATCH = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@XA_MARK_0 = common dso_local global i32 0, align 4
@XA_MARK_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @single_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @single_check() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @BATCH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca %struct.item*, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @tree, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @RADIX_TREE(i32 %9, i32 %10)
  store i64 0, i64* %4, align 8
  %12 = call i32 @item_insert(i32* @tree, i32 0)
  %13 = call i32 @item_tag_set(i32* @tree, i32 0, i32 0)
  %14 = bitcast %struct.item** %8 to i8**
  %15 = load i32, i32* @BATCH, align 4
  %16 = call i32 @radix_tree_gang_lookup_tag(i32* @tree, i8** %14, i32 0, i32 %15, i32 0)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = bitcast %struct.item** %8 to i8**
  %22 = load i32, i32* @BATCH, align 4
  %23 = call i32 @radix_tree_gang_lookup_tag(i32* @tree, i8** %21, i32 1, i32 %22, i32 0)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = call i32 @verify_tag_consistency(i32* @tree, i32 0)
  %29 = call i32 @verify_tag_consistency(i32* @tree, i32 1)
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @XA_MARK_0, align 4
  %32 = load i32, i32* @XA_MARK_1, align 4
  %33 = call i32 @tag_tagged_items(i32* @tree, i64 %30, i32 10, i32 10, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = bitcast %struct.item** %8 to i8**
  %39 = load i32, i32* @BATCH, align 4
  %40 = call i32 @radix_tree_gang_lookup_tag(i32* @tree, i8** %38, i32 0, i32 %39, i32 1)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 1
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = call i32 @item_tag_clear(i32* @tree, i32 0, i32 0)
  %46 = bitcast %struct.item** %8 to i8**
  %47 = load i32, i32* @BATCH, align 4
  %48 = call i32 @radix_tree_gang_lookup_tag(i32* @tree, i8** %46, i32 0, i32 %47, i32 0)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = call i32 @item_kill_tree(i32* @tree)
  %54 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RADIX_TREE(i32, i32) #2

declare dso_local i32 @item_insert(i32*, i32) #2

declare dso_local i32 @item_tag_set(i32*, i32, i32) #2

declare dso_local i32 @radix_tree_gang_lookup_tag(i32*, i8**, i32, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @verify_tag_consistency(i32*, i32) #2

declare dso_local i32 @tag_tagged_items(i32*, i64, i32, i32, i32, i32) #2

declare dso_local i32 @item_tag_clear(i32*, i32, i32) #2

declare dso_local i32 @item_kill_tree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
