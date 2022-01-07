; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_lola_sample_rate_convert.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_lola_sample_rate_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lola_sample_rate_convert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 3
  switch i32 %6, label %10 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %9
  ]

7:                                                ; preds = %1
  store i32 48000, i32* %4, align 4
  br label %11

8:                                                ; preds = %1
  store i32 44100, i32* %4, align 4
  br label %11

9:                                                ; preds = %1
  store i32 32000, i32* %4, align 4
  br label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

11:                                               ; preds = %9, %8, %7
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 28
  switch i32 %13, label %28 [
    i32 0, label %14
    i32 16, label %15
    i32 4, label %16
    i32 8, label %19
    i32 20, label %22
    i32 24, label %25
  ]

14:                                               ; preds = %11
  br label %29

15:                                               ; preds = %11
  br label %29

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = mul i32 %17, 2
  store i32 %18, i32* %4, align 4
  br label %29

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = mul i32 %20, 4
  store i32 %21, i32* %4, align 4
  br label %29

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = udiv i32 %23, 2
  store i32 %24, i32* %4, align 4
  br label %29

25:                                               ; preds = %11
  %26 = load i32, i32* %4, align 4
  %27 = udiv i32 %26, 4
  store i32 %27, i32* %4, align 4
  br label %29

28:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %44

29:                                               ; preds = %25, %22, %19, %16, %15, %14
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 96
  switch i32 %31, label %41 [
    i32 0, label %32
    i32 32, label %33
    i32 64, label %37
  ]

32:                                               ; preds = %29
  br label %42

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = mul i32 %34, 999
  %36 = udiv i32 %35, 1000
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = mul i32 %38, 1001
  %40 = udiv i32 %39, 1000
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %44

42:                                               ; preds = %37, %33, %32
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %41, %28, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
