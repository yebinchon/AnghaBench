; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sti_uniperiph_data = type { i8*, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sti_uniperiph_dai_component = common dso_local global i32 0, align 4
@dmaengine_pcm_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sti_uniperiph_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_uniperiph_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sti_uniperiph_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(%struct.TYPE_5__* %12, i32 16, i32 %13)
  %15 = bitcast i8* %14 to %struct.sti_uniperiph_data*
  store %struct.sti_uniperiph_data* %15, %struct.sti_uniperiph_data** %4, align 8
  %16 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %4, align 8
  %17 = icmp ne %struct.sti_uniperiph_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @devm_kzalloc(%struct.TYPE_5__* %23, i32 1, i32 %24)
  %26 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %4, align 8
  %27 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %4, align 8
  %29 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %60

35:                                               ; preds = %21
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %4, align 8
  %38 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %37, i32 0, i32 1
  store %struct.platform_device* %36, %struct.platform_device** %38, align 8
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %4, align 8
  %41 = call i32 @sti_uniperiph_cpu_dai_of(%struct.device_node* %39, %struct.sti_uniperiph_data* %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %4, align 8
  %45 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %43, %struct.sti_uniperiph_data* %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %4, align 8
  %49 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @devm_snd_soc_register_component(%struct.TYPE_5__* %47, i32* @sti_uniperiph_dai_component, i8* %50, i32 1)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %35
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @devm_snd_dmaengine_pcm_register(%struct.TYPE_5__* %58, i32* @dmaengine_pcm_config, i32 0)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %54, %32, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @sti_uniperiph_cpu_dai_of(%struct.device_node*, %struct.sti_uniperiph_data*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, %struct.sti_uniperiph_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_5__*, i32*, i8*, i32) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(%struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
