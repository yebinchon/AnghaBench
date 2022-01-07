; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libtest_ida.c_ida_check_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libtest_ida.c_ida_check_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida = type { i32 }

@IDA_BITMAP_BITS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ida*, i32)* @ida_check_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ida_check_leaf(%struct.ida* %0, i32 %1) #0 {
  %3 = alloca %struct.ida*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ida* %0, %struct.ida** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @IDA_BITMAP_BITS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.ida*, %struct.ida** %3, align 8
  %12 = load %struct.ida*, %struct.ida** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @ida_alloc_min(%struct.ida* %12, i32 %13, i32 %14)
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %18, %19
  %21 = icmp ne i64 %16, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @IDA_BUG_ON(%struct.ida* %11, i32 %22)
  br label %24

24:                                               ; preds = %10
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.ida*, %struct.ida** %3, align 8
  %29 = call i32 @ida_destroy(%struct.ida* %28)
  %30 = load %struct.ida*, %struct.ida** %3, align 8
  %31 = load %struct.ida*, %struct.ida** %3, align 8
  %32 = call i32 @ida_is_empty(%struct.ida* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @IDA_BUG_ON(%struct.ida* %30, i32 %35)
  %37 = load %struct.ida*, %struct.ida** %3, align 8
  %38 = load %struct.ida*, %struct.ida** %3, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i64 @ida_alloc(%struct.ida* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @IDA_BUG_ON(%struct.ida* %37, i32 %42)
  %44 = load %struct.ida*, %struct.ida** %3, align 8
  %45 = load %struct.ida*, %struct.ida** %3, align 8
  %46 = call i32 @ida_is_empty(%struct.ida* %45)
  %47 = call i32 @IDA_BUG_ON(%struct.ida* %44, i32 %46)
  %48 = load %struct.ida*, %struct.ida** %3, align 8
  %49 = call i32 @ida_free(%struct.ida* %48, i32 0)
  %50 = load %struct.ida*, %struct.ida** %3, align 8
  %51 = load %struct.ida*, %struct.ida** %3, align 8
  %52 = call i32 @ida_is_empty(%struct.ida* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @IDA_BUG_ON(%struct.ida* %50, i32 %55)
  ret void
}

declare dso_local i32 @IDA_BUG_ON(%struct.ida*, i32) #1

declare dso_local i32 @ida_alloc_min(%struct.ida*, i32, i32) #1

declare dso_local i32 @ida_destroy(%struct.ida*) #1

declare dso_local i32 @ida_is_empty(%struct.ida*) #1

declare dso_local i64 @ida_alloc(%struct.ida*, i32) #1

declare dso_local i32 @ida_free(%struct.ida*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
