; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_pcm_int_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_pcm_int_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_card_asihpi = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HPI_ADAPTER_PROPERTY_IRQ_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @snd_card_asihpi_pcm_int_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_card_asihpi_pcm_int_stop(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_card_asihpi*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.snd_card_asihpi* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.snd_card_asihpi* %5, %struct.snd_card_asihpi** %3, align 8
  %6 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %7 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HPI_ADAPTER_PROPERTY_IRQ_RATE, align 4
  %14 = call i32 @hpi_adapter_set_property(i32 %12, i32 %13, i32 0, i32 0)
  %15 = call i32 @hpi_handle_error(i32 %14)
  %16 = call i64 (...) @in_interrupt()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %20 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %23 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %22, i32 0, i32 0
  %24 = call i32 @tasklet_disable(i32* %23)
  %25 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %26 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %28 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %27, i32 0, i32 0
  %29 = call i32 @tasklet_enable(i32* %28)
  br label %30

30:                                               ; preds = %21, %18
  ret void
}

declare dso_local %struct.snd_card_asihpi* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @hpi_handle_error(i32) #1

declare dso_local i32 @hpi_adapter_set_property(i32, i32, i32, i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
