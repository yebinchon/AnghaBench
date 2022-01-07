; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-devres.c_devm_snd_soc_register_component.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-devres.c_devm_snd_soc_register_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_component_driver = type { i32 }
%struct.snd_soc_dai_driver = type { i32 }

@devm_component_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_snd_soc_register_component(%struct.device* %0, %struct.snd_soc_component_driver* %1, %struct.snd_soc_dai_driver* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.snd_soc_component_driver*, align 8
  %8 = alloca %struct.snd_soc_dai_driver*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device**, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.snd_soc_component_driver* %1, %struct.snd_soc_component_driver** %7, align 8
  store %struct.snd_soc_dai_driver* %2, %struct.snd_soc_dai_driver** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @devm_component_release, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.device** @devres_alloc(i32 %12, i32 8, i32 %13)
  store %struct.device** %14, %struct.device*** %10, align 8
  %15 = load %struct.device**, %struct.device*** %10, align 8
  %16 = icmp ne %struct.device** %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %39

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.snd_soc_component_driver*, %struct.snd_soc_component_driver** %7, align 8
  %23 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @snd_soc_register_component(%struct.device* %21, %struct.snd_soc_component_driver* %22, %struct.snd_soc_dai_driver* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load %struct.device**, %struct.device*** %10, align 8
  store %struct.device* %29, %struct.device** %30, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.device**, %struct.device*** %10, align 8
  %33 = call i32 @devres_add(%struct.device* %31, %struct.device** %32)
  br label %37

34:                                               ; preds = %20
  %35 = load %struct.device**, %struct.device*** %10, align 8
  %36 = call i32 @devres_free(%struct.device** %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.device** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @snd_soc_register_component(%struct.device*, %struct.snd_soc_component_driver*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.device**) #1

declare dso_local i32 @devres_free(%struct.device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
