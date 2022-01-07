; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_time.c___timespec64_to_jiffies.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_time.c___timespec64_to_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TICK_NSEC = common dso_local global i64 0, align 8
@MAX_SEC_IN_JIFFIES = common dso_local global i64 0, align 8
@SEC_CONVERSION = common dso_local global i64 0, align 8
@NSEC_CONVERSION = common dso_local global i64 0, align 8
@NSEC_JIFFIE_SC = common dso_local global i64 0, align 8
@SEC_JIFFIE_SC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @__timespec64_to_jiffies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__timespec64_to_jiffies(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TICK_NSEC, align 8
  %7 = add nsw i64 %5, %6
  %8 = sub nsw i64 %7, 1
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @MAX_SEC_IN_JIFFIES, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @MAX_SEC_IN_JIFFIES, align 8
  store i64 %13, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @SEC_CONVERSION, align 8
  %17 = mul i64 %15, %16
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @NSEC_CONVERSION, align 8
  %20 = mul i64 %18, %19
  %21 = load i64, i64* @NSEC_JIFFIE_SC, align 8
  %22 = load i64, i64* @SEC_JIFFIE_SC, align 8
  %23 = sub i64 %21, %22
  %24 = lshr i64 %20, %23
  %25 = add i64 %17, %24
  %26 = load i64, i64* @SEC_JIFFIE_SC, align 8
  %27 = lshr i64 %25, %26
  ret i64 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
