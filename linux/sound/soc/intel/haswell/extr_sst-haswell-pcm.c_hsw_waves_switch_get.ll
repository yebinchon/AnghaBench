; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_waves_switch_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_waves_switch_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.hsw_priv_data = type { %struct.sst_hsw* }
%struct.sst_hsw = type { i32 }

@SST_HSW_MODULE_WAVES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hsw_waves_switch_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_waves_switch_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.hsw_priv_data*, align 8
  %7 = alloca %struct.sst_hsw*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = call %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.hsw_priv_data* %12, %struct.hsw_priv_data** %6, align 8
  %13 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %6, align 8
  %14 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %13, i32 0, i32 0
  %15 = load %struct.sst_hsw*, %struct.sst_hsw** %14, align 8
  store %struct.sst_hsw* %15, %struct.sst_hsw** %7, align 8
  %16 = load i32, i32* @SST_HSW_MODULE_WAVES, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @sst_hsw_is_module_active(%struct.sst_hsw* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @sst_hsw_is_module_enabled_rtd3(%struct.sst_hsw* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %2
  %27 = phi i1 [ true, %2 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %28, i32* %34, align 4
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @sst_hsw_is_module_active(%struct.sst_hsw*, i32) #1

declare dso_local i64 @sst_hsw_is_module_enabled_rtd3(%struct.sst_hsw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
