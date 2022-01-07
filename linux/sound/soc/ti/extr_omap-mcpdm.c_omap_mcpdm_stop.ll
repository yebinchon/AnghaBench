; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcpdm = type { i32 }

@MCPDM_REG_CTRL = common dso_local global i32 0, align 4
@MCPDM_PDM_DN_MASK = common dso_local global i32 0, align 4
@MCPDM_PDM_UP_MASK = common dso_local global i32 0, align 4
@MCPDM_SW_DN_RST = common dso_local global i32 0, align 4
@MCPDM_SW_UP_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcpdm*)* @omap_mcpdm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcpdm_stop(%struct.omap_mcpdm* %0) #0 {
  %2 = alloca %struct.omap_mcpdm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.omap_mcpdm* %0, %struct.omap_mcpdm** %2, align 8
  %5 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %6 = load i32, i32* @MCPDM_REG_CTRL, align 4
  %7 = call i32 @omap_mcpdm_read(%struct.omap_mcpdm* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @MCPDM_PDM_DN_MASK, align 4
  %9 = load i32, i32* @MCPDM_PDM_UP_MASK, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @MCPDM_SW_DN_RST, align 4
  %12 = load i32, i32* @MCPDM_SW_UP_RST, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %17 = load i32, i32* @MCPDM_REG_CTRL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %25 = load i32, i32* @MCPDM_REG_CTRL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @MCPDM_SW_DN_RST, align 4
  %29 = load i32, i32* @MCPDM_SW_UP_RST, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %35 = load i32, i32* @MCPDM_REG_CTRL, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @omap_mcpdm_read(%struct.omap_mcpdm*, i32) #1

declare dso_local i32 @omap_mcpdm_write(%struct.omap_mcpdm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
