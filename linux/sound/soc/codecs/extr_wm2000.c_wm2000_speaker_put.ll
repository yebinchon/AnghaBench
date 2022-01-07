; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_speaker_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_speaker_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.wm2000_priv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm2000_speaker_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2000_speaker_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.wm2000_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.wm2000_priv* @dev_get_drvdata(i32 %14)
  store %struct.wm2000_priv* %15, %struct.wm2000_priv** %7, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.wm2000_priv*, %struct.wm2000_priv** %7, align 8
  %30 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.wm2000_priv*, %struct.wm2000_priv** %7, align 8
  %34 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.wm2000_priv*, %struct.wm2000_priv** %7, align 8
  %36 = call i32 @wm2000_anc_set_mode(%struct.wm2000_priv* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.wm2000_priv*, %struct.wm2000_priv** %7, align 8
  %38 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %28, %25
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.wm2000_priv* @dev_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm2000_anc_set_mode(%struct.wm2000_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
