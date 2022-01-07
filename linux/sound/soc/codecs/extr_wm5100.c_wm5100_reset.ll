; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm5100_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@WM5100_SOFTWARE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm5100_priv*)* @wm5100_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5100_reset(%struct.wm5100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm5100_priv*, align 8
  store %struct.wm5100_priv* %0, %struct.wm5100_priv** %3, align 8
  %4 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %5 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @gpio_set_value_cansleep(i64 %13, i32 0)
  %15 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %16 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @gpio_set_value_cansleep(i64 %18, i32 1)
  store i32 0, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %22 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @WM5100_SOFTWARE_RESET, align 4
  %25 = call i32 @regmap_write(i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @gpio_set_value_cansleep(i64, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
