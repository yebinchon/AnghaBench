; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_rec_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_rec_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.kirkwood_dma_data = type { i32, i64 }

@KIRKWOOD_RECCTL = common dso_local global i64 0, align 8
@KIRKWOOD_RECCTL_SPDIF_EN = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_I2S_EN = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_ENABLE_MASK = common dso_local global i32 0, align 4
@KIRKWOOD_INT_MASK = common dso_local global i64 0, align 8
@KIRKWOOD_INT_CAUSE_REC_BYTES = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_PAUSE = common dso_local global i32 0, align 4
@KIRKWOOD_RECCTL_MUTE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @kirkwood_i2s_rec_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_i2s_rec_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.kirkwood_dma_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = call %struct.kirkwood_dma_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.kirkwood_dma_data* %12, %struct.kirkwood_dma_data** %8, align 8
  %13 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %14 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %165 [
    i32 130, label %20
    i32 129, label %73
    i32 133, label %126
    i32 128, label %126
    i32 131, label %145
    i32 132, label %145
  ]

20:                                               ; preds = %3
  %21 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %22 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32, i32* @KIRKWOOD_RECCTL_SPDIF_EN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %38

33:                                               ; preds = %20
  %34 = load i32, i32* @KIRKWOOD_RECCTL_I2S_EN, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @KIRKWOOD_RECCTL_ENABLE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %45 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %51 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @KIRKWOOD_INT_MASK, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @KIRKWOOD_INT_CAUSE_REC_BYTES, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %61 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @KIRKWOOD_INT_MASK, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %68 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  br label %168

73:                                               ; preds = %3
  %74 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %75 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl(i64 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @KIRKWOOD_RECCTL_PAUSE, align 4
  %81 = load i32, i32* @KIRKWOOD_RECCTL_MUTE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %87 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %93 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @KIRKWOOD_INT_MASK, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @readl(i64 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* @KIRKWOOD_INT_CAUSE_REC_BYTES, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %104 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @KIRKWOOD_INT_MASK, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  %109 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %110 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @readl(i64 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* @KIRKWOOD_RECCTL_ENABLE_MASK, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %121 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %119, i64 %124)
  br label %168

126:                                              ; preds = %3, %3
  %127 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %128 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @readl(i64 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* @KIRKWOOD_RECCTL_PAUSE, align 4
  %134 = load i32, i32* @KIRKWOOD_RECCTL_MUTE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %140 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writel(i32 %138, i64 %143)
  br label %168

145:                                              ; preds = %3, %3
  %146 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %147 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @readl(i64 %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* @KIRKWOOD_RECCTL_PAUSE, align 4
  %153 = load i32, i32* @KIRKWOOD_RECCTL_MUTE, align 4
  %154 = or i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %10, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %8, align 8
  %160 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writel(i32 %158, i64 %163)
  br label %168

165:                                              ; preds = %3
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %4, align 4
  br label %169

168:                                              ; preds = %145, %126, %73, %38
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %165
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local %struct.kirkwood_dma_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
