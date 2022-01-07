; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_check_bus_busy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_check_bus_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp = type { i32 }

@CMD = common dso_local global i32 0, align 4
@ATI_REG_CMD_SEND_EN = common dso_local global i32 0, align 4
@ATI_REG_CMD_RECEIVE_EN = common dso_local global i32 0, align 4
@ATI_REG_CMD_SPDF_OUT_EN = common dso_local global i32 0, align 4
@ATI_REG_IER_SET_BUS_BUSY = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp*)* @snd_atiixp_check_bus_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_atiixp_check_bus_busy(%struct.atiixp* %0) #0 {
  %2 = alloca %struct.atiixp*, align 8
  %3 = alloca i32, align 4
  store %struct.atiixp* %0, %struct.atiixp** %2, align 8
  %4 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %5 = load i32, i32* @CMD, align 4
  %6 = call i32 @atiixp_read(%struct.atiixp* %4, i32 %5)
  %7 = load i32, i32* @ATI_REG_CMD_SEND_EN, align 4
  %8 = load i32, i32* @ATI_REG_CMD_RECEIVE_EN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @ATI_REG_CMD_SPDF_OUT_EN, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %6, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ATI_REG_IER_SET_BUS_BUSY, align 4
  store i32 %15, i32* %3, align 4
  br label %17

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %14
  %18 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %19 = load i32, i32* @IER, align 4
  %20 = load i32, i32* @ATI_REG_IER_SET_BUS_BUSY, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @atiixp_update(%struct.atiixp* %18, i32 %19, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @atiixp_read(%struct.atiixp*, i32) #1

declare dso_local i32 @atiixp_update(%struct.atiixp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
