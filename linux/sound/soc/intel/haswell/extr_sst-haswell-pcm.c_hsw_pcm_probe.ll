; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.snd_soc_component = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.hsw_priv_data = type { i32**, %struct.TYPE_6__**, i32, i32, %struct.device*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sst_pdata = type { i32, %struct.device* }

@ENODEV = common dso_local global i32 0, align 4
@HSW_PM_STATE_D0 = common dso_local global i32 0, align 4
@hsw_dais = common dso_local global %struct.TYPE_9__* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SST_RUNTIME_SUSPEND_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @hsw_pcm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_pcm_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.hsw_priv_data*, align 8
  %5 = alloca %struct.sst_pdata*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.hsw_priv_data* %11, %struct.hsw_priv_data** %4, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %12, i32 0, i32 1
  %14 = load %struct.device*, %struct.device** %13, align 8
  %15 = call %struct.sst_pdata* @dev_get_platdata(%struct.device* %14)
  store %struct.sst_pdata* %15, %struct.sst_pdata** %5, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %17 = icmp ne %struct.sst_pdata* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %193

21:                                               ; preds = %1
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 1
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %7, align 8
  %25 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %26 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %25, i32 0, i32 1
  %27 = load %struct.device*, %struct.device** %26, align 8
  store %struct.device* %27, %struct.device** %6, align 8
  %28 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %29 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %4, align 8
  %32 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %4, align 8
  %35 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %34, i32 0, i32 4
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load i32, i32* @HSW_PM_STATE_D0, align 4
  %37 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %4, align 8
  %38 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %4, align 8
  %43 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %124, %21
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hsw_dais, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %46)
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %127

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hsw_dais, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %49
  %59 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %4, align 8
  %60 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @mutex_init(i32* %68)
  %70 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %4, align 8
  %74 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = call i32 @snd_dma_alloc_pages(i32 %70, %struct.device* %71, i32 %72, i32* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %58
  br label %143

85:                                               ; preds = %58
  br label %86

86:                                               ; preds = %85, %49
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hsw_dais, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %123

95:                                               ; preds = %86
  %96 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %4, align 8
  %97 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %98, i64 %100
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = call i32 @mutex_init(i32* %105)
  %107 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = load i32, i32* @PAGE_SIZE, align 4
  %110 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %4, align 8
  %111 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %110, i32 0, i32 0
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = call i32 @snd_dma_alloc_pages(i32 %107, %struct.device* %108, i32 %109, i32* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %95
  br label %143

122:                                              ; preds = %95
  br label %123

123:                                              ; preds = %122, %86
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %44

127:                                              ; preds = %44
  %128 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %4, align 8
  %129 = call i32 @hsw_pcm_create_modules(%struct.hsw_priv_data* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %143

133:                                              ; preds = %127
  %134 = load %struct.device*, %struct.device** %7, align 8
  %135 = load i32, i32* @SST_RUNTIME_SUSPEND_DELAY, align 4
  %136 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %134, i32 %135)
  %137 = load %struct.device*, %struct.device** %7, align 8
  %138 = call i32 @pm_runtime_use_autosuspend(%struct.device* %137)
  %139 = load %struct.device*, %struct.device** %7, align 8
  %140 = call i32 @pm_runtime_enable(%struct.device* %139)
  %141 = load %struct.device*, %struct.device** %7, align 8
  %142 = call i32 @pm_runtime_idle(%struct.device* %141)
  store i32 0, i32* %2, align 4
  br label %193

143:                                              ; preds = %132, %121, %84
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %188, %143
  %147 = load i32, i32* %8, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %191

149:                                              ; preds = %146
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hsw_dais, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %149
  %159 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %4, align 8
  %160 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %159, i32 0, i32 0
  %161 = load i32**, i32*** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = call i32 @snd_dma_free_pages(i32* %166)
  br label %168

168:                                              ; preds = %158, %149
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hsw_dais, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %168
  %178 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %4, align 8
  %179 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %178, i32 0, i32 0
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = call i32 @snd_dma_free_pages(i32* %185)
  br label %187

187:                                              ; preds = %177, %168
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %8, align 4
  br label %146

191:                                              ; preds = %146
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %191, %133, %18
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local %struct.hsw_priv_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.sst_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, %struct.device*, i32, i32*) #1

declare dso_local i32 @hsw_pcm_create_modules(%struct.hsw_priv_data*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_idle(%struct.device*) #1

declare dso_local i32 @snd_dma_free_pages(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
