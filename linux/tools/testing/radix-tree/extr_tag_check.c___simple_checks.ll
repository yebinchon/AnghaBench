; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c___simple_checks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_tag_check.c___simple_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radix_tree_root*, i64, i32)* @__simple_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__simple_checks(%struct.radix_tree_root* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.radix_tree_root*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @item_check_absent(%struct.radix_tree_root* %9, i64 %10)
  %12 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @item_tag_get(%struct.radix_tree_root* %12, i64 %13, i32 %14)
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @item_insert(%struct.radix_tree_root* %19, i64 %20)
  %22 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @item_tag_get(%struct.radix_tree_root* %22, i64 %23, i32 %24)
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @item_tag_set(%struct.radix_tree_root* %29, i64 %30, i32 %31)
  %33 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @item_tag_get(%struct.radix_tree_root* %33, i64 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @tag_tagged_items(%struct.radix_tree_root* %41, i64 %42, i64 -1, i32 10, i32 %43, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @item_tag_get(%struct.radix_tree_root* %53, i64 %54, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @item_delete(%struct.radix_tree_root* %64, i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @item_insert(%struct.radix_tree_root* %71, i64 %72)
  %74 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @item_tag_get(%struct.radix_tree_root* %74, i64 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @item_delete(%struct.radix_tree_root* %82, i64 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @item_delete(%struct.radix_tree_root* %89, i64 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  ret void
}

declare dso_local i32 @item_check_absent(%struct.radix_tree_root*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @item_tag_get(%struct.radix_tree_root*, i64, i32) #1

declare dso_local i32 @item_insert(%struct.radix_tree_root*, i64) #1

declare dso_local i32 @item_tag_set(%struct.radix_tree_root*, i64, i32) #1

declare dso_local i32 @tag_tagged_items(%struct.radix_tree_root*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @item_delete(%struct.radix_tree_root*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
