; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_clear_pin_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_clear_pin_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_widget = type { %struct.skl_module_cfg*, %struct.TYPE_7__* }
%struct.skl_module_cfg = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.skl_pipe* }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.skl_pipe = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SKL_PIN_UNBIND = common dso_local global i8* null, align 8
@SKL_PIPE_INVALID = common dso_local global i32 0, align 4
@SKL_MODULE_UNINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, %struct.snd_soc_dapm_widget*)* @skl_clear_pin_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_clear_pin_config(%struct.snd_soc_component* %0, %struct.snd_soc_dapm_widget* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skl_module_cfg*, align 8
  %7 = alloca %struct.skl_pipe*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %4, align 8
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strlen(i32 %20)
  %22 = call i32 @strncmp(i32 %14, i32 %17, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %93, label %24

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %25, i32 0, i32 0
  %27 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %26, align 8
  store %struct.skl_module_cfg* %27, %struct.skl_module_cfg** %6, align 8
  %28 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %29 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %28, i32 0, i32 4
  %30 = load %struct.skl_pipe*, %struct.skl_pipe** %29, align 8
  store %struct.skl_pipe* %30, %struct.skl_pipe** %7, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %55, %24
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %34 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %31
  %40 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %41 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load i8*, i8** @SKL_PIN_UNBIND, align 8
  %48 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %49 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %48, i32 0, i32 3
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i8* %47, i8** %54, align 8
  br label %55

55:                                               ; preds = %39
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %31

58:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %83, %58
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %62 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %59
  %68 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %69 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load i8*, i8** @SKL_PIN_UNBIND, align 8
  %76 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %77 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i8* %75, i8** %82, align 8
  br label %83

83:                                               ; preds = %67
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %59

86:                                               ; preds = %59
  %87 = load i32, i32* @SKL_PIPE_INVALID, align 4
  %88 = load %struct.skl_pipe*, %struct.skl_pipe** %7, align 8
  %89 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @SKL_MODULE_UNINIT, align 4
  %91 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %6, align 8
  %92 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %86, %2
  ret void
}

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
