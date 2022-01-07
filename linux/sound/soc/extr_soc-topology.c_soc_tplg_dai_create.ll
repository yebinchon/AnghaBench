; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dai_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dai_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_soc_tplg_pcm = type { i64, %struct.snd_soc_tplg_stream_caps*, i64, i64, i32, i32 }
%struct.snd_soc_tplg_stream_caps = type { i32 }
%struct.snd_soc_dai_driver = type { %struct.TYPE_3__, %struct.snd_soc_dai_driver*, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.snd_soc_pcm_stream = type { %struct.snd_soc_dai_driver* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SND_SOC_TPLG_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SND_SOC_TPLG_STREAM_CAPTURE = common dso_local global i64 0, align 8
@snd_soc_new_compress = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ASoC: DAI loading failed\0A\00", align 1
@SND_SOC_DOBJ_PCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_pcm*)* @soc_tplg_dai_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_dai_create(%struct.soc_tplg* %0, %struct.snd_soc_tplg_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_pcm*, align 8
  %6 = alloca %struct.snd_soc_dai_driver*, align 8
  %7 = alloca %struct.snd_soc_pcm_stream*, align 8
  %8 = alloca %struct.snd_soc_tplg_stream_caps*, align 8
  %9 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_pcm* %1, %struct.snd_soc_tplg_pcm** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.snd_soc_dai_driver* @kzalloc(i32 48, i32 %10)
  store %struct.snd_soc_dai_driver* %11, %struct.snd_soc_dai_driver** %6, align 8
  %12 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %13 = icmp eq %struct.snd_soc_dai_driver* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %139

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strlen(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.snd_soc_dai_driver* @kstrdup(i32 %26, i32 %27)
  %29 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %29, i32 0, i32 1
  store %struct.snd_soc_dai_driver* %28, %struct.snd_soc_dai_driver** %30, align 8
  br label %31

31:                                               ; preds = %23, %17
  %32 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %5, align 8
  %33 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %5, align 8
  %39 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %43, i32 0, i32 3
  store %struct.snd_soc_pcm_stream* %44, %struct.snd_soc_pcm_stream** %7, align 8
  %45 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %5, align 8
  %46 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %45, i32 0, i32 1
  %47 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %46, align 8
  %48 = load i64, i64* @SND_SOC_TPLG_STREAM_PLAYBACK, align 8
  %49 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %47, i64 %48
  store %struct.snd_soc_tplg_stream_caps* %49, %struct.snd_soc_tplg_stream_caps** %8, align 8
  %50 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %7, align 8
  %51 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %8, align 8
  %52 = call i32 @set_stream_info(%struct.snd_soc_pcm_stream* %50, %struct.snd_soc_tplg_stream_caps* %51)
  br label %53

53:                                               ; preds = %42, %31
  %54 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %5, align 8
  %55 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %60 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %59, i32 0, i32 2
  store %struct.snd_soc_pcm_stream* %60, %struct.snd_soc_pcm_stream** %7, align 8
  %61 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %5, align 8
  %62 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %61, i32 0, i32 1
  %63 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %62, align 8
  %64 = load i64, i64* @SND_SOC_TPLG_STREAM_CAPTURE, align 8
  %65 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %63, i64 %64
  store %struct.snd_soc_tplg_stream_caps* %65, %struct.snd_soc_tplg_stream_caps** %8, align 8
  %66 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %7, align 8
  %67 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %8, align 8
  %68 = call i32 @set_stream_info(%struct.snd_soc_pcm_stream* %66, %struct.snd_soc_tplg_stream_caps* %67)
  br label %69

69:                                               ; preds = %58, %53
  %70 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %5, align 8
  %71 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @snd_soc_new_compress, align 4
  %76 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %77 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %80 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %81 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %5, align 8
  %82 = call i32 @soc_tplg_dai_load(%struct.soc_tplg* %79, %struct.snd_soc_dai_driver* %80, %struct.snd_soc_tplg_pcm* %81, i32* null)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %78
  %86 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %87 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %93 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %93, i32 0, i32 0
  %95 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %94, align 8
  %96 = call i32 @kfree(%struct.snd_soc_dai_driver* %95)
  %97 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %98 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %98, i32 0, i32 0
  %100 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %99, align 8
  %101 = call i32 @kfree(%struct.snd_soc_dai_driver* %100)
  %102 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %103 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %102, i32 0, i32 1
  %104 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %103, align 8
  %105 = call i32 @kfree(%struct.snd_soc_dai_driver* %104)
  %106 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %107 = call i32 @kfree(%struct.snd_soc_dai_driver* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  br label %139

109:                                              ; preds = %78
  %110 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %111 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %114 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  store i32 %112, i32* %115, align 4
  %116 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %117 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %120 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  %122 = load i32, i32* @SND_SOC_DOBJ_PCM, align 4
  %123 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %124 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %127 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %130 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @list_add(i32* %128, i32* %132)
  %134 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %135 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %138 = call i32 @snd_soc_register_dai(%struct.TYPE_4__* %136, %struct.snd_soc_dai_driver* %137)
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %109, %85, %14
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.snd_soc_dai_driver* @kzalloc(i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local %struct.snd_soc_dai_driver* @kstrdup(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_stream_info(%struct.snd_soc_pcm_stream*, %struct.snd_soc_tplg_stream_caps*) #1

declare dso_local i32 @soc_tplg_dai_load(%struct.soc_tplg*, %struct.snd_soc_dai_driver*, %struct.snd_soc_tplg_pcm*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.snd_soc_dai_driver*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @snd_soc_register_dai(%struct.TYPE_4__*, %struct.snd_soc_dai_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
