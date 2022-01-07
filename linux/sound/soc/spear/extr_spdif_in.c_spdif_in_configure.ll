; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_in.c_spdif_in_configure.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_in.c_spdif_in_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdif_in_dev = type { i64 }

@SPDIF_IN_PRTYEN = common dso_local global i32 0, align 4
@SPDIF_IN_STATEN = common dso_local global i32 0, align 4
@SPDIF_IN_USREN = common dso_local global i32 0, align 4
@SPDIF_IN_VALEN = common dso_local global i32 0, align 4
@SPDIF_IN_BLKEN = common dso_local global i32 0, align 4
@SPDIF_MODE_16BIT = common dso_local global i32 0, align 4
@SPDIF_FIFO_THRES_16 = common dso_local global i32 0, align 4
@SPDIF_IN_CTRL = common dso_local global i64 0, align 8
@SPDIF_IN_IRQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spdif_in_dev*)* @spdif_in_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spdif_in_configure(%struct.spdif_in_dev* %0) #0 {
  %2 = alloca %struct.spdif_in_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.spdif_in_dev* %0, %struct.spdif_in_dev** %2, align 8
  %4 = load i32, i32* @SPDIF_IN_PRTYEN, align 4
  %5 = load i32, i32* @SPDIF_IN_STATEN, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @SPDIF_IN_USREN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SPDIF_IN_VALEN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SPDIF_IN_BLKEN, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @SPDIF_MODE_16BIT, align 4
  %14 = load i32, i32* @SPDIF_FIFO_THRES_16, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %2, align 8
  %20 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SPDIF_IN_CTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %2, align 8
  %26 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SPDIF_IN_IRQ_MASK, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 15, i64 %29)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
