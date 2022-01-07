; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_ctl_iec958_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_ctl_iec958_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.snd_soc_dai = type { i32 }
%struct.sti_uniperiph_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.uniperif* }
%struct.uniperif = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_7__ = type { %struct.snd_aes_iec958 }
%struct.snd_aes_iec958 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @uni_player_ctl_iec958_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni_player_ctl_iec958_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.sti_uniperiph_data*, align 8
  %7 = alloca %struct.uniperif*, align 8
  %8 = alloca %struct.snd_aes_iec958*, align 8
  %9 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_dai* %11, %struct.snd_soc_dai** %5, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %13 = call %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.sti_uniperiph_data* %13, %struct.sti_uniperiph_data** %6, align 8
  %14 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %6, align 8
  %15 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.uniperif*, %struct.uniperif** %16, align 8
  store %struct.uniperif* %17, %struct.uniperif** %7, align 8
  %18 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %19 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.snd_aes_iec958* %20, %struct.snd_aes_iec958** %8, align 8
  %21 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %22 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %8, align 8
  %32 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %8, align 8
  %43 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %8, align 8
  %54 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %52, i32* %56, align 4
  %57 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.snd_aes_iec958*, %struct.snd_aes_iec958** %8, align 8
  %65 = getelementptr inbounds %struct.snd_aes_iec958, %struct.snd_aes_iec958* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32 %63, i32* %67, align 4
  %68 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %69 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %72 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %71, i32 0, i32 0
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %76 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %2
  %80 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %81 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %88 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %89 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @uni_player_set_channel_status(%struct.uniperif* %87, i32* %92)
  br label %97

94:                                               ; preds = %79, %2
  %95 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %96 = call i32 @uni_player_set_channel_status(%struct.uniperif* %95, i32* null)
  br label %97

97:                                               ; preds = %94, %86
  %98 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %99 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %98, i32 0, i32 0
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  ret i32 0
}

declare dso_local %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uni_player_set_channel_status(%struct.uniperif*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
