; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_snd_soc_tplg_component_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_snd_soc_tplg_component_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_tplg_ops = type { i32, i32, i32, i32 }
%struct.firmware = type { i32 }
%struct.soc_tplg = type { i32, i32, i32, i32, i32, %struct.snd_soc_tplg_ops*, %struct.snd_soc_component*, i32, %struct.firmware* }

@SND_SOC_TPLG_INDEX_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_tplg_component_load(%struct.snd_soc_component* %0, %struct.snd_soc_tplg_ops* %1, %struct.firmware* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_tplg_ops*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.soc_tplg, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_tplg_ops* %1, %struct.snd_soc_tplg_ops** %6, align 8
  store %struct.firmware* %2, %struct.firmware** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 @memset(%struct.soc_tplg* %9, i32 0, i32 56)
  %12 = load %struct.firmware*, %struct.firmware** %7, align 8
  %13 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %9, i32 0, i32 8
  store %struct.firmware* %12, %struct.firmware** %13, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %9, i32 0, i32 7
  store i32 %16, i32* %17, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %19 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %9, i32 0, i32 6
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %19, align 8
  %20 = load %struct.snd_soc_tplg_ops*, %struct.snd_soc_tplg_ops** %6, align 8
  %21 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %9, i32 0, i32 5
  store %struct.snd_soc_tplg_ops* %20, %struct.snd_soc_tplg_ops** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %9, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = load %struct.snd_soc_tplg_ops*, %struct.snd_soc_tplg_ops** %6, align 8
  %25 = getelementptr inbounds %struct.snd_soc_tplg_ops, %struct.snd_soc_tplg_ops* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %9, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.snd_soc_tplg_ops*, %struct.snd_soc_tplg_ops** %6, align 8
  %29 = getelementptr inbounds %struct.snd_soc_tplg_ops, %struct.snd_soc_tplg_ops* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %9, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = load %struct.snd_soc_tplg_ops*, %struct.snd_soc_tplg_ops** %6, align 8
  %33 = getelementptr inbounds %struct.snd_soc_tplg_ops, %struct.snd_soc_tplg_ops* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %9, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.snd_soc_tplg_ops*, %struct.snd_soc_tplg_ops** %6, align 8
  %37 = getelementptr inbounds %struct.snd_soc_tplg_ops, %struct.snd_soc_tplg_ops* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = call i32 @soc_tplg_load(%struct.soc_tplg* %9)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %4
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %45 = load i32, i32* @SND_SOC_TPLG_INDEX_ALL, align 4
  %46 = call i32 @snd_soc_tplg_component_remove(%struct.snd_soc_component* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %4
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.soc_tplg*, i32, i32) #1

declare dso_local i32 @soc_tplg_load(%struct.soc_tplg*) #1

declare dso_local i32 @snd_soc_tplg_component_remove(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
