; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.intel8x0 = type { i64 }
%struct.ichdev = type { i64, i32, i32, i32, i32 }

@ICHD_PCMOUT = common dso_local global i64 0, align 8
@DEVICE_INTEL_ICH4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_intel8x0_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.intel8x0*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.ichdev*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.intel8x0* %7, %struct.intel8x0** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = call %struct.ichdev* @get_ichdev(%struct.snd_pcm_substream* %11)
  store %struct.ichdev* %12, %struct.ichdev** %5, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %17 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %18)
  %20 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %21 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %22)
  %24 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %25 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %27 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ICHD_PCMOUT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %1
  %32 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %34 = call i32 @snd_intel8x0_setup_pcm_out(%struct.intel8x0* %32, %struct.snd_pcm_runtime* %33)
  %35 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %36 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DEVICE_INTEL_ICH4, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 16
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 2, i32 1
  %47 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %48 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %40, %31
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %52 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %53 = call i32 @snd_intel8x0_setup_periods(%struct.intel8x0* %51, %struct.ichdev* %52)
  ret i32 0
}

declare dso_local %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.ichdev* @get_ichdev(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_intel8x0_setup_pcm_out(%struct.intel8x0*, %struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_intel8x0_setup_periods(%struct.intel8x0*, %struct.ichdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
