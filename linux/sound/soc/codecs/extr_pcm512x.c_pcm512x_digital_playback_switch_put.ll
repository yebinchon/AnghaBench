; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_digital_playback_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_digital_playback_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.pcm512x_priv = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to update digital mute: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @pcm512x_digital_playback_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm512x_digital_playback_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.pcm512x_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.pcm512x_priv* %13, %struct.pcm512x_priv** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %15 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %18 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 4
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 2
  %29 = icmp eq i32 %20, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %32 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, 4
  store i32 %34, i32* %32, align 4
  store i32 1, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %37 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 2
  %40 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 1
  %48 = icmp eq i32 %39, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %51 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, 2
  store i32 %53, i32* %51, align 4
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %49, %35
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %59 = call i32 @pcm512x_update_mute(%struct.pcm512x_priv* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %64 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %69 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %78

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %7, align 8
  %75 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %62
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcm512x_update_mute(%struct.pcm512x_priv*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
