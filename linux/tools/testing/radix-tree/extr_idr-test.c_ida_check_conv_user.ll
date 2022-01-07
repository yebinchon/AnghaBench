; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_ida_check_conv_user.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_ida_check_conv_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ida = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IDA_BITMAP_BITS = common dso_local global i64 0, align 8
@BITS_PER_XA_VALUE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ida_check_conv_user() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ida, align 4
  %4 = call i32 @DEFINE_IDA(i32 %3)
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %47, %0
  %6 = load i64, i64* %1, align 8
  %7 = icmp ult i64 %6, 1000000
  br i1 %7, label %8, label %50

8:                                                ; preds = %5
  %9 = load i32, i32* @GFP_NOWAIT, align 4
  %10 = call i32 @ida_alloc(i32* @ida, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @IDA_BITMAP_BITS, align 8
  %18 = urem i64 %16, %17
  %19 = load i64, i64* @BITS_PER_XA_VALUE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @IDA_BITMAP_BITS, align 8
  %24 = urem i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i1 [ false, %15 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @IDA_BUG_ON(i32* @ida, i32 %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @ida_alloc(i32* @ida, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %40

32:                                               ; preds = %8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @IDA_BITMAP_BITS, align 8
  %35 = urem i64 %33, %34
  %36 = load i64, i64* @BITS_PER_XA_VALUE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @IDA_BUG_ON(i32* @ida, i32 %38)
  br label %40

40:                                               ; preds = %32, %26
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %1, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @IDA_BUG_ON(i32* @ida, i32 %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %1, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %1, align 8
  br label %5

50:                                               ; preds = %5
  %51 = call i32 @ida_destroy(i32* @ida)
  ret void
}

declare dso_local i32 @DEFINE_IDA(i32) #1

declare dso_local i32 @ida_alloc(i32*, i32) #1

declare dso_local i32 @IDA_BUG_ON(i32*, i32) #1

declare dso_local i32 @ida_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
