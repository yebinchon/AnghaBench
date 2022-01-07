; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_alloc_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_alloc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }

@idr = common dso_local global i32 0, align 4
@DUMMY_PTR = common dso_local global %struct.item* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@item_idr_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idr_alloc_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.item*, align 8
  %4 = load i32, i32* @idr, align 4
  %5 = call i32 @DEFINE_IDR(i32 %4)
  %6 = load %struct.item*, %struct.item** @DUMMY_PTR, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32 @idr_alloc_cyclic(i32* @idr, %struct.item* %6, i32 0, i32 16384, i32 %7)
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.item*, %struct.item** @DUMMY_PTR, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @idr_alloc_cyclic(i32* @idr, %struct.item* %12, i32 16381, i32 16384, i32 %13)
  %15 = icmp eq i32 %14, 16381
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = call i32 @idr_remove(i32* @idr, i32 16381)
  %19 = call i32 @idr_remove(i32* @idr, i32 0)
  store i64 16382, i64* %1, align 8
  br label %20

20:                                               ; preds = %44, %0
  %21 = load i64, i64* %1, align 8
  %22 = icmp ult i64 %21, 16387
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load i64, i64* %1, align 8
  %25 = icmp ult i64 %24, 16384
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %1, align 8
  %28 = call %struct.item* @item_create(i64 %27, i32 0)
  store %struct.item* %28, %struct.item** %3, align 8
  br label %33

29:                                               ; preds = %23
  %30 = load i64, i64* %1, align 8
  %31 = sub i64 %30, 16383
  %32 = call %struct.item* @item_create(i64 %31, i32 0)
  store %struct.item* %32, %struct.item** %3, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.item*, %struct.item** %3, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @idr_alloc_cyclic(i32* @idr, %struct.item* %34, i32 1, i32 16384, i32 %35)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load %struct.item*, %struct.item** %3, align 8
  %39 = getelementptr inbounds %struct.item, %struct.item* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  br label %44

44:                                               ; preds = %33
  %45 = load i64, i64* %1, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %1, align 8
  br label %20

47:                                               ; preds = %20
  %48 = load i32, i32* @item_idr_free, align 4
  %49 = call i32 @idr_for_each(i32* @idr, i32 %48, i32* @idr)
  %50 = call i32 @idr_destroy(i32* @idr)
  ret void
}

declare dso_local i32 @DEFINE_IDR(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.item*, i32, i32, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local %struct.item* @item_create(i64, i32) #1

declare dso_local i32 @idr_for_each(i32*, i32, i32*) #1

declare dso_local i32 @idr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
