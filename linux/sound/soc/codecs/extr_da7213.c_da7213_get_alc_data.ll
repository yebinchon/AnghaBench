; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_get_alc_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_get_alc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DA7213_ALC_AVG_ITERATIONS = common dso_local global i32 0, align 4
@DA7213_ALC_CIC_OP_LVL_CTRL = common dso_local global i32 0, align 4
@DA7213_ALC_DATA_MIDDLE = common dso_local global i32 0, align 4
@DA7213_ALC_CIC_OP_LVL_DATA = common dso_local global i32 0, align 4
@DA7213_ALC_DATA_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @da7213_get_alc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7213_get_alc_data(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %43, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @DA7213_ALC_AVG_ITERATIONS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load i32, i32* @DA7213_ALC_CIC_OP_LVL_CTRL, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %14, i32 %15, i32 %16)
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %19 = load i32, i32* @DA7213_ALC_CIC_OP_LVL_CTRL, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DA7213_ALC_DATA_MIDDLE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %18, i32 %19, i32 %22)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = load i32, i32* @DA7213_ALC_CIC_OP_LVL_DATA, align 4
  %26 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = load i32, i32* @DA7213_ALC_CIC_OP_LVL_CTRL, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @DA7213_ALC_DATA_TOP, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %27, i32 %28, i32 %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @DA7213_ALC_CIC_OP_LVL_DATA, align 4
  %35 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 16
  %40 = or i32 %37, %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %13
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %9

46:                                               ; preds = %9
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @DA7213_ALC_AVG_ITERATIONS, align 4
  %49 = sdiv i32 %47, %48
  ret i32 %49
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
