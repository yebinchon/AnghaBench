; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_chip_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_chip_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_modem = type { i32 }

@CMD = common dso_local global i32 0, align 4
@ATI_REG_CMD_BURST_EN = common dso_local global i32 0, align 4
@ATI_REG_CMD_MODEM_PRESENT = common dso_local global i32 0, align 4
@ISR = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@ATI_REG_IER_MODEM_STATUS_EN = common dso_local global i32 0, align 4
@ATI_REG_IER_MODEM_IN_XRUN_EN = common dso_local global i32 0, align 4
@ATI_REG_IER_MODEM_OUT1_XRUN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp_modem*)* @snd_atiixp_chip_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_chip_start(%struct.atiixp_modem* %0) #0 {
  %2 = alloca %struct.atiixp_modem*, align 8
  %3 = alloca i32, align 4
  store %struct.atiixp_modem* %0, %struct.atiixp_modem** %2, align 8
  %4 = load %struct.atiixp_modem*, %struct.atiixp_modem** %2, align 8
  %5 = load i32, i32* @CMD, align 4
  %6 = call i32 @atiixp_read(%struct.atiixp_modem* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @ATI_REG_CMD_BURST_EN, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ATI_REG_CMD_MODEM_PRESENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ATI_REG_CMD_MODEM_PRESENT, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.atiixp_modem*, %struct.atiixp_modem** %2, align 8
  %20 = load i32, i32* @CMD, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @atiixp_write(%struct.atiixp_modem* %19, i32 %20, i32 %21)
  %23 = load %struct.atiixp_modem*, %struct.atiixp_modem** %2, align 8
  %24 = load i32, i32* @ISR, align 4
  %25 = call i32 @atiixp_write(%struct.atiixp_modem* %23, i32 %24, i32 -1)
  %26 = load %struct.atiixp_modem*, %struct.atiixp_modem** %2, align 8
  %27 = load i32, i32* @IER, align 4
  %28 = load i32, i32* @ATI_REG_IER_MODEM_STATUS_EN, align 4
  %29 = load i32, i32* @ATI_REG_IER_MODEM_IN_XRUN_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ATI_REG_IER_MODEM_OUT1_XRUN_EN, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @atiixp_write(%struct.atiixp_modem* %26, i32 %27, i32 %32)
  ret i32 0
}

declare dso_local i32 @atiixp_read(%struct.atiixp_modem*, i32) #1

declare dso_local i32 @atiixp_write(%struct.atiixp_modem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
