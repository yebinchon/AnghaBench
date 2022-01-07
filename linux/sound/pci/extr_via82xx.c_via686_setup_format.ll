; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_via686_setup_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_via686_setup_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i32 }
%struct.viadev = type { i32 }
%struct.snd_pcm_runtime = type { i64, i32 }

@VIA_REG_TYPE_AUTOSTART = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8
@VIA_REG_TYPE_16BIT = common dso_local global i32 0, align 4
@VIA_REG_TYPE_STEREO = common dso_local global i32 0, align 4
@VIA_REG_TYPE_INT_LSAMPLE = common dso_local global i32 0, align 4
@VIA_REG_TYPE_INT_EOL = common dso_local global i32 0, align 4
@VIA_REG_TYPE_INT_FLAG = common dso_local global i32 0, align 4
@OFFSET_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via82xx*, %struct.viadev*, %struct.snd_pcm_runtime*)* @via686_setup_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via686_setup_format(%struct.via82xx* %0, %struct.viadev* %1, %struct.snd_pcm_runtime* %2) #0 {
  %4 = alloca %struct.via82xx*, align 8
  %5 = alloca %struct.viadev*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.via82xx* %0, %struct.via82xx** %4, align 8
  store %struct.viadev* %1, %struct.viadev** %5, align 8
  store %struct.snd_pcm_runtime* %2, %struct.snd_pcm_runtime** %6, align 8
  %7 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %8 = load %struct.viadev*, %struct.viadev** %5, align 8
  %9 = call i32 @snd_via82xx_channel_reset(%struct.via82xx* %7, %struct.viadev* %8)
  %10 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %11 = load %struct.viadev*, %struct.viadev** %5, align 8
  %12 = call i32 @snd_via82xx_set_table_ptr(%struct.via82xx* %10, %struct.viadev* %11)
  %13 = load i32, i32* @VIA_REG_TYPE_AUTOSTART, align 4
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @VIA_REG_TYPE_16BIT, align 4
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = or i32 %13, %23
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @VIA_REG_TYPE_STEREO, align 4
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = or i32 %24, %33
  %35 = load %struct.viadev*, %struct.viadev** %5, align 8
  %36 = getelementptr inbounds %struct.viadev, %struct.viadev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @VIA_REG_TYPE_INT_LSAMPLE, align 4
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %34, %44
  %46 = load i32, i32* @VIA_REG_TYPE_INT_EOL, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @VIA_REG_TYPE_INT_FLAG, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.viadev*, %struct.viadev** %5, align 8
  %51 = load i32, i32* @OFFSET_TYPE, align 4
  %52 = call i32 @VIADEV_REG(%struct.viadev* %50, i32 %51)
  %53 = call i32 @outb(i32 %49, i32 %52)
  ret void
}

declare dso_local i32 @snd_via82xx_channel_reset(%struct.via82xx*, %struct.viadev*) #1

declare dso_local i32 @snd_via82xx_set_table_ptr(%struct.via82xx*, %struct.viadev*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
