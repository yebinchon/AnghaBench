; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_get_dspclk_setting.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_get_dspclk_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera*, i32, i32*)* @madera_get_dspclk_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_get_dspclk_setting(%struct.madera* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.madera*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.madera* %0, %struct.madera** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.madera*, %struct.madera** %5, align 8
  %9 = getelementptr inbounds %struct.madera, %struct.madera* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %16 [
    i32 130, label %11
    i32 129, label %11
    i32 128, label %11
  ]

11:                                               ; preds = %3, %3, %3
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.madera*, %struct.madera** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @madera_get_legacy_dspclk_setting(%struct.madera* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ugt i32 %17, 150000000
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = udiv i32 %23, 15625
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %19, %11
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @madera_get_legacy_dspclk_setting(%struct.madera*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
