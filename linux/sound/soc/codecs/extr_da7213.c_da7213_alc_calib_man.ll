; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_alc_calib_man.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_alc_calib_man.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DA7213_ALC_CIC_OP_CHANNEL_LEFT = common dso_local global i32 0, align 4
@DA7213_ALC_CIC_OP_CHANNEL_RIGHT = common dso_local global i32 0, align 4
@DA7213_ALC_OFFSET_15_8 = common dso_local global i32 0, align 4
@DA7213_ALC_OFFSET_MAN_M_L = common dso_local global i32 0, align 4
@DA7213_ALC_OFFSET_19_16 = common dso_local global i32 0, align 4
@DA7213_ALC_OFFSET_MAN_U_L = common dso_local global i32 0, align 4
@DA7213_ALC_OFFSET_MAN_M_R = common dso_local global i32 0, align 4
@DA7213_ALC_OFFSET_MAN_U_R = common dso_local global i32 0, align 4
@DA7213_ALC_CTRL1 = common dso_local global i32 0, align 4
@DA7213_ALC_OFFSET_EN = common dso_local global i32 0, align 4
@DA7213_ALC_SYNC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @da7213_alc_calib_man to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da7213_alc_calib_man(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %9 = load i32, i32* @DA7213_ALC_CIC_OP_CHANNEL_LEFT, align 4
  %10 = call i32 @da7213_get_alc_data(%struct.snd_soc_component* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = load i32, i32* @DA7213_ALC_CIC_OP_CHANNEL_RIGHT, align 4
  %13 = call i32 @da7213_get_alc_data(%struct.snd_soc_component* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DA7213_ALC_OFFSET_15_8, align 4
  %20 = and i32 %18, %19
  %21 = ashr i32 %20, 8
  store i32 %21, i32* %3, align 4
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %23 = load i32, i32* @DA7213_ALC_OFFSET_MAN_M_L, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DA7213_ALC_OFFSET_19_16, align 4
  %28 = and i32 %26, %27
  %29 = ashr i32 %28, 16
  store i32 %29, i32* %3, align 4
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %31 = load i32, i32* @DA7213_ALC_OFFSET_MAN_U_L, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DA7213_ALC_OFFSET_15_8, align 4
  %36 = and i32 %34, %35
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %3, align 4
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %39 = load i32, i32* @DA7213_ALC_OFFSET_MAN_M_R, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @DA7213_ALC_OFFSET_19_16, align 4
  %44 = and i32 %42, %43
  %45 = ashr i32 %44, 16
  store i32 %45, i32* %3, align 4
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %47 = load i32, i32* @DA7213_ALC_OFFSET_MAN_U_R, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %46, i32 %47, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %51 = load i32, i32* @DA7213_ALC_CTRL1, align 4
  %52 = load i32, i32* @DA7213_ALC_OFFSET_EN, align 4
  %53 = load i32, i32* @DA7213_ALC_SYNC_MODE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @DA7213_ALC_OFFSET_EN, align 4
  %56 = load i32, i32* @DA7213_ALC_SYNC_MODE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %54, i32 %57)
  ret void
}

declare dso_local i32 @da7213_get_alc_data(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
