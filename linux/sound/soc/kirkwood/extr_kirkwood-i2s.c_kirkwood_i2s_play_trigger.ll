; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_play_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_play_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32, i32 }
%struct.kirkwood_dma_data = type { i32, i64 }

@KIRKWOOD_PLAYCTL = common dso_local global i64 0, align 8
@KIRKWOOD_PLAYCTL_ENABLE_MASK = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_PLAY_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"timed out waiting for busy to deassert: %08x\0A\00", align 1
@KIRKWOOD_PLAYCTL_SPDIF_EN = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_I2S_EN = common dso_local global i32 0, align 4
@KIRKWOOD_INT_MASK = common dso_local global i64 0, align 8
@KIRKWOOD_INT_CAUSE_PLAY_BYTES = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_PAUSE = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_I2S_MUTE = common dso_local global i32 0, align 4
@KIRKWOOD_PLAYCTL_SPDIF_MUTE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @kirkwood_i2s_play_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_i2s_play_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca %struct.kirkwood_dma_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %8, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = call %struct.kirkwood_dma_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %16)
  store %struct.kirkwood_dma_data* %17, %struct.kirkwood_dma_data** %9, align 8
  %18 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %19 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KIRKWOOD_PLAYCTL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @KIRKWOOD_PLAYCTL_ENABLE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %3
  store i32 5000, i32* %12, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %32 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @KIRKWOOD_PLAYCTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @KIRKWOOD_PLAYCTL_PLAY_BUSY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  br label %50

44:                                               ; preds = %29
  %45 = call i32 @udelay(i32 1)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %12, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %12, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %29, label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @KIRKWOOD_PLAYCTL_PLAY_BUSY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %59 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @dev_notice(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %50
  br label %64

64:                                               ; preds = %63, %3
  %65 = load i32, i32* %6, align 4
  switch i32 %65, label %203 [
    i32 130, label %66
    i32 129, label %127
    i32 133, label %170
    i32 128, label %170
    i32 131, label %185
    i32 132, label %185
  ]

66:                                               ; preds = %64
  %67 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %68 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %10, align 4
  %70 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i32, i32* @KIRKWOOD_PLAYCTL_SPDIF_EN, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %84

79:                                               ; preds = %66
  %80 = load i32, i32* @KIRKWOOD_PLAYCTL_I2S_EN, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %10, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @kirkwood_i2s_play_mute(i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @KIRKWOOD_PLAYCTL_ENABLE_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %93 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @KIRKWOOD_PLAYCTL, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %91, i64 %96)
  %98 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %119, label %102

102:                                              ; preds = %84
  %103 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %104 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @KIRKWOOD_INT_MASK, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @readl(i64 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* @KIRKWOOD_INT_CAUSE_PLAY_BYTES, align 4
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %114 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @KIRKWOOD_INT_MASK, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  br label %119

119:                                              ; preds = %102, %84
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %122 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @KIRKWOOD_PLAYCTL, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %120, i64 %125)
  br label %206

127:                                              ; preds = %64
  %128 = load i32, i32* @KIRKWOOD_PLAYCTL_PAUSE, align 4
  %129 = load i32, i32* @KIRKWOOD_PLAYCTL_I2S_MUTE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @KIRKWOOD_PLAYCTL_SPDIF_MUTE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %137 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @KIRKWOOD_PLAYCTL, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %135, i64 %140)
  %142 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %143 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @KIRKWOOD_INT_MASK, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @readl(i64 %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* @KIRKWOOD_INT_CAUSE_PLAY_BYTES, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %154 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @KIRKWOOD_INT_MASK, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @writel(i32 %152, i64 %157)
  %159 = load i32, i32* @KIRKWOOD_PLAYCTL_ENABLE_MASK, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %10, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %165 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @KIRKWOOD_PLAYCTL, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @writel(i32 %163, i64 %168)
  br label %206

170:                                              ; preds = %64, %64
  %171 = load i32, i32* @KIRKWOOD_PLAYCTL_PAUSE, align 4
  %172 = load i32, i32* @KIRKWOOD_PLAYCTL_I2S_MUTE, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @KIRKWOOD_PLAYCTL_SPDIF_MUTE, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* %10, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %180 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @KIRKWOOD_PLAYCTL, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 %178, i64 %183)
  br label %206

185:                                              ; preds = %64, %64
  %186 = load i32, i32* @KIRKWOOD_PLAYCTL_PAUSE, align 4
  %187 = load i32, i32* @KIRKWOOD_PLAYCTL_I2S_MUTE, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @KIRKWOOD_PLAYCTL_SPDIF_MUTE, align 4
  %190 = or i32 %188, %189
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %10, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @kirkwood_i2s_play_mute(i32 %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %9, align 8
  %198 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @KIRKWOOD_PLAYCTL, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @writel(i32 %196, i64 %201)
  br label %206

203:                                              ; preds = %64
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %4, align 4
  br label %207

206:                                              ; preds = %185, %170, %127, %119
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %206, %203
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local %struct.kirkwood_dma_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_notice(i32, i8*, i32) #1

declare dso_local i32 @kirkwood_i2s_play_mute(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
