; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.nau8824 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @nau8824_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8824_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nau8824*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.nau8824* %13, %struct.nau8824** %11, align 8
  %14 = load %struct.nau8824*, %struct.nau8824** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @nau8824_config_sysclk(%struct.nau8824* %14, i32 %15, i32 %16)
  ret i32 %17
}

declare dso_local %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @nau8824_config_sysclk(%struct.nau8824*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
