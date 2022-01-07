; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_get_legacy_dspclk_setting.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_get_legacy_dspclk_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MADERA_SYSCLK_49MHZ = common dso_local global i32 0, align 4
@MADERA_SYSCLK_FREQ_SHIFT = common dso_local global i32 0, align 4
@MADERA_DSPCLK_147MHZ = common dso_local global i32 0, align 4
@MADERA_DSP_CLK_FREQ_LEGACY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera*, i32)* @madera_get_legacy_dspclk_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_get_legacy_dspclk_setting(%struct.madera* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.madera*, align 8
  %5 = alloca i32, align 4
  store %struct.madera* %0, %struct.madera** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 0, label %7
    i32 45158400, label %8
    i32 49152000, label %8
    i32 135475200, label %27
    i32 147456000, label %27
  ]

7:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

8:                                                ; preds = %2, %2
  %9 = load %struct.madera*, %struct.madera** %4, align 8
  %10 = getelementptr inbounds %struct.madera, %struct.madera* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %24 [
    i32 129, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %8, %8
  %13 = load %struct.madera*, %struct.madera** %4, align 8
  %14 = getelementptr inbounds %struct.madera, %struct.madera* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %12
  %21 = load i32, i32* @MADERA_SYSCLK_49MHZ, align 4
  %22 = load i32, i32* @MADERA_SYSCLK_FREQ_SHIFT, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %2, %2
  %28 = load i32, i32* @MADERA_DSPCLK_147MHZ, align 4
  %29 = load i32, i32* @MADERA_DSP_CLK_FREQ_LEGACY_SHIFT, align 4
  %30 = shl i32 %28, %29
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %27, %24, %20, %17, %7
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
