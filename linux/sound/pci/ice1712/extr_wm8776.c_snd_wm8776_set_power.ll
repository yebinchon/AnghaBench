; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8776.c_snd_wm8776_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8776.c_snd_wm8776_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wm8776 = type { i32 }

@WM8776_REG_PWRDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_wm8776_set_power(%struct.snd_wm8776* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_wm8776*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_wm8776* %0, %struct.snd_wm8776** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snd_wm8776*, %struct.snd_wm8776** %3, align 8
  %6 = load i32, i32* @WM8776_REG_PWRDOWN, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @snd_wm8776_write(%struct.snd_wm8776* %5, i32 %6, i32 %7)
  ret void
}

declare dso_local i32 @snd_wm8776_write(%struct.snd_wm8776*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
