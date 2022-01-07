; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_sidetone.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_sidetone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GAIN_AUGMENT = common dso_local global i64 0, align 8
@SIDETONE_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @nau8825_xtalk_sidetone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nau8825_xtalk_sidetone(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ true, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i64 0, i64* %3, align 8
  br label %49

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @nau8825_intlog10_dec3(i64 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @nau8825_intlog10_dec3(i64 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = sub nsw i64 %28, %29
  %31 = mul nsw i64 %30, 20
  %32 = load i64, i64* @GAIN_AUGMENT, align 8
  %33 = add nsw i64 %31, %32
  store i64 %33, i64* %6, align 8
  br label %41

34:                                               ; preds = %19
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = sub nsw i64 %35, %36
  %38 = mul nsw i64 %37, 20
  %39 = load i64, i64* @GAIN_AUGMENT, align 8
  %40 = add nsw i64 %38, %39
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %34, %27
  %42 = load i64, i64* @SIDETONE_BASE, align 8
  %43 = load i64, i64* %6, align 8
  %44 = mul nsw i64 %43, 2
  %45 = sub nsw i64 %42, %44
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sdiv i64 %46, 1000
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %41, %18
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @nau8825_intlog10_dec3(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
