; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_set_dai.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_set_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.wm8753_priv = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@WM8753_IOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8753_set_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_set_dai(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.wm8753_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = call %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.wm8753_priv* %12, %struct.wm8753_priv** %7, align 8
  %13 = load %struct.wm8753_priv*, %struct.wm8753_priv** %7, align 8
  %14 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %15, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %27 = call i64 @snd_soc_component_is_active(%struct.snd_soc_component* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %75

32:                                               ; preds = %25
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %34 = load i32, i32* @WM8753_IOCTL, align 4
  %35 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wm8753_priv*, %struct.wm8753_priv** %7, align 8
  %44 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = ashr i32 %45, 2
  %47 = and i32 %46, 3
  %48 = load %struct.wm8753_priv*, %struct.wm8753_priv** %7, align 8
  %49 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %75

53:                                               ; preds = %32
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 499
  %56 = load %struct.wm8753_priv*, %struct.wm8753_priv** %7, align 8
  %57 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 2
  %60 = or i32 %55, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %62 = load i32, i32* @WM8753_IOCTL, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %61, i32 %62, i32 %63)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %66 = load %struct.wm8753_priv*, %struct.wm8753_priv** %7, align 8
  %67 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wm8753_hifi_write_dai_fmt(%struct.snd_soc_component* %65, i32 %68)
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %71 = load %struct.wm8753_priv*, %struct.wm8753_priv** %7, align 8
  %72 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @wm8753_voice_write_dai_fmt(%struct.snd_soc_component* %70, i32 %73)
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %53, %52, %29, %24
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @snd_soc_component_is_active(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @wm8753_hifi_write_dai_fmt(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm8753_voice_write_dai_fmt(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
