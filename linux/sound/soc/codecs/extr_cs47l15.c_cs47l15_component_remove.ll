; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l15.c_cs47l15_component_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l15.c_cs47l15_component_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs47l15 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.madera* }
%struct.madera = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @cs47l15_component_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs47l15_component_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.cs47l15*, align 8
  %4 = alloca %struct.madera*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.cs47l15* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.cs47l15* %6, %struct.cs47l15** %3, align 8
  %7 = load %struct.cs47l15*, %struct.cs47l15** %3, align 8
  %8 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.madera*, %struct.madera** %9, align 8
  store %struct.madera* %10, %struct.madera** %4, align 8
  %11 = load %struct.madera*, %struct.madera** %4, align 8
  %12 = getelementptr inbounds %struct.madera, %struct.madera* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.madera*, %struct.madera** %4, align 8
  %15 = getelementptr inbounds %struct.madera, %struct.madera* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.madera*, %struct.madera** %4, align 8
  %17 = getelementptr inbounds %struct.madera, %struct.madera* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.cs47l15*, %struct.cs47l15** %3, align 8
  %20 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %25 = call i32 @wm_adsp2_component_remove(i32* %23, %struct.snd_soc_component* %24)
  ret void
}

declare dso_local %struct.cs47l15* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wm_adsp2_component_remove(i32*, %struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
