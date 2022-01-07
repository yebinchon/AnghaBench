; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_chip_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_chip_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp = type { i32 }

@CMD = common dso_local global i32 0, align 4
@ATI_REG_CMD_SPDF_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@ATI_REG_CMD_BURST_EN = common dso_local global i32 0, align 4
@SPDF_CMD = common dso_local global i32 0, align 4
@ATI_REG_SPDF_CMD_LFSR = common dso_local global i32 0, align 4
@ATI_REG_SPDF_CMD_SINGLE_CH = common dso_local global i32 0, align 4
@ISR = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@ATI_REG_IER_IO_STATUS_EN = common dso_local global i32 0, align 4
@ATI_REG_IER_IN_XRUN_EN = common dso_local global i32 0, align 4
@ATI_REG_IER_OUT_XRUN_EN = common dso_local global i32 0, align 4
@ATI_REG_IER_SPDF_XRUN_EN = common dso_local global i32 0, align 4
@ATI_REG_IER_SPDF_STATUS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp*)* @snd_atiixp_chip_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_chip_start(%struct.atiixp* %0) #0 {
  %2 = alloca %struct.atiixp*, align 8
  %3 = alloca i32, align 4
  store %struct.atiixp* %0, %struct.atiixp** %2, align 8
  %4 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %5 = load i32, i32* @CMD, align 4
  %6 = call i32 @atiixp_read(%struct.atiixp* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @ATI_REG_CMD_SPDF_THRESHOLD_SHIFT, align 4
  %8 = shl i32 2, %7
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @ATI_REG_CMD_BURST_EN, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %15 = load i32, i32* @CMD, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @atiixp_write(%struct.atiixp* %14, i32 %15, i32 %16)
  %18 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %19 = load i32, i32* @SPDF_CMD, align 4
  %20 = call i32 @atiixp_read(%struct.atiixp* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @ATI_REG_SPDF_CMD_LFSR, align 4
  %22 = load i32, i32* @ATI_REG_SPDF_CMD_SINGLE_CH, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %28 = load i32, i32* @SPDF_CMD, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @atiixp_write(%struct.atiixp* %27, i32 %28, i32 %29)
  %31 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %32 = load i32, i32* @ISR, align 4
  %33 = call i32 @atiixp_write(%struct.atiixp* %31, i32 %32, i32 -1)
  %34 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %35 = load i32, i32* @IER, align 4
  %36 = load i32, i32* @ATI_REG_IER_IO_STATUS_EN, align 4
  %37 = load i32, i32* @ATI_REG_IER_IN_XRUN_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ATI_REG_IER_OUT_XRUN_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ATI_REG_IER_SPDF_XRUN_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ATI_REG_IER_SPDF_STATUS_EN, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @atiixp_write(%struct.atiixp* %34, i32 %35, i32 %44)
  ret i32 0
}

declare dso_local i32 @atiixp_read(%struct.atiixp*, i32) #1

declare dso_local i32 @atiixp_write(%struct.atiixp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
