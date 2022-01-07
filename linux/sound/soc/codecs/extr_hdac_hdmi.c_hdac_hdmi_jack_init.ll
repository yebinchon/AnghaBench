; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_jack_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_jack_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.hdac_hdmi_priv = type { i32, i32, %struct.TYPE_2__*, %struct.hdac_device* }
%struct.TYPE_2__ = type { i32 }
%struct.hdac_device = type { i32 }
%struct.hdac_hdmi_pcm = type { i32, i32, i32, i32, %struct.snd_soc_jack*, i64, i32 }
%struct.snd_pcm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"chmap control add failed with err: %d for pcm: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdac_hdmi_jack_init(%struct.snd_soc_dai* %0, i32 %1, %struct.snd_soc_jack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_jack*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.hdac_hdmi_priv*, align 8
  %10 = alloca %struct.hdac_device*, align 8
  %11 = alloca %struct.hdac_hdmi_pcm*, align 8
  %12 = alloca %struct.snd_pcm*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_jack* %2, %struct.snd_soc_jack** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.hdac_hdmi_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.hdac_hdmi_priv* %18, %struct.hdac_hdmi_priv** %9, align 8
  %19 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %9, align 8
  %20 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %19, i32 0, i32 3
  %21 = load %struct.hdac_device*, %struct.hdac_device** %20, align 8
  store %struct.hdac_device* %21, %struct.hdac_device** %10, align 8
  %22 = load %struct.hdac_device*, %struct.hdac_device** %10, align 8
  %23 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.hdac_hdmi_pcm* @devm_kzalloc(i32* %23, i32 40, i32 %24)
  store %struct.hdac_hdmi_pcm* %25, %struct.hdac_hdmi_pcm** %11, align 8
  %26 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %11, align 8
  %27 = icmp ne %struct.hdac_hdmi_pcm* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %88

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %11, align 8
  %34 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %9, align 8
  %36 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %11, align 8
  %45 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %11, align 8
  %47 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %49 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %11, align 8
  %50 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %49, i32 0, i32 4
  store %struct.snd_soc_jack* %48, %struct.snd_soc_jack** %50, align 8
  %51 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %11, align 8
  %52 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %51, i32 0, i32 3
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %11, align 8
  %55 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %54, i32 0, i32 2
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %57, i32 0, i32 1
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %58, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call %struct.snd_pcm* @hdac_hdmi_get_pcm_from_id(i32 %61, i32 %62)
  store %struct.snd_pcm* %63, %struct.snd_pcm** %12, align 8
  %64 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %65 = icmp ne %struct.snd_pcm* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %31
  %67 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %9, align 8
  %70 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %69, i32 0, i32 1
  %71 = call i32 @snd_hdac_add_chmap_ctls(%struct.snd_pcm* %67, i32 %68, i32* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.hdac_device*, %struct.hdac_device** %10, align 8
  %76 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %75, i32 0, i32 0
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %4, align 4
  br label %88

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %31
  %83 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %11, align 8
  %84 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %83, i32 0, i32 1
  %85 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %9, align 8
  %86 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %85, i32 0, i32 0
  %87 = call i32 @list_add_tail(i32* %84, i32* %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %74, %28
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.hdac_hdmi_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.hdac_hdmi_pcm* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.snd_pcm* @hdac_hdmi_get_pcm_from_id(i32, i32) #1

declare dso_local i32 @snd_hdac_add_chmap_ctls(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
