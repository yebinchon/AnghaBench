; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_enable_pin_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_enable_pin_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  %4 = alloca i8*, align 8
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @snd_soc_dapm_set_pin(%struct.snd_soc_dapm_context* %5, i8* %6, i32 1)
  ret i32 %7
}

declare dso_local i32 @snd_soc_dapm_set_pin(%struct.snd_soc_dapm_context*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
