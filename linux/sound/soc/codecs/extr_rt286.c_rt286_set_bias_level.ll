; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@RT286_SET_AUDIO_POWER = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@RT286_DC_GAIN = common dso_local global i32 0, align 4
@AC_PWRST_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt286_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt286_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %29 [
    i32 129, label %6
    i32 130, label %19
    i32 128, label %24
  ]

6:                                                ; preds = %2
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %7)
  %9 = icmp eq i32 128, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @RT286_SET_AUDIO_POWER, align 4
  %13 = load i32, i32* @AC_PWRST_D0, align 4
  %14 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %11, i32 %12, i32 %13)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = load i32, i32* @RT286_DC_GAIN, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 512, i32 512)
  br label %18

18:                                               ; preds = %10, %6
  br label %30

19:                                               ; preds = %2
  %20 = call i32 @mdelay(i32 10)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = load i32, i32* @RT286_DC_GAIN, align 4
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 512, i32 0)
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @RT286_SET_AUDIO_POWER, align 4
  %27 = load i32, i32* @AC_PWRST_D3, align 4
  %28 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %25, i32 %26, i32 %27)
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %24, %19, %18
  ret i32 0
}

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
