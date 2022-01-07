; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_out.c_spdif_out_configure.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_out.c_spdif_out_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdif_out_dev = type { i64 }

@SPDIF_OUT_RESET = common dso_local global i32 0, align 4
@SPDIF_OUT_SOFT_RST = common dso_local global i64 0, align 8
@SPDIF_OUT_FDMA_TRIG_16 = common dso_local global i32 0, align 4
@SPDIF_OUT_MEMFMT_16_16 = common dso_local global i32 0, align 4
@SPDIF_OUT_VALID_HW = common dso_local global i32 0, align 4
@SPDIF_OUT_USER_HW = common dso_local global i32 0, align 4
@SPDIF_OUT_CHNLSTA_HW = common dso_local global i32 0, align 4
@SPDIF_OUT_PARITY_HW = common dso_local global i32 0, align 4
@SPDIF_OUT_CFG = common dso_local global i64 0, align 8
@SPDIF_OUT_INT_STA_CLR = common dso_local global i64 0, align 8
@SPDIF_OUT_INT_EN_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spdif_out_dev*)* @spdif_out_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spdif_out_configure(%struct.spdif_out_dev* %0) #0 {
  %2 = alloca %struct.spdif_out_dev*, align 8
  store %struct.spdif_out_dev* %0, %struct.spdif_out_dev** %2, align 8
  %3 = load i32, i32* @SPDIF_OUT_RESET, align 4
  %4 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %2, align 8
  %5 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SPDIF_OUT_SOFT_RST, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 %3, i64 %8)
  %10 = call i32 @mdelay(i32 1)
  %11 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %2, align 8
  %12 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPDIF_OUT_SOFT_RST, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  %17 = load i32, i32* @SPDIF_OUT_RESET, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %2, align 8
  %21 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SPDIF_OUT_SOFT_RST, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @SPDIF_OUT_FDMA_TRIG_16, align 4
  %27 = load i32, i32* @SPDIF_OUT_MEMFMT_16_16, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SPDIF_OUT_VALID_HW, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SPDIF_OUT_USER_HW, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SPDIF_OUT_CHNLSTA_HW, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SPDIF_OUT_PARITY_HW, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %2, align 8
  %38 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPDIF_OUT_CFG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %2, align 8
  %44 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SPDIF_OUT_INT_STA_CLR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 127, i64 %47)
  %49 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %2, align 8
  %50 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SPDIF_OUT_INT_EN_CLR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 127, i64 %53)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
