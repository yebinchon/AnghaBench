; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_get_sysclk_setting.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_get_sysclk_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MADERA_SYSCLK_12MHZ = common dso_local global i32 0, align 4
@MADERA_SYSCLK_FREQ_SHIFT = common dso_local global i32 0, align 4
@MADERA_SYSCLK_24MHZ = common dso_local global i32 0, align 4
@MADERA_SYSCLK_49MHZ = common dso_local global i32 0, align 4
@MADERA_SYSCLK_98MHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @madera_get_sysclk_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_get_sysclk_setting(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %22 [
    i32 0, label %5
    i32 5644800, label %5
    i32 6144000, label %5
    i32 11289600, label %6
    i32 12288000, label %6
    i32 22579200, label %10
    i32 24576000, label %10
    i32 45158400, label %14
    i32 49152000, label %14
    i32 90316800, label %18
    i32 98304000, label %18
  ]

5:                                                ; preds = %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %25

6:                                                ; preds = %1, %1
  %7 = load i32, i32* @MADERA_SYSCLK_12MHZ, align 4
  %8 = load i32, i32* @MADERA_SYSCLK_FREQ_SHIFT, align 4
  %9 = shl i32 %7, %8
  store i32 %9, i32* %2, align 4
  br label %25

10:                                               ; preds = %1, %1
  %11 = load i32, i32* @MADERA_SYSCLK_24MHZ, align 4
  %12 = load i32, i32* @MADERA_SYSCLK_FREQ_SHIFT, align 4
  %13 = shl i32 %11, %12
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1, %1
  %15 = load i32, i32* @MADERA_SYSCLK_49MHZ, align 4
  %16 = load i32, i32* @MADERA_SYSCLK_FREQ_SHIFT, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %2, align 4
  br label %25

18:                                               ; preds = %1, %1
  %19 = load i32, i32* @MADERA_SYSCLK_98MHZ, align 4
  %20 = load i32, i32* @MADERA_SYSCLK_FREQ_SHIFT, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %18, %14, %10, %6, %5
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
