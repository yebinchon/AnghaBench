; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.via82xx = type { %struct.TYPE_3__*, i64, i64, i64, %struct.via_rate_lock* }
%struct.TYPE_3__ = type { i32* }
%struct.via_rate_lock = type { i32, i32, i32 }
%struct.viadev = type { i64, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.viadev*, %struct.TYPE_4__ }

@snd_via82xx_hw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AC97_RATES_SPDIF = common dso_local global i64 0, align 8
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_CONTINUOUS = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_8000_48000 = common dso_local global i32 0, align 4
@AC97_RATES_ADC = common dso_local global i32 0, align 4
@AC97_RATES_FRONT_DAC = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_KNOT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*, %struct.viadev*, %struct.snd_pcm_substream*)* @snd_via82xx_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_pcm_open(%struct.via82xx* %0, %struct.viadev* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.via82xx*, align 8
  %6 = alloca %struct.viadev*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.via_rate_lock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.via82xx* %0, %struct.via82xx** %5, align 8
  store %struct.viadev* %1, %struct.viadev** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 1
  %18 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 4 bitcast (%struct.TYPE_4__* @snd_via82xx_hw to i8*), i64 12, i1 false)
  %19 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %20 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %19, i32 0, i32 4
  %21 = load %struct.via_rate_lock*, %struct.via_rate_lock** %20, align 8
  %22 = load %struct.viadev*, %struct.viadev** %6, align 8
  %23 = getelementptr inbounds %struct.viadev, %struct.viadev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %21, i64 %24
  store %struct.via_rate_lock* %25, %struct.via_rate_lock** %10, align 8
  %26 = load %struct.via_rate_lock*, %struct.via_rate_lock** %10, align 8
  %27 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.via_rate_lock*, %struct.via_rate_lock** %10, align 8
  %30 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %34 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %3
  %38 = load %struct.viadev*, %struct.viadev** %6, align 8
  %39 = getelementptr inbounds %struct.viadev, %struct.viadev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 48
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %44 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @AC97_RATES_SPDIF, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %55 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %54)
  br label %147

56:                                               ; preds = %37, %3
  %57 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %58 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load %struct.viadev*, %struct.viadev** %6, align 8
  %63 = getelementptr inbounds %struct.viadev, %struct.viadev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 64
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 48000, i32* %73, align 8
  %74 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 48000, i32* %76, align 4
  br label %146

77:                                               ; preds = %61, %56
  %78 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %79 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load %struct.viadev*, %struct.viadev** %6, align 8
  %84 = getelementptr inbounds %struct.viadev, %struct.viadev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %85, 64
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load i32, i32* @SNDRV_PCM_RATE_CONTINUOUS, align 4
  %89 = load i32, i32* @SNDRV_PCM_RATE_8000_48000, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 8000, i32* %96, align 4
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 48000, i32* %99, align 8
  store i32 1, i32* %11, align 4
  br label %145

100:                                              ; preds = %82, %77
  %101 = load %struct.via_rate_lock*, %struct.via_rate_lock** %10, align 8
  %102 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %130, label %105

105:                                              ; preds = %100
  %106 = load %struct.viadev*, %struct.viadev** %6, align 8
  %107 = getelementptr inbounds %struct.viadev, %struct.viadev* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @AC97_RATES_ADC, align 4
  br label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @AC97_RATES_FRONT_DAC, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %12, align 4
  %116 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %117 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %129 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %128)
  br label %144

130:                                              ; preds = %100
  %131 = load i32, i32* @SNDRV_PCM_RATE_KNOT, align 4
  %132 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %133 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load %struct.via_rate_lock*, %struct.via_rate_lock** %10, align 8
  %136 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %139 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %142 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i32 %137, i32* %143, align 8
  br label %144

144:                                              ; preds = %130, %114
  br label %145

145:                                              ; preds = %144, %87
  br label %146

146:                                              ; preds = %145, %66
  br label %147

147:                                              ; preds = %146, %42
  %148 = load %struct.via_rate_lock*, %struct.via_rate_lock** %10, align 8
  %149 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %148, i32 0, i32 1
  %150 = call i32 @spin_unlock_irq(i32* %149)
  %151 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %152 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %153 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %151, i32 %152)
  store i32 %153, i32* %9, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %4, align 4
  br label %175

157:                                              ; preds = %147
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %162 = call i32 @snd_pcm_hw_rule_noresample(%struct.snd_pcm_runtime* %161, i32 48000)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %4, align 4
  br label %175

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %157
  %169 = load %struct.viadev*, %struct.viadev** %6, align 8
  %170 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %171 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %170, i32 0, i32 0
  store %struct.viadev* %169, %struct.viadev** %171, align 8
  %172 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %173 = load %struct.viadev*, %struct.viadev** %6, align 8
  %174 = getelementptr inbounds %struct.viadev, %struct.viadev* %173, i32 0, i32 2
  store %struct.snd_pcm_substream* %172, %struct.snd_pcm_substream** %174, align 8
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %168, %165, %155
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #2

declare dso_local i32 @snd_pcm_hw_rule_noresample(%struct.snd_pcm_runtime*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
