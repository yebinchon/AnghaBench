; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_apu_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_apu_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, i32, i32)* @snd_es1968_apu_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_apu_set_freq(%struct.es1968* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.es1968*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.es1968*, %struct.es1968** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.es1968*, %struct.es1968** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @apu_get_register(%struct.es1968* %9, i32 %10, i32 2)
  %12 = and i32 %11, 255
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  %15 = shl i32 %14, 8
  %16 = or i32 %12, %15
  %17 = or i32 %16, 16
  %18 = call i32 @apu_set_register(%struct.es1968* %7, i32 %8, i32 2, i32 %17)
  %19 = load %struct.es1968*, %struct.es1968** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 8
  %23 = call i32 @apu_set_register(%struct.es1968* %19, i32 %20, i32 3, i32 %22)
  ret void
}

declare dso_local i32 @apu_set_register(%struct.es1968*, i32, i32, i32) #1

declare dso_local i32 @apu_get_register(%struct.es1968*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
