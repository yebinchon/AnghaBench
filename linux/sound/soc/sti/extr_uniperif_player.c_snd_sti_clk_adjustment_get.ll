; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_snd_sti_clk_adjustment_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_snd_sti_clk_adjustment_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_dai = type { i32 }
%struct.sti_uniperiph_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.uniperif* }
%struct.uniperif = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_sti_clk_adjustment_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sti_clk_adjustment_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.sti_uniperiph_data*, align 8
  %7 = alloca %struct.uniperif*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_soc_dai* %9, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = call %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.sti_uniperiph_data* %11, %struct.sti_uniperiph_data** %6, align 8
  %12 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %6, align 8
  %13 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.uniperif*, %struct.uniperif** %14, align 8
  store %struct.uniperif* %15, %struct.uniperif** %7, align 8
  %16 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %17 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %20 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %21, i32* %27, align 4
  %28 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %29 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret i32 0
}

declare dso_local %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
