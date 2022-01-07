; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libtest_ida.c_ida_check_max.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libtest_ida.c_ida_check_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ida*)* @ida_check_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ida_check_max(%struct.ida* %0) #0 {
  %2 = alloca %struct.ida*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ida* %0, %struct.ida** %2, align 8
  store i64 1, i64* %4, align 8
  br label %6

6:                                                ; preds = %51, %1
  %7 = load i64, i64* %4, align 8
  %8 = icmp ult i64 %7, 65537
  br i1 %8, label %9, label %54

9:                                                ; preds = %6
  %10 = load i64, i64* %4, align 8
  %11 = sub i64 2147483648, %10
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %28, %9
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct.ida*, %struct.ida** %2, align 8
  %18 = load %struct.ida*, %struct.ida** %2, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64 @ida_alloc_min(%struct.ida* %18, i64 %19, i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %22, %23
  %25 = icmp ne i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @IDA_BUG_ON(%struct.ida* %17, i32 %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %12

31:                                               ; preds = %12
  %32 = load %struct.ida*, %struct.ida** %2, align 8
  %33 = load %struct.ida*, %struct.ida** %2, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i64 @ida_alloc_min(%struct.ida* %33, i64 %34, i32 %35)
  %37 = load i64, i64* @ENOSPC, align 8
  %38 = sub i64 0, %37
  %39 = icmp ne i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @IDA_BUG_ON(%struct.ida* %32, i32 %40)
  %42 = load %struct.ida*, %struct.ida** %2, align 8
  %43 = call i32 @ida_destroy(%struct.ida* %42)
  %44 = load %struct.ida*, %struct.ida** %2, align 8
  %45 = load %struct.ida*, %struct.ida** %2, align 8
  %46 = call i32 @ida_is_empty(%struct.ida* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @IDA_BUG_ON(%struct.ida* %44, i32 %49)
  br label %51

51:                                               ; preds = %31
  %52 = load i64, i64* %4, align 8
  %53 = mul i64 %52, 2
  store i64 %53, i64* %4, align 8
  br label %6

54:                                               ; preds = %6
  ret void
}

declare dso_local i32 @IDA_BUG_ON(%struct.ida*, i32) #1

declare dso_local i64 @ida_alloc_min(%struct.ida*, i64, i32) #1

declare dso_local i32 @ida_destroy(%struct.ida*) #1

declare dso_local i32 @ida_is_empty(%struct.ida*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
