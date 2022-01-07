; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c_calculate_order.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c_calculate_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slub_min_objects = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@slub_max_order = common dso_local global i32 0, align 4
@MAX_ORDER = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @calculate_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_order(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @slub_min_objects, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @nr_cpu_ids, align 4
  %13 = call i32 @fls(i32 %12)
  %14 = add nsw i32 %13, 1
  %15 = mul nsw i32 4, %14
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @slub_max_order, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @order_objects(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @min(i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %44, %16
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  store i32 16, i32* %7, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp uge i32 %28, 4
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @slub_max_order, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @slab_order(i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @slub_max_order, align 4
  %38 = icmp ule i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %68

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = udiv i32 %42, 2
  store i32 %43, i32* %7, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %5, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @slub_max_order, align 4
  %50 = call i32 @slab_order(i32 %48, i32 1, i32 %49, i32 1)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @slub_max_order, align 4
  %53 = icmp ule i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %47
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @MAX_ORDER, align 4
  %59 = call i32 @slab_order(i32 %57, i32 1, i32 %58, i32 1)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @MAX_ORDER, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @ENOSYS, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %63, %54, %39
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @order_objects(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @slab_order(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
