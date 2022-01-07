; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_dai_create_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_dai_create_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.sti_uniperiph_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uniperif* }
%struct.uniperif = type { i32, %struct.snd_kcontrol_new*, i32 }
%struct.snd_kcontrol_new = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @sti_uniperiph_dai_create_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_uniperiph_dai_create_ctrl(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.sti_uniperiph_data*, align 8
  %5 = alloca %struct.uniperif*, align 8
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = call %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.sti_uniperiph_data* %9, %struct.sti_uniperiph_data** %4, align 8
  %10 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %4, align 8
  %11 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.uniperif*, %struct.uniperif** %12, align 8
  store %struct.uniperif* %13, %struct.uniperif** %5, align 8
  %14 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %15 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

19:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %23 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %28 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %27, i32 0, i32 1
  %29 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %29, i64 %31
  store %struct.snd_kcontrol_new* %32, %struct.snd_kcontrol_new** %6, align 8
  %33 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %34 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %39 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %42 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %20

46:                                               ; preds = %20
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %48 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %49 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %48, i32 0, i32 1
  %50 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %49, align 8
  %51 = load %struct.uniperif*, %struct.uniperif** %5, align 8
  %52 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @snd_soc_add_dai_controls(%struct.snd_soc_dai* %47, %struct.snd_kcontrol_new* %50, i32 %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %46, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_soc_add_dai_controls(%struct.snd_soc_dai*, %struct.snd_kcontrol_new*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
