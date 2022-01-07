; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_mono_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_mono_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DACL1_2_MONOLOPM_VOL = common dso_local global i32 0, align 4
@DEFAULT_VOL = common dso_local global i32 0, align 4
@ROUTE_ON = common dso_local global i32 0, align 4
@DACR1_2_MONOLOPM_VOL = common dso_local global i32 0, align 4
@MONOLOPM_CTRL = common dso_local global i32 0, align 4
@UNMUTE = common dso_local global i32 0, align 4
@PGAL_2_MONOLOPM_VOL = common dso_local global i32 0, align 4
@PGAR_2_MONOLOPM_VOL = common dso_local global i32 0, align 4
@LINE2L_2_MONOLOPM_VOL = common dso_local global i32 0, align 4
@LINE2R_2_MONOLOPM_VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @aic3x_mono_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic3x_mono_init(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %3 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %4 = load i32, i32* @DACL1_2_MONOLOPM_VOL, align 4
  %5 = load i32, i32* @DEFAULT_VOL, align 4
  %6 = load i32, i32* @ROUTE_ON, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %3, i32 %4, i32 %7)
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = load i32, i32* @DACR1_2_MONOLOPM_VOL, align 4
  %11 = load i32, i32* @DEFAULT_VOL, align 4
  %12 = load i32, i32* @ROUTE_ON, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %9, i32 %10, i32 %13)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = load i32, i32* @MONOLOPM_CTRL, align 4
  %17 = load i32, i32* @UNMUTE, align 4
  %18 = load i32, i32* @UNMUTE, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %21 = load i32, i32* @PGAL_2_MONOLOPM_VOL, align 4
  %22 = load i32, i32* @DEFAULT_VOL, align 4
  %23 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %20, i32 %21, i32 %22)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %25 = load i32, i32* @PGAR_2_MONOLOPM_VOL, align 4
  %26 = load i32, i32* @DEFAULT_VOL, align 4
  %27 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %24, i32 %25, i32 %26)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = load i32, i32* @LINE2L_2_MONOLOPM_VOL, align 4
  %30 = load i32, i32* @DEFAULT_VOL, align 4
  %31 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %28, i32 %29, i32 %30)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %33 = load i32, i32* @LINE2R_2_MONOLOPM_VOL, align 4
  %34 = load i32, i32* @DEFAULT_VOL, align 4
  %35 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
