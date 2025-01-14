; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_out_comp_coeff_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_out_comp_coeff_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.snd_soc_component = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.arizona = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm5102_out_comp_coeff_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5102_out_comp_coeff_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.arizona*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %7)
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.arizona* @dev_get_drvdata(i32 %13)
  store %struct.arizona* %14, %struct.arizona** %6, align 8
  %15 = load %struct.arizona*, %struct.arizona** %6, align 8
  %16 = getelementptr inbounds %struct.arizona, %struct.arizona* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.arizona*, %struct.arizona** %6, align 8
  %19 = getelementptr inbounds %struct.arizona, %struct.arizona* %18, i32 0, i32 1
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32* %19, i32 %24, i32 4)
  %26 = load %struct.arizona*, %struct.arizona** %6, align 8
  %27 = getelementptr inbounds %struct.arizona, %struct.arizona* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be16_to_cpu(i32 %28)
  %30 = load %struct.arizona*, %struct.arizona** %6, align 8
  %31 = getelementptr inbounds %struct.arizona, %struct.arizona* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.arizona*, %struct.arizona** %6, align 8
  %33 = getelementptr inbounds %struct.arizona, %struct.arizona* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
