; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_add_kcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_add_kcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_kcontrol_new = type { i32 }
%struct.snd_kcontrol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_kcontrol_new*, %struct.snd_kcontrol**)* @soc_tplg_add_kcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_add_kcontrol(%struct.soc_tplg* %0, %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol** %2) #0 {
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_kcontrol_new*, align 8
  %6 = alloca %struct.snd_kcontrol**, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %5, align 8
  store %struct.snd_kcontrol** %2, %struct.snd_kcontrol*** %6, align 8
  %8 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %9 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %7, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %21 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %6, align 8
  %22 = call i32 @soc_tplg_add_dcontrol(i32 %15, i32 %18, %struct.snd_kcontrol_new* %19, i32* null, %struct.snd_soc_component* %20, %struct.snd_kcontrol** %21)
  ret i32 %22
}

declare dso_local i32 @soc_tplg_add_dcontrol(i32, i32, %struct.snd_kcontrol_new*, i32*, %struct.snd_soc_component*, %struct.snd_kcontrol**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
