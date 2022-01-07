; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_out.c_spdif_out_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_out.c_spdif_out_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdif_out_dev = type { i64, i32 }

@SPDIF_OUT_CTRL = common dso_local global i64 0, align 8
@SPDIF_DIVIDER_MASK = common dso_local global i32 0, align 4
@SPDIF_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spdif_out_dev*, i32, i32)* @spdif_out_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spdif_out_clock(%struct.spdif_out_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.spdif_out_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spdif_out_dev* %0, %struct.spdif_out_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %4, align 8
  %10 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @clk_set_rate(i32 %11, i32 %12)
  %14 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %4, align 8
  %15 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_get_rate(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 128
  %20 = call i32 @DIV_ROUND_CLOSEST(i32 %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %4, align 8
  %22 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SPDIF_OUT_CTRL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @SPDIF_DIVIDER_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SPDIF_DIVIDER_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @SPDIF_DIVIDER_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %4, align 8
  %40 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SPDIF_OUT_CTRL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  ret void
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
