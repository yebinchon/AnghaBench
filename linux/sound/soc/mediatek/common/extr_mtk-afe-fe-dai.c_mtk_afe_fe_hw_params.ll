; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-fe-dai.c_mtk_afe_fe_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-fe-dai.c_mtk_afe_fe_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_5__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { i32 (%struct.snd_pcm_substream*, i32)*, i32, %struct.mtk_base_afe_memif* }
%struct.mtk_base_afe_memif = type { %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i32, i32, i64 }

@AFE_BASE_END_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_afe_fe_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.mtk_base_afe*, align 8
  %10 = alloca %struct.mtk_base_afe_memif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  store %struct.snd_soc_pcm_runtime* %17, %struct.snd_soc_pcm_runtime** %8, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %18)
  store %struct.mtk_base_afe* %19, %struct.mtk_base_afe** %9, align 8
  %20 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %9, align 8
  %21 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %20, i32 0, i32 2
  %22 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %21, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %22, i64 %27
  store %struct.mtk_base_afe_memif* %28, %struct.mtk_base_afe_memif** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %31 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %30)
  %32 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %29, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %177

37:                                               ; preds = %3
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @upper_32_bits(i32 %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %11, align 4
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @lower_32_bits(i32 %51)
  %53 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %54 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %61 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %9, align 8
  %63 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %66 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %71 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @mtk_regmap_write(i32 %64, i64 %69, i64 %72)
  %74 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %9, align 8
  %75 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %78 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AFE_BASE_END_OFFSET, align 8
  %83 = add nsw i64 %81, %82
  %84 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %85 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %88 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = sub nsw i64 %90, 1
  %92 = call i32 @mtk_regmap_write(i32 %76, i64 %83, i64 %91)
  %93 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %9, align 8
  %94 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %97 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %103 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @mtk_regmap_update_bits(i32 %95, i32 %100, i32 1, i32 %101, i64 %106)
  %108 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %109 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %37
  %115 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %116 = call i32 @params_channels(%struct.snd_pcm_hw_params* %115)
  %117 = icmp eq i32 %116, 1
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  store i32 %119, i32* %14, align 4
  %120 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %9, align 8
  %121 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %124 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %130 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @mtk_regmap_update_bits(i32 %122, i32 %127, i32 1, i32 %128, i64 %133)
  br label %135

135:                                              ; preds = %114, %37
  %136 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %137 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  store i32 0, i32* %4, align 4
  br label %177

143:                                              ; preds = %135
  %144 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %9, align 8
  %145 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %144, i32 0, i32 0
  %146 = load i32 (%struct.snd_pcm_substream*, i32)*, i32 (%struct.snd_pcm_substream*, i32)** %145, align 8
  %147 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %148 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %149 = call i32 @params_rate(%struct.snd_pcm_hw_params* %148)
  %150 = call i32 %146(%struct.snd_pcm_substream* %147, i32 %149)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %143
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %177

156:                                              ; preds = %143
  %157 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %9, align 8
  %158 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %161 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %166 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %10, align 8
  %172 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %171, i32 0, i32 0
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @mtk_regmap_update_bits(i32 %159, i32 %164, i32 %169, i32 %170, i64 %175)
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %156, %153, %142, %35
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i64 @lower_32_bits(i32) #1

declare dso_local i32 @mtk_regmap_write(i32, i64, i64) #1

declare dso_local i32 @mtk_regmap_update_bits(i32, i32, i32, i32, i64) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
