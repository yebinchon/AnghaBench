; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-spdif.c_sun4i_spdif_configure.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-spdif.c_sun4i_spdif_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_spdif_dev = type { i32, %struct.sun4i_spdif_quirks* }
%struct.sun4i_spdif_quirks = type { i32 }

@SUN4I_SPDIF_CTL = common dso_local global i32 0, align 4
@SUN4I_SPDIF_CTL_RESET = common dso_local global i32 0, align 4
@SUN4I_SPDIF_FCTL = common dso_local global i32 0, align 4
@SUN4I_SPDIF_TXCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_spdif_dev*)* @sun4i_spdif_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_spdif_configure(%struct.sun4i_spdif_dev* %0) #0 {
  %2 = alloca %struct.sun4i_spdif_dev*, align 8
  %3 = alloca %struct.sun4i_spdif_quirks*, align 8
  store %struct.sun4i_spdif_dev* %0, %struct.sun4i_spdif_dev** %2, align 8
  %4 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %2, align 8
  %5 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %4, i32 0, i32 1
  %6 = load %struct.sun4i_spdif_quirks*, %struct.sun4i_spdif_quirks** %5, align 8
  store %struct.sun4i_spdif_quirks* %6, %struct.sun4i_spdif_quirks** %3, align 8
  %7 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %2, align 8
  %8 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SUN4I_SPDIF_CTL, align 4
  %11 = load i32, i32* @SUN4I_SPDIF_CTL_RESET, align 4
  %12 = call i32 @regmap_write(i32 %9, i32 %10, i32 %11)
  %13 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %2, align 8
  %14 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SUN4I_SPDIF_FCTL, align 4
  %17 = load %struct.sun4i_spdif_quirks*, %struct.sun4i_spdif_quirks** %3, align 8
  %18 = getelementptr inbounds %struct.sun4i_spdif_quirks, %struct.sun4i_spdif_quirks* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sun4i_spdif_quirks*, %struct.sun4i_spdif_quirks** %3, align 8
  %21 = getelementptr inbounds %struct.sun4i_spdif_quirks, %struct.sun4i_spdif_quirks* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %2, align 8
  %25 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SUN4I_SPDIF_TXCNT, align 4
  %28 = call i32 @regmap_write(i32 %26, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
