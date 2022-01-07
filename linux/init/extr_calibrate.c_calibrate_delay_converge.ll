; ModuleID = '/home/carl/AnghaBench/linux/init/extr_calibrate.c_calibrate_delay_converge.c'
source_filename = "/home/carl/AnghaBench/linux/init/extr_calibrate.c_calibrate_delay_converge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@LPS_PREC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @calibrate_delay_converge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calibrate_delay_converge() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 4096, i64* %1, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %15, %0
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %11

16:                                               ; preds = %11
  %17 = load i64, i64* @jiffies, align 8
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %36, %16
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 1, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i64, i64* %1, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %28, %30
  %32 = call i32 @__delay(i64 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %27
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @jiffies, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %18, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i64, i64* %1, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %44, %46
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %1, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %48, %50
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %96, %40
  %53 = load i64, i64* %2, align 8
  store i64 %53, i64* %1, align 8
  %54 = load i64, i64* %5, align 8
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %1, align 8
  %56 = load i64, i64* @LPS_PREC, align 8
  %57 = lshr i64 %55, %56
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %83, %52
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %1, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %1, align 8
  %66 = load i64, i64* @jiffies, align 8
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %71, %62
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @jiffies, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %67

72:                                               ; preds = %67
  %73 = load i64, i64* @jiffies, align 8
  store i64 %73, i64* %3, align 8
  %74 = load i64, i64* %1, align 8
  %75 = call i32 @__delay(i64 %74)
  %76 = load i64, i64* @jiffies, align 8
  %77 = load i64, i64* %3, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* %1, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %1, align 8
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i64, i64* %4, align 8
  %85 = lshr i64 %84, 1
  store i64 %85, i64* %4, align 8
  br label %58

86:                                               ; preds = %58
  %87 = load i64, i64* %1, align 8
  %88 = load i64, i64* %4, align 8
  %89 = mul i64 %88, 2
  %90 = add i64 %87, %89
  %91 = load i64, i64* %2, align 8
  %92 = load i64, i64* %5, align 8
  %93 = mul i64 %92, 2
  %94 = add i64 %91, %93
  %95 = icmp eq i64 %90, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load i64, i64* %1, align 8
  store i64 %97, i64* %2, align 8
  %98 = load i64, i64* %5, align 8
  %99 = shl i64 %98, 2
  store i64 %99, i64* %5, align 8
  br label %52

100:                                              ; preds = %86
  %101 = load i64, i64* %1, align 8
  ret i64 %101
}

declare dso_local i32 @__delay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
