; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_mbc_vss_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_mbc_vss_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32, %struct.firmware* }

@.str = private unnamed_addr constant [8 x i8] c"MBC+VSS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @wm8958_mbc_vss_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8958_mbc_vss_loaded(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.wm8994_priv*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.snd_soc_component*
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %10 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.wm8994_priv* %10, %struct.wm8994_priv** %6, align 8
  %11 = load %struct.firmware*, %struct.firmware** %3, align 8
  %12 = icmp ne %struct.firmware* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %15 = load %struct.firmware*, %struct.firmware** %3, align 8
  %16 = call i64 @wm8958_dsp2_fw(%struct.snd_soc_component* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.firmware* %15, i32 1)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %20 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.firmware*, %struct.firmware** %3, align 8
  %23 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %24 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %23, i32 0, i32 1
  store %struct.firmware* %22, %struct.firmware** %24, align 8
  %25 = load %struct.wm8994_priv*, %struct.wm8994_priv** %6, align 8
  %26 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %28

28:                                               ; preds = %18, %13, %2
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @wm8958_dsp2_fw(%struct.snd_soc_component*, i8*, %struct.firmware*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
