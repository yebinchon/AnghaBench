; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_kcontrol_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_kcontrol_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.dapm_kcontrol_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, i32)* @dapm_kcontrol_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dapm_kcontrol_set_value(%struct.snd_kcontrol* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dapm_kcontrol_data*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %8 = call %struct.dapm_kcontrol_data* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.dapm_kcontrol_data* %8, %struct.dapm_kcontrol_data** %6, align 8
  %9 = load %struct.dapm_kcontrol_data*, %struct.dapm_kcontrol_data** %6, align 8
  %10 = getelementptr inbounds %struct.dapm_kcontrol_data, %struct.dapm_kcontrol_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.dapm_kcontrol_data*, %struct.dapm_kcontrol_data** %6, align 8
  %17 = getelementptr inbounds %struct.dapm_kcontrol_data, %struct.dapm_kcontrol_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.dapm_kcontrol_data*, %struct.dapm_kcontrol_data** %6, align 8
  %23 = getelementptr inbounds %struct.dapm_kcontrol_data, %struct.dapm_kcontrol_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.dapm_kcontrol_data*, %struct.dapm_kcontrol_data** %6, align 8
  %29 = getelementptr inbounds %struct.dapm_kcontrol_data, %struct.dapm_kcontrol_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.dapm_kcontrol_data* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
