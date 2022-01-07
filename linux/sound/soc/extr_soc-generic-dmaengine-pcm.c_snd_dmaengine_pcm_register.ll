; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_snd_dmaengine_pcm_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_snd_dmaengine_pcm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_dmaengine_pcm_config = type { i64 }
%struct.dmaengine_pcm = type { i32, %struct.TYPE_2__, %struct.snd_dmaengine_pcm_config* }
%struct.TYPE_2__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dmaengine_pcm_component_process = common dso_local global i32 0, align 4
@dmaengine_pcm_component = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dmaengine_pcm_register(%struct.device* %0, %struct.snd_dmaengine_pcm_config* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snd_dmaengine_pcm_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmaengine_pcm*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.snd_dmaengine_pcm_config* %1, %struct.snd_dmaengine_pcm_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dmaengine_pcm* @kzalloc(i32 24, i32 %10)
  store %struct.dmaengine_pcm* %11, %struct.dmaengine_pcm** %8, align 8
  %12 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %8, align 8
  %13 = icmp ne %struct.dmaengine_pcm* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %19 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %8, align 8
  %20 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %19, i32 0, i32 2
  store %struct.snd_dmaengine_pcm_config* %18, %struct.snd_dmaengine_pcm_config** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %8, align 8
  %23 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %8, align 8
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %27 = call i32 @dmaengine_pcm_request_chan_of(%struct.dmaengine_pcm* %24, %struct.device* %25, %struct.snd_dmaengine_pcm_config* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %54

31:                                               ; preds = %17
  %32 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %33 = icmp ne %struct.snd_dmaengine_pcm_config* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %36 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %8, align 8
  %42 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %41, i32 0, i32 1
  %43 = call i32 @snd_soc_add_component(%struct.device* %40, %struct.TYPE_2__* %42, i32* @dmaengine_pcm_component_process, i32* null, i32 0)
  store i32 %43, i32* %9, align 4
  br label %49

44:                                               ; preds = %34, %31
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %8, align 8
  %47 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %46, i32 0, i32 1
  %48 = call i32 @snd_soc_add_component(%struct.device* %45, %struct.TYPE_2__* %47, i32* @dmaengine_pcm_component, i32* null, i32 0)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %54

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %60

54:                                               ; preds = %52, %30
  %55 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %8, align 8
  %56 = call i32 @dmaengine_pcm_release_chan(%struct.dmaengine_pcm* %55)
  %57 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %8, align 8
  %58 = call i32 @kfree(%struct.dmaengine_pcm* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %53, %14
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.dmaengine_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @dmaengine_pcm_request_chan_of(%struct.dmaengine_pcm*, %struct.device*, %struct.snd_dmaengine_pcm_config*) #1

declare dso_local i32 @snd_soc_add_component(%struct.device*, %struct.TYPE_2__*, i32*, i32*, i32) #1

declare dso_local i32 @dmaengine_pcm_release_chan(%struct.dmaengine_pcm*) #1

declare dso_local i32 @kfree(%struct.dmaengine_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
