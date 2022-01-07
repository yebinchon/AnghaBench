; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_nowait_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_nowait_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }

@idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@item_idr_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idr_nowait_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.item*, align 8
  %3 = load i32, i32* @idr, align 4
  %4 = call i32 @DEFINE_IDR(i32 %3)
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @idr_preload(i32 %5)
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %23, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = call %struct.item* @item_create(i32 %11, i32 0)
  store %struct.item* %12, %struct.item** %2, align 8
  %13 = load %struct.item*, %struct.item** %2, align 8
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = add i32 %15, 1
  %17 = load i32, i32* @GFP_NOWAIT, align 4
  %18 = call i32 @idr_alloc(i32* @idr, %struct.item* %13, i32 %14, i32 %16, i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %1, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %7

26:                                               ; preds = %7
  %27 = call i32 (...) @idr_preload_end()
  %28 = load i32, i32* @item_idr_free, align 4
  %29 = call i32 @idr_for_each(i32* @idr, i32 %28, i32* @idr)
  %30 = call i32 @idr_destroy(i32* @idr)
  ret void
}

declare dso_local i32 @DEFINE_IDR(i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local %struct.item* @item_create(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @idr_alloc(i32*, %struct.item*, i32, i32, i32) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @idr_for_each(i32*, i32, i32*) #1

declare dso_local i32 @idr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
