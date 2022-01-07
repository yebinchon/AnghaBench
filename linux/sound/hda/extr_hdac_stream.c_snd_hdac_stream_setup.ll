; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_stream = type { i32, i32, i32, i32, i64, %struct.TYPE_5__, i64, i64, %struct.TYPE_4__*, %struct.hdac_bus* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.hdac_bus = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i64 }

@SD_CTL = common dso_local global i32 0, align 4
@SD_CTL_STREAM_TAG_MASK = common dso_local global i32 0, align 4
@SD_CTL_STREAM_TAG_SHIFT = common dso_local global i32 0, align 4
@SD_CTL_TRAFFIC_PRIO = common dso_local global i32 0, align 4
@SD_CBL = common dso_local global i32 0, align 4
@SD_FORMAT = common dso_local global i32 0, align 4
@SD_LVI = common dso_local global i32 0, align 4
@SD_BDLPL = common dso_local global i32 0, align 4
@SD_BDLPU = common dso_local global i32 0, align 4
@DPLBASE = common dso_local global i32 0, align 4
@AZX_DPLBASE_ENABLE = common dso_local global i32 0, align 4
@SD_INT_MASK = common dso_local global i32 0, align 4
@SD_FIFOSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_stream_setup(%struct.hdac_stream* %0) #0 {
  %2 = alloca %struct.hdac_stream*, align 8
  %3 = alloca %struct.hdac_bus*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  store %struct.hdac_stream* %0, %struct.hdac_stream** %2, align 8
  %6 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %7 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %6, i32 0, i32 9
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  store %struct.hdac_bus* %8, %struct.hdac_bus** %3, align 8
  %9 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %10 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %9, i32 0, i32 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %15 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %14, i32 0, i32 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %4, align 8
  br label %20

19:                                               ; preds = %1
  store %struct.snd_pcm_runtime* null, %struct.snd_pcm_runtime** %4, align 8
  br label %20

20:                                               ; preds = %19, %13
  %21 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %22 = call i32 @snd_hdac_stream_clear(%struct.hdac_stream* %21)
  %23 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %24 = load i32, i32* @SD_CTL, align 4
  %25 = call i32 @snd_hdac_stream_readl(%struct.hdac_stream* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SD_CTL_STREAM_TAG_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %31 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SD_CTL_STREAM_TAG_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %29, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %37 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %20
  %41 = load i32, i32* @SD_CTL_TRAFFIC_PRIO, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %20
  %45 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %46 = load i32, i32* @SD_CTL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @snd_hdac_stream_writel(%struct.hdac_stream* %45, i32 %46, i32 %47)
  %49 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %50 = load i32, i32* @SD_CBL, align 4
  %51 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %52 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @snd_hdac_stream_writel(%struct.hdac_stream* %49, i32 %50, i32 %53)
  %55 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %56 = load i32, i32* @SD_FORMAT, align 4
  %57 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %58 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @snd_hdac_stream_writew(%struct.hdac_stream* %55, i32 %56, i64 %59)
  %61 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %62 = load i32, i32* @SD_LVI, align 4
  %63 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %64 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 1
  %67 = call i32 @snd_hdac_stream_writew(%struct.hdac_stream* %61, i32 %62, i64 %66)
  %68 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %69 = load i32, i32* @SD_BDLPL, align 4
  %70 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %71 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @snd_hdac_stream_writel(%struct.hdac_stream* %68, i32 %69, i32 %74)
  %76 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %77 = load i32, i32* @SD_BDLPU, align 4
  %78 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %79 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @upper_32_bits(i64 %81)
  %83 = call i32 @snd_hdac_stream_writel(%struct.hdac_stream* %76, i32 %77, i32 %82)
  %84 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %85 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %44
  %89 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %90 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %88
  %95 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %96 = load i32, i32* @DPLBASE, align 4
  %97 = call i32 @snd_hdac_chip_readl(%struct.hdac_bus* %95, i32 %96)
  %98 = load i32, i32* @AZX_DPLBASE_ENABLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %94
  %102 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %103 = load i32, i32* @DPLBASE, align 4
  %104 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %105 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* @AZX_DPLBASE_ENABLE, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @snd_hdac_chip_writel(%struct.hdac_bus* %102, i32 %103, i32 %110)
  br label %112

112:                                              ; preds = %101, %94
  br label %113

113:                                              ; preds = %112, %88, %44
  %114 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %115 = load i32, i32* @SD_CTL, align 4
  %116 = load i32, i32* @SD_INT_MASK, align 4
  %117 = call i32 @snd_hdac_stream_updatel(%struct.hdac_stream* %114, i32 %115, i32 0, i32 %116)
  %118 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %119 = load i32, i32* @SD_FIFOSIZE, align 4
  %120 = call i64 @snd_hdac_stream_readw(%struct.hdac_stream* %118, i32 %119)
  %121 = add nsw i64 %120, 1
  %122 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %123 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %122, i32 0, i32 4
  store i64 %121, i64* %123, align 8
  %124 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %125 = icmp ne %struct.snd_pcm_runtime* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %113
  %127 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %128 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 64
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %133 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %132, i32 64)
  %134 = sub nsw i32 0, %133
  %135 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %136 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  br label %140

137:                                              ; preds = %126, %113
  %138 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %139 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %138, i32 0, i32 3
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %131
  %141 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %142 = icmp ne %struct.snd_pcm_runtime* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %145 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %146, 24000
  %148 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %149 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sdiv i32 %147, %150
  %152 = mul nsw i32 %151, 1000
  %153 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %154 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %143, %140
  ret i32 0
}

declare dso_local i32 @snd_hdac_stream_clear(%struct.hdac_stream*) #1

declare dso_local i32 @snd_hdac_stream_readl(%struct.hdac_stream*, i32) #1

declare dso_local i32 @snd_hdac_stream_writel(%struct.hdac_stream*, i32, i32) #1

declare dso_local i32 @snd_hdac_stream_writew(%struct.hdac_stream*, i32, i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @snd_hdac_chip_readl(%struct.hdac_bus*, i32) #1

declare dso_local i32 @snd_hdac_chip_writel(%struct.hdac_bus*, i32, i32) #1

declare dso_local i32 @snd_hdac_stream_updatel(%struct.hdac_stream*, i32, i32, i32) #1

declare dso_local i64 @snd_hdac_stream_readw(%struct.hdac_stream*, i32) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
