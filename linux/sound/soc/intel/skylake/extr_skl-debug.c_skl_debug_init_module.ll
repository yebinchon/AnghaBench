; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-debug.c_skl_debug_init_module.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-debug.c_skl_debug_init_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_debug = type { i32 }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.skl_module_cfg = type { i32 }

@mcfg_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skl_debug_init_module(%struct.skl_debug* %0, %struct.snd_soc_dapm_widget* %1, %struct.skl_module_cfg* %2) #0 {
  %4 = alloca %struct.skl_debug*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.skl_module_cfg*, align 8
  store %struct.skl_debug* %0, %struct.skl_debug** %4, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.skl_module_cfg* %2, %struct.skl_module_cfg** %6, align 8
  %7 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.skl_debug*, %struct.skl_debug** %4, align 8
  %11 = getelementptr inbounds %struct.skl_debug, %struct.skl_debug* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %14 = call i32 @debugfs_create_file(i32 %9, i32 292, i32 %12, %struct.skl_module_cfg* %13, i32* @mcfg_fops)
  ret void
}

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.skl_module_cfg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
