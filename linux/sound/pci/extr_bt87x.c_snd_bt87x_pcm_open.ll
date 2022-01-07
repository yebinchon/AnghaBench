; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.snd_pcm_runtime* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_bt87x = type { i32, %struct.snd_pcm_substream* }

@EBUSY = common dso_local global i32 0, align 4
@DEVICE_DIGITAL = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_bt87x_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_bt87x*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_bt87x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_bt87x* %8, %struct.snd_bt87x** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_bt87x*, %struct.snd_bt87x** %4, align 8
  %13 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %12, i32 0, i32 0
  %14 = call i64 @test_and_set_bit(i32 0, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %56

19:                                               ; preds = %1
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DEVICE_DIGITAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.snd_bt87x*, %struct.snd_bt87x** %4, align 8
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %30 = call i32 @snd_bt87x_set_digital_hw(%struct.snd_bt87x* %28, %struct.snd_pcm_runtime* %29)
  store i32 %30, i32* %6, align 4
  br label %35

31:                                               ; preds = %19
  %32 = load %struct.snd_bt87x*, %struct.snd_bt87x** %4, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %34 = call i32 @snd_bt87x_set_analog_hw(%struct.snd_bt87x* %32, %struct.snd_pcm_runtime* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %50

39:                                               ; preds = %35
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %41 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %42 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %50

46:                                               ; preds = %39
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %48 = load %struct.snd_bt87x*, %struct.snd_bt87x** %4, align 8
  %49 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %48, i32 0, i32 1
  store %struct.snd_pcm_substream* %47, %struct.snd_pcm_substream** %49, align 8
  store i32 0, i32* %2, align 4
  br label %56

50:                                               ; preds = %45, %38
  %51 = load %struct.snd_bt87x*, %struct.snd_bt87x** %4, align 8
  %52 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %51, i32 0, i32 0
  %53 = call i32 @clear_bit(i32 0, i32* %52)
  %54 = call i32 (...) @smp_mb__after_atomic()
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %46, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.snd_bt87x* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @snd_bt87x_set_digital_hw(%struct.snd_bt87x*, %struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_bt87x_set_analog_hw(%struct.snd_bt87x*, %struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
