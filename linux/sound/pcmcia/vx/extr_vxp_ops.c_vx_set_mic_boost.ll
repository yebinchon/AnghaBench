; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_ops.c_vx_set_mic_boost.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/vx/extr_vxp_ops.c_vx_set_mic_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, i32 }
%struct.snd_vxpocket = type { i32 }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@P24_CDSP_MICS_SEL_MASK = common dso_local global i32 0, align 4
@P24_CDSP_MIC20_SEL_MASK = common dso_local global i32 0, align 4
@P24_CDSP_MIC38_SEL_MASK = common dso_local global i32 0, align 4
@CDSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vx_set_mic_boost(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_vxpocket*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = call %struct.snd_vxpocket* @to_vxpocket(%struct.vx_core* %6)
  store %struct.snd_vxpocket* %7, %struct.snd_vxpocket** %5, align 8
  %8 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %9 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %17 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %20 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @P24_CDSP_MICS_SEL_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* @P24_CDSP_MIC20_SEL_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %32 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @P24_CDSP_MIC38_SEL_MASK, align 4
  %36 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %37 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %52

40:                                               ; preds = %25
  %41 = load i32, i32* @P24_CDSP_MIC20_SEL_MASK, align 4
  %42 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %43 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @P24_CDSP_MIC38_SEL_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %49 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %40, %28
  %53 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %54 = load i32, i32* @CDSP, align 4
  %55 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %56 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @vx_outb(%struct.vx_core* %53, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %52, %15
  %60 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %61 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  br label %63

63:                                               ; preds = %59, %14
  ret void
}

declare dso_local %struct.snd_vxpocket* @to_vxpocket(%struct.vx_core*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vx_outb(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
