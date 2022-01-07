; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_add_analogue_routes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_add_analogue_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm_hubs_data = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_dapm_context = type { i32 }

@analogue_routes = common dso_local global i32 0, align 4
@lineout1_diff_routes = common dso_local global i32 0, align 4
@lineout1_se_routes = common dso_local global i32 0, align 4
@lineout2_diff_routes = common dso_local global i32 0, align 4
@lineout2_se_routes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_hubs_add_analogue_routes(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm_hubs_data*, align 8
  %8 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.wm_hubs_data* %10, %struct.wm_hubs_data** %7, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %11)
  store %struct.snd_soc_dapm_context* %12, %struct.snd_soc_dapm_context** %8, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %7, align 8
  %15 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %14, i32 0, i32 2
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %15, align 8
  %16 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %7, align 8
  %17 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %7, align 8
  %20 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %19, i32 0, i32 0
  %21 = call i32 @init_completion(i32* %20)
  %22 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %23 = load i32, i32* @analogue_routes, align 4
  %24 = load i32, i32* @analogue_routes, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %22, i32 %23, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %31 = load i32, i32* @lineout1_diff_routes, align 4
  %32 = load i32, i32* @lineout1_diff_routes, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %30, i32 %31, i32 %33)
  br label %41

35:                                               ; preds = %3
  %36 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %37 = load i32, i32* @lineout1_se_routes, align 4
  %38 = load i32, i32* @lineout1_se_routes, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %36, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %46 = load i32, i32* @lineout2_diff_routes, align 4
  %47 = load i32, i32* @lineout2_diff_routes, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %45, i32 %46, i32 %48)
  br label %56

50:                                               ; preds = %41
  %51 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %52 = load i32, i32* @lineout2_se_routes, align 4
  %53 = load i32, i32* @lineout2_se_routes, align 4
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %51, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %50, %44
  ret i32 0
}

declare dso_local %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
