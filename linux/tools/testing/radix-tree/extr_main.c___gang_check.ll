; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c___gang_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c___gang_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__gang_check(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @tree, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @RADIX_TREE(i32 %12, i32 %13)
  store i64 1073741824, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %11, align 8
  br label %17

17:                                               ; preds = %26, %5
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add i64 %22, %23
  %25 = call i32 @item_insert(i32* @tree, i64 %24)
  br label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %11, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %11, align 8
  br label %17

29:                                               ; preds = %17
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %30, %31
  %33 = sub i64 %32, 1
  %34 = call i32 @item_check_absent(i32* @tree, i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %46, %29
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %42, %43
  %45 = call i32 @item_check_present(i32* @tree, i64 %44)
  br label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %37

49:                                               ; preds = %37
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %50, %51
  %53 = call i32 @item_check_absent(i32* @tree, i64 %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %49
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %57, %58
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @item_gang_check_present(i32* @tree, i64 %59, i64 %62, i32 %63, i32 %64)
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub i64 %66, %67
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @item_full_scan(i32* @tree, i64 %68, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %56, %49
  %75 = call i32 @item_kill_tree(i32* @tree)
  ret void
}

declare dso_local i32 @RADIX_TREE(i32, i32) #1

declare dso_local i32 @item_insert(i32*, i64) #1

declare dso_local i32 @item_check_absent(i32*, i64) #1

declare dso_local i32 @item_check_present(i32*, i64) #1

declare dso_local i32 @item_gang_check_present(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @item_full_scan(i32*, i64, i64, i32) #1

declare dso_local i32 @item_kill_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
