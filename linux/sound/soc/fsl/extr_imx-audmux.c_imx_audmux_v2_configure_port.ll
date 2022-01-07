; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-audmux.c_imx_audmux_v2_configure_port.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-audmux.c_imx_audmux_v2_configure_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@audmux_type = common dso_local global i64 0, align 8
@IMX31_AUDMUX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@audmux_base = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@audmux_clk = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_audmux_v2_configure_port(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @audmux_type, align 8
  %10 = load i64, i64* @IMX31_AUDMUX, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %51

15:                                               ; preds = %3
  %16 = load i64, i64* @audmux_base, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %15
  %22 = load i64, i64* @audmux_clk, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i64, i64* @audmux_clk, align 8
  %26 = call i32 @clk_prepare_enable(i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %51

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* @audmux_base, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @IMX_AUDMUX_V2_PTCR(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = call i32 @writel(i32 %33, i64 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* @audmux_base, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @IMX_AUDMUX_V2_PDCR(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @writel(i32 %39, i64 %43)
  %45 = load i64, i64* @audmux_clk, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i64, i64* @audmux_clk, align 8
  %49 = call i32 @clk_disable_unprepare(i64 %48)
  br label %50

50:                                               ; preds = %47, %32
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %29, %18, %12
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @IMX_AUDMUX_V2_PTCR(i32) #1

declare dso_local i64 @IMX_AUDMUX_V2_PDCR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
