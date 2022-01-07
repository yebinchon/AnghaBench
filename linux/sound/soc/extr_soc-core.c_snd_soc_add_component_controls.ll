; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_add_component_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_add_component_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol_new = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %0, %struct.snd_kcontrol_new* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_kcontrol_new*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_card*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  store %struct.snd_card* %12, %struct.snd_card** %7, align 8
  %13 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %23 = call i32 @snd_soc_add_controls(%struct.snd_card* %13, i32 %16, %struct.snd_kcontrol_new* %17, i32 %18, i32 %21, %struct.snd_soc_component* %22)
  ret i32 %23
}

declare dso_local i32 @snd_soc_add_controls(%struct.snd_card*, i32, %struct.snd_kcontrol_new*, i32, i32, %struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
