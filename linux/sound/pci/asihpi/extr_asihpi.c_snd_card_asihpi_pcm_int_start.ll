; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_pcm_int_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_pcm_int_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.snd_card_asihpi_pcm = type { i32 }
%struct.snd_card_asihpi = type { i32, %struct.TYPE_5__*, i32, %struct.snd_card_asihpi_pcm* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@HPI_ADAPTER_PROPERTY_IRQ_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @snd_card_asihpi_pcm_int_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_card_asihpi_pcm_int_start(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_card_asihpi_pcm*, align 8
  %4 = alloca %struct.snd_card_asihpi*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.snd_card_asihpi_pcm*
  store %struct.snd_card_asihpi_pcm* %10, %struct.snd_card_asihpi_pcm** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = call %struct.snd_card_asihpi* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_card_asihpi* %12, %struct.snd_card_asihpi** %4, align 8
  %13 = call i32 (...) @in_interrupt()
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %16 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %15, i32 0, i32 2
  %17 = call i32 @tasklet_disable(i32* %16)
  %18 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %3, align 8
  %19 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %20 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %19, i32 0, i32 3
  store %struct.snd_card_asihpi_pcm* %18, %struct.snd_card_asihpi_pcm** %20, align 8
  %21 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %22 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %21, i32 0, i32 2
  %23 = call i32 @tasklet_enable(i32* %22)
  %24 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %25 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HPI_ADAPTER_PROPERTY_IRQ_RATE, align 4
  %32 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %33 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @hpi_adapter_set_property(i32 %30, i32 %31, i32 %34, i32 0)
  %36 = call i32 @hpi_handle_error(i32 %35)
  ret void
}

declare dso_local %struct.snd_card_asihpi* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @hpi_handle_error(i32) #1

declare dso_local i32 @hpi_adapter_set_property(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
