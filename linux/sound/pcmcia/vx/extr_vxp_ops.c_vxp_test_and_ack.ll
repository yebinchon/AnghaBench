; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_ops.c_vxp_test_and_ack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_ops.c_vxp_test_and_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_vxpocket = type { i32 }

@VX_STAT_XILINX_LOADED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@DIALOG = common dso_local global i32 0, align 4
@VXP_DLG_MEMIRQ_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VXP_DLG_ACK_MEMIRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*)* @vxp_test_and_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxp_test_and_ack(%struct.vx_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca %struct.snd_vxpocket*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  %5 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %6 = call %struct.snd_vxpocket* @to_vxpocket(%struct.vx_core* %5)
  store %struct.snd_vxpocket* %6, %struct.snd_vxpocket** %4, align 8
  %7 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %8 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VX_STAT_XILINX_LOADED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %4, align 8
  %18 = load i32, i32* @DIALOG, align 4
  %19 = call i32 @vx_inb(%struct.snd_vxpocket* %17, i32 %18)
  %20 = load i32, i32* @VXP_DLG_MEMIRQ_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %47

26:                                               ; preds = %16
  %27 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %4, align 8
  %28 = load i32, i32* @DIALOG, align 4
  %29 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %4, align 8
  %30 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VXP_DLG_ACK_MEMIRQ_MASK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @vx_outb(%struct.snd_vxpocket* %27, i32 %28, i32 %33)
  %35 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %4, align 8
  %36 = load i32, i32* @DIALOG, align 4
  %37 = call i32 @vx_inb(%struct.snd_vxpocket* %35, i32 %36)
  %38 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %4, align 8
  %39 = load i32, i32* @DIALOG, align 4
  %40 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %4, align 8
  %41 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @VXP_DLG_ACK_MEMIRQ_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call i32 @vx_outb(%struct.snd_vxpocket* %38, i32 %39, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %26, %23, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.snd_vxpocket* @to_vxpocket(%struct.vx_core*) #1

declare dso_local i32 @vx_inb(%struct.snd_vxpocket*, i32) #1

declare dso_local i32 @vx_outb(%struct.snd_vxpocket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
