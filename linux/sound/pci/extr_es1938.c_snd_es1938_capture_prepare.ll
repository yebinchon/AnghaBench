; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.es1938 = type { i32, i32, i32 }

@ESS_CMD_ANALOGCONTROL = common dso_local global i32 0, align 4
@ADC1 = common dso_local global i32 0, align 4
@ESS_CMD_DMACNTRELOADL = common dso_local global i32 0, align 4
@ESS_CMD_DMACNTRELOADH = common dso_local global i32 0, align 4
@ESS_CMD_SETFORMAT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es1938_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1938_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.es1938*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = call %struct.es1938* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.es1938* %11, %struct.es1938** %3, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %4, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.es1938*, %struct.es1938** %3, align 8
  %21 = getelementptr inbounds %struct.es1938, %struct.es1938* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.es1938*, %struct.es1938** %3, align 8
  %26 = getelementptr inbounds %struct.es1938, %struct.es1938* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 1
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  store i32 %32, i32* %7, align 4
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_pcm_format_width(i32 %35)
  %37 = icmp eq i32 %36, 16
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 1
  store i32 %39, i32* %6, align 4
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_pcm_format_unsigned(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 2, %44
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load %struct.es1938*, %struct.es1938** %3, align 8
  %49 = getelementptr inbounds %struct.es1938, %struct.es1938* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.es1938*, %struct.es1938** %3, align 8
  %51 = call i32 @snd_es1938_reset_fifo(%struct.es1938* %50)
  %52 = load %struct.es1938*, %struct.es1938** %3, align 8
  %53 = load i32, i32* @ESS_CMD_ANALOGCONTROL, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 2, i32 1
  %58 = call i32 @snd_es1938_bits(%struct.es1938* %52, i32 %53, i32 3, i32 %57)
  %59 = load %struct.es1938*, %struct.es1938** %3, align 8
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %61 = load i32, i32* @ADC1, align 4
  %62 = call i32 @snd_es1938_rate_set(%struct.es1938* %59, %struct.snd_pcm_substream* %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = sub i32 65536, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.es1938*, %struct.es1938** %3, align 8
  %66 = load i32, i32* @ESS_CMD_DMACNTRELOADL, align 4
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 255
  %69 = call i32 @snd_es1938_write(%struct.es1938* %65, i32 %66, i32 %68)
  %70 = load %struct.es1938*, %struct.es1938** %3, align 8
  %71 = load i32, i32* @ESS_CMD_DMACNTRELOADH, align 4
  %72 = load i32, i32* %9, align 4
  %73 = lshr i32 %72, 8
  %74 = call i32 @snd_es1938_write(%struct.es1938* %70, i32 %71, i32 %73)
  %75 = load %struct.es1938*, %struct.es1938** %3, align 8
  %76 = load i32, i32* @ESS_CMD_SETFORMAT2, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 81, i32 113
  %81 = call i32 @snd_es1938_write(%struct.es1938* %75, i32 %76, i32 %80)
  %82 = load %struct.es1938*, %struct.es1938** %3, align 8
  %83 = load i32, i32* @ESS_CMD_SETFORMAT2, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 0, i32 32
  %88 = or i32 144, %87
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 0, i32 4
  %93 = or i32 %88, %92
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 64, i32 8
  %98 = or i32 %93, %97
  %99 = call i32 @snd_es1938_write(%struct.es1938* %82, i32 %83, i32 %98)
  %100 = load %struct.es1938*, %struct.es1938** %3, align 8
  %101 = call i32 @snd_es1938_capture_setdma(%struct.es1938* %100)
  ret i32 0
}

declare dso_local %struct.es1938* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_pcm_format_unsigned(i32) #1

declare dso_local i32 @snd_es1938_reset_fifo(%struct.es1938*) #1

declare dso_local i32 @snd_es1938_bits(%struct.es1938*, i32, i32, i32) #1

declare dso_local i32 @snd_es1938_rate_set(%struct.es1938*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_es1938_write(%struct.es1938*, i32, i32) #1

declare dso_local i32 @snd_es1938_capture_setdma(%struct.es1938*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
