; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_is_flexible_array.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_is_flexible_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARRAY_TYPE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @is_flexible_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_flexible_array(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @TREE_TYPE(i64 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @TYPE_SIZE(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = load i64, i64* @ARRAY_TYPE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @TREE_TYPE(i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @TYPE_SIZE(i64 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @NULL_TREE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @TYPE_DOMAIN(i64 %26)
  %28 = load i64, i64* @NULL_TREE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @TYPE_DOMAIN(i64 %31)
  %33 = call i64 @TYPE_MAX_VALUE(i64 %32)
  %34 = load i64, i64* @NULL_TREE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %57

37:                                               ; preds = %30, %25, %17
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @NULL_TREE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @TREE_CONSTANT(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @tree_to_uhwi(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @tree_to_uhwi(i64 %50)
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @tree_to_uhwi(i64 %52)
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %45
  store i32 1, i32* %2, align 4
  br label %57

56:                                               ; preds = %49, %41, %37
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55, %36, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_SIZE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_DOMAIN(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @TREE_CONSTANT(i64) #1

declare dso_local i64 @tree_to_uhwi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
