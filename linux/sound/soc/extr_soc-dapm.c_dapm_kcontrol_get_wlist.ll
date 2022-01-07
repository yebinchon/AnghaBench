; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_kcontrol_get_wlist.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_kcontrol_get_wlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget_list = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.dapm_kcontrol_data = type { %struct.snd_soc_dapm_widget_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_soc_dapm_widget_list* (%struct.snd_kcontrol*)* @dapm_kcontrol_get_wlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_soc_dapm_widget_list* @dapm_kcontrol_get_wlist(%struct.snd_kcontrol* %0) #0 {
  %2 = alloca %struct.snd_kcontrol*, align 8
  %3 = alloca %struct.dapm_kcontrol_data*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %2, align 8
  %4 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %5 = call %struct.dapm_kcontrol_data* @snd_kcontrol_chip(%struct.snd_kcontrol* %4)
  store %struct.dapm_kcontrol_data* %5, %struct.dapm_kcontrol_data** %3, align 8
  %6 = load %struct.dapm_kcontrol_data*, %struct.dapm_kcontrol_data** %3, align 8
  %7 = getelementptr inbounds %struct.dapm_kcontrol_data, %struct.dapm_kcontrol_data* %6, i32 0, i32 0
  %8 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %7, align 8
  ret %struct.snd_soc_dapm_widget_list* %8
}

declare dso_local %struct.dapm_kcontrol_data* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
