; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_decoupled_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_decoupled_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.hdac_bus = type { i32 }
%struct.hdac_ext_stream = type { i32 }
%struct.hdac_stream = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @skl_decoupled_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_decoupled_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca %struct.hdac_ext_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hdac_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call %struct.hdac_bus* @get_bus_ctx(%struct.snd_pcm_substream* %11)
  store %struct.hdac_bus* %12, %struct.hdac_bus** %6, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = call %struct.hdac_ext_stream* @get_hdac_ext_stream(%struct.snd_pcm_substream* %13)
  store %struct.hdac_ext_stream* %14, %struct.hdac_ext_stream** %7, align 8
  %15 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %7, align 8
  %16 = call %struct.hdac_stream* @hdac_stream(%struct.hdac_ext_stream* %15)
  store %struct.hdac_stream* %16, %struct.hdac_stream** %10, align 8
  %17 = load %struct.hdac_stream*, %struct.hdac_stream** %10, align 8
  %18 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EPIPE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %28 [
    i32 130, label %26
    i32 132, label %26
    i32 131, label %26
    i32 133, label %27
    i32 128, label %27
    i32 129, label %27
  ]

26:                                               ; preds = %24, %24, %24
  store i32 1, i32* %8, align 4
  br label %31

27:                                               ; preds = %24, %24, %24
  store i32 0, i32* %8, align 4
  br label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %27, %26
  %32 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %33 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %32, i32 0, i32 0
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %7, align 8
  %40 = call %struct.hdac_stream* @hdac_stream(%struct.hdac_ext_stream* %39)
  %41 = call i32 @snd_hdac_stream_start(%struct.hdac_stream* %40, i32 1)
  %42 = load %struct.hdac_stream*, %struct.hdac_stream** %10, align 8
  %43 = call i32 @snd_hdac_stream_timecounter_init(%struct.hdac_stream* %42, i32 0)
  br label %48

44:                                               ; preds = %31
  %45 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %7, align 8
  %46 = call %struct.hdac_stream* @hdac_stream(%struct.hdac_ext_stream* %45)
  %47 = call i32 @snd_hdac_stream_stop(%struct.hdac_stream* %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %50 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %49, i32 0, i32 0
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %28, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.hdac_bus* @get_bus_ctx(%struct.snd_pcm_substream*) #1

declare dso_local %struct.hdac_ext_stream* @get_hdac_ext_stream(%struct.snd_pcm_substream*) #1

declare dso_local %struct.hdac_stream* @hdac_stream(%struct.hdac_ext_stream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_hdac_stream_start(%struct.hdac_stream*, i32) #1

declare dso_local i32 @snd_hdac_stream_timecounter_init(%struct.hdac_stream*, i32) #1

declare dso_local i32 @snd_hdac_stream_stop(%struct.hdac_stream*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
