; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_start_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_start_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"image download error\0A\00", align 1
@BA1_PCTL = common dso_local global i32 0, align 4
@BA1_CCTL = common dso_local global i32 0, align 4
@BA1_PVOL = common dso_local global i32 0, align 4
@BA1_CVOL = common dso_local global i32 0, align 4
@CS46XX_DSP_MODULES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@module_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_cs46xx_start_dsp(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  %6 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %7 = call i32 @snd_cs46xx_reset(%struct.snd_cs46xx* %6)
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %9 = call i32 (%struct.snd_cs46xx*, ...) @load_firmware(%struct.snd_cs46xx* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %16 = call i32 @snd_cs46xx_download_image(%struct.snd_cs46xx* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %21 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %68

27:                                               ; preds = %14
  %28 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %29 = load i32, i32* @BA1_PCTL, align 4
  %30 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, -65536
  %33 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %34 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %36 = load i32, i32* @BA1_PCTL, align 4
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 65535
  %39 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %35, i32 %36, i32 %38)
  %40 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %41 = load i32, i32* @BA1_CCTL, align 4
  %42 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 65535
  %45 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %46 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %49 = load i32, i32* @BA1_CCTL, align 4
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, -65536
  %52 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %48, i32 %49, i32 %51)
  %53 = call i32 @mdelay(i32 5)
  %54 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %55 = call i32 @snd_cs46xx_set_play_sample_rate(%struct.snd_cs46xx* %54, i32 8000)
  %56 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %57 = call i32 @snd_cs46xx_set_capture_sample_rate(%struct.snd_cs46xx* %56, i32 8000)
  %58 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %59 = call i32 @snd_cs46xx_proc_start(%struct.snd_cs46xx* %58)
  %60 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %61 = call i32 @cs46xx_enable_stream_irqs(%struct.snd_cs46xx* %60)
  %62 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %63 = load i32, i32* @BA1_PVOL, align 4
  %64 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %62, i32 %63, i32 -2147450880)
  %65 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %66 = load i32, i32* @BA1_CVOL, align 4
  %67 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %65, i32 %66, i32 -2147450880)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %27, %19, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @snd_cs46xx_reset(%struct.snd_cs46xx*) #1

declare dso_local i32 @load_firmware(%struct.snd_cs46xx*, ...) #1

declare dso_local i32 @snd_cs46xx_download_image(%struct.snd_cs46xx*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @snd_cs46xx_set_play_sample_rate(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_cs46xx_set_capture_sample_rate(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_cs46xx_proc_start(%struct.snd_cs46xx*) #1

declare dso_local i32 @cs46xx_enable_stream_irqs(%struct.snd_cs46xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
