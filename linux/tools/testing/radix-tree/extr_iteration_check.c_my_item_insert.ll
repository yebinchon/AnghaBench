; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_iteration_check.c_my_item_insert.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_iteration_check.c_my_item_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }
%struct.item = type { i32 }

@xas = common dso_local global i32 0, align 4
@max_order = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_item_insert(%struct.xarray* %0, i64 %1) #0 {
  %3 = alloca %struct.xarray*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.item*, align 8
  %6 = alloca i32, align 4
  store %struct.xarray* %0, %struct.xarray** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @xas, align 4
  %8 = load %struct.xarray*, %struct.xarray** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @XA_STATE(i32 %7, %struct.xarray* %8, i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = call %struct.item* @item_create(i64 %11, i32 0)
  store %struct.item* %12, %struct.item** %5, align 8
  br label %13

13:                                               ; preds = %42, %2
  %14 = call i32 @xas_lock(i32* @xas)
  %15 = load i32, i32* @max_order, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %34, %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @xas_set_order(i32* @xas, i64 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.item*, %struct.item** %5, align 8
  %25 = getelementptr inbounds %struct.item, %struct.item* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = call i64 @xas_find_conflict(i32* @xas)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %34

29:                                               ; preds = %19
  %30 = load %struct.item*, %struct.item** %5, align 8
  %31 = call i32 @xas_store(i32* @xas, %struct.item* %30)
  %32 = load i32, i32* @TAG, align 4
  %33 = call i32 @xas_set_mark(i32* @xas, i32 %32)
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  br label %16

37:                                               ; preds = %29, %16
  %38 = call i32 @xas_unlock(i32* @xas)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i64 @xas_nomem(i32* @xas, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %13

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.item*, %struct.item** %5, align 8
  %48 = call i32 @free(%struct.item* %47)
  br label %49

49:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @XA_STATE(i32, %struct.xarray*, i64) #1

declare dso_local %struct.item* @item_create(i64, i32) #1

declare dso_local i32 @xas_lock(i32*) #1

declare dso_local i32 @xas_set_order(i32*, i64, i32) #1

declare dso_local i64 @xas_find_conflict(i32*) #1

declare dso_local i32 @xas_store(i32*, %struct.item*) #1

declare dso_local i32 @xas_set_mark(i32*, i32) #1

declare dso_local i32 @xas_unlock(i32*) #1

declare dso_local i64 @xas_nomem(i32*, i32) #1

declare dso_local i32 @free(%struct.item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
