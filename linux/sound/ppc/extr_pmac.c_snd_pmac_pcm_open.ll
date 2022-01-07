; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32, i32, i32, i64, i32, i32* }
%struct.pmac_stream = type { %struct.TYPE_4__, i32, %struct.snd_pcm_substream* }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_3__, %struct.pmac_stream* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }

@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@snd_pmac_hw_rule_format = common dso_local global i32 0, align 4
@snd_pmac_hw_rule_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pmac*, %struct.pmac_stream*, %struct.snd_pcm_substream*)* @snd_pmac_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pmac_pcm_open(%struct.snd_pmac* %0, %struct.pmac_stream* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.snd_pmac*, align 8
  %5 = alloca %struct.pmac_stream*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %4, align 8
  store %struct.pmac_stream* %1, %struct.pmac_stream** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %7, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 5
  store i32 0, i32* %14, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %44, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %15
  %22 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %23 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %21
  %30 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_pcm_rate_to_rate_bit(i32 %36)
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %29, %21
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %15

47:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %51 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %48
  %55 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %64 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 4
  br label %77

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %48

77:                                               ; preds = %62, %48
  %78 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %79 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %105, %77
  %83 = load i32, i32* %8, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %82
  %86 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %87 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 1, %89
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %85
  %94 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %95 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 8
  br label %108

104:                                              ; preds = %85
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %8, align 4
  br label %82

108:                                              ; preds = %93, %82
  %109 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %110 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 4
  %115 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %116 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %108
  %120 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %121 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %126 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %127 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %125
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %124, %119
  %132 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %133 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %134 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %131, %108
  %139 = load %struct.pmac_stream*, %struct.pmac_stream** %5, align 8
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %140, i32 0, i32 1
  store %struct.pmac_stream* %139, %struct.pmac_stream** %141, align 8
  %142 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %143 = load %struct.pmac_stream*, %struct.pmac_stream** %5, align 8
  %144 = getelementptr inbounds %struct.pmac_stream, %struct.pmac_stream* %143, i32 0, i32 2
  store %struct.snd_pcm_substream* %142, %struct.snd_pcm_substream** %144, align 8
  %145 = load %struct.pmac_stream*, %struct.pmac_stream** %5, align 8
  %146 = getelementptr inbounds %struct.pmac_stream, %struct.pmac_stream* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %148, 1
  %150 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %151 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i64 %149, i64* %152, align 8
  %153 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %154 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %155 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %153, i32 %154)
  ret i32 0
}

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
