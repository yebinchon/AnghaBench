; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_tse850-pcm5142.c_tse850_get_ana.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_tse850-pcm5142.c_tse850_get_ana.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.tse850_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @tse850_get_ana to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tse850_get_ana(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca %struct.tse850_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_dapm_context* %11, %struct.snd_soc_dapm_context** %6, align 8
  %12 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %13, align 8
  store %struct.snd_soc_card* %14, %struct.snd_soc_card** %7, align 8
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %16 = call %struct.tse850_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %15)
  store %struct.tse850_priv* %16, %struct.tse850_priv** %8, align 8
  %17 = load %struct.tse850_priv*, %struct.tse850_priv** %8, align 8
  %18 = getelementptr inbounds %struct.tse850_priv, %struct.tse850_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regulator_get_voltage(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %47

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 11000000
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 11000000, i32* %9, align 4
  br label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 20000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 20000000, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %29
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 11000000
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 500000
  %39 = sdiv i32 %38, 1000000
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %42 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %40, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %34, %23
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local %struct.tse850_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
