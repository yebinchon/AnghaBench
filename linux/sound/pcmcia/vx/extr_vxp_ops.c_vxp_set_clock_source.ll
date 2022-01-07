; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_ops.c_vxp_set_clock_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_ops.c_vxp_set_clock_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_vxpocket = type { i32 }

@INTERNAL_QUARTZ = common dso_local global i32 0, align 4
@VXP_CDSP_CLOCKIN_SEL_MASK = common dso_local global i32 0, align 4
@CDSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32)* @vxp_set_clock_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxp_set_clock_source(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_vxpocket*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = call %struct.snd_vxpocket* @to_vxpocket(%struct.vx_core* %6)
  store %struct.snd_vxpocket* %7, %struct.snd_vxpocket** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @INTERNAL_QUARTZ, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @VXP_CDSP_CLOCKIN_SEL_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %15 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @VXP_CDSP_CLOCKIN_SEL_MASK, align 4
  %20 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %21 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %11
  %25 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %26 = load i32, i32* @CDSP, align 4
  %27 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %28 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vx_outb(%struct.snd_vxpocket* %25, i32 %26, i32 %29)
  ret void
}

declare dso_local %struct.snd_vxpocket* @to_vxpocket(%struct.vx_core*) #1

declare dso_local i32 @vx_outb(%struct.snd_vxpocket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
