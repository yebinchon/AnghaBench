; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_pcm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_pcm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.hdac_bus = type { i32 }
%struct.skl_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @skl_pcm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_pcm_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.hdac_bus*, align 8
  %4 = alloca %struct.skl_dev*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.hdac_bus* @dev_get_drvdata(i32 %7)
  store %struct.hdac_bus* %8, %struct.hdac_bus** %3, align 8
  %9 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %10 = call %struct.skl_dev* @bus_to_skl(%struct.hdac_bus* %9)
  store %struct.skl_dev* %10, %struct.skl_dev** %4, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %13 = call i32 @skl_tplg_exit(%struct.snd_soc_component* %11, %struct.hdac_bus* %12)
  %14 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %15 = call i32 @skl_debugfs_exit(%struct.skl_dev* %14)
  ret void
}

declare dso_local %struct.hdac_bus* @dev_get_drvdata(i32) #1

declare dso_local %struct.skl_dev* @bus_to_skl(%struct.hdac_bus*) #1

declare dso_local i32 @skl_tplg_exit(%struct.snd_soc_component*, %struct.hdac_bus*) #1

declare dso_local i32 @skl_debugfs_exit(%struct.skl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
