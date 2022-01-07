; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_ida_simple_get_remove_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_ida_simple_get_remove_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ida_simple_get_remove_test() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @ida, align 4
  %3 = call i32 @DEFINE_IDA(i32 %2)
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i64, i64* %1, align 8
  %6 = icmp ult i64 %5, 10000
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i64 @ida_simple_get(i32* @ida, i32 0, i32 20000, i32 %8)
  %10 = load i64, i64* %1, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  br label %14

14:                                               ; preds = %7
  %15 = load i64, i64* %1, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %1, align 8
  br label %4

17:                                               ; preds = %4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @ida_simple_get(i32* @ida, i32 5, i32 30, i32 %18)
  %20 = icmp ult i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i64 0, i64* %1, align 8
  br label %23

23:                                               ; preds = %29, %17
  %24 = load i64, i64* %1, align 8
  %25 = icmp ult i64 %24, 10000
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @ida_simple_remove(i32* @ida, i64 %27)
  br label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %1, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %1, align 8
  br label %23

32:                                               ; preds = %23
  %33 = call i32 @ida_is_empty(i32* @ida)
  %34 = call i32 @assert(i32 %33)
  %35 = call i32 @ida_destroy(i32* @ida)
  ret void
}

declare dso_local i32 @DEFINE_IDA(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i64) #1

declare dso_local i32 @ida_is_empty(i32*) #1

declare dso_local i32 @ida_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
