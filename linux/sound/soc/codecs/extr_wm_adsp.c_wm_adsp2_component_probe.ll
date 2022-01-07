; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i8*, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s Preload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_adsp2_component_probe(%struct.wm_adsp* %0, %struct.snd_soc_component* %1) #0 {
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca [32 x i8], align 16
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  store %struct.snd_soc_component* %1, %struct.snd_soc_component** %4, align 8
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %8 = call i32 @ARRAY_SIZE(i8* %7)
  %9 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %10 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @snprintf(i8* %6, i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %15 = call i32 @snd_soc_component_disable_pin(%struct.snd_soc_component* %13, i8* %14)
  %16 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %18 = call i32 @wm_adsp2_init_debugfs(%struct.wm_adsp* %16, %struct.snd_soc_component* %17)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %20 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %21 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %20, i32 0, i32 1
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %21, align 8
  ret i32 0
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @snd_soc_component_disable_pin(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @wm_adsp2_init_debugfs(%struct.wm_adsp*, %struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
