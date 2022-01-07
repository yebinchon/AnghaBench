; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifin.c_axg_spdifin_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifin.c_axg_spdifin_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.axg_spdifin = type { i32 }

@SPDIFIN_CTRL0 = common dso_local global i32 0, align 4
@SPDIFIN_CTRL0_STATUS_SEL = common dso_local global i32 0, align 4
@SPDIFIN_STAT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @axg_spdifin_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_spdifin_get_status(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.axg_spdifin*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = call %struct.axg_spdifin* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.axg_spdifin* %14, %struct.axg_spdifin** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %58, %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = load %struct.axg_spdifin*, %struct.axg_spdifin** %6, align 8
  %20 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SPDIFIN_CTRL0, align 4
  %23 = load i32, i32* @SPDIFIN_CTRL0_STATUS_SEL, align 4
  %24 = load i32, i32* @SPDIFIN_CTRL0_STATUS_SEL, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @FIELD_PREP(i32 %24, i32 %25)
  %27 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %26)
  %28 = load %struct.axg_spdifin*, %struct.axg_spdifin** %6, align 8
  %29 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SPDIFIN_STAT1, align 4
  %32 = call i32 @regmap_read(i32 %30, i32 %31, i32* %9)
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %54, %18
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %37, 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %42, 8
  %44 = lshr i32 %41, %43
  %45 = and i32 %44, 255
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %45, i32* %53, align 4
  br label %54

54:                                               ; preds = %36
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %33

57:                                               ; preds = %33
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %15

61:                                               ; preds = %15
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.axg_spdifin* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
