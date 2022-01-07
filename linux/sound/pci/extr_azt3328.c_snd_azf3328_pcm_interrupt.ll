; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_pcm_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_pcm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_azf3328 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_azf3328_codec_data = type { i32, i64, i32 }

@AZF_CODEC_PLAYBACK = common dso_local global i32 0, align 4
@AZF_CODEC_I2S_OUT = common dso_local global i32 0, align 4
@IDX_IO_CODEC_IRQTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s period done (#%x), @ %x\0A\00", align 1
@IDX_IO_CODEC_DMA_CURRPOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"irq handler problem!\0A\00", align 1
@IRQ_SOMETHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_azf3328*, %struct.snd_azf3328_codec_data*, i32)* @snd_azf3328_pcm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_azf3328_pcm_interrupt(%struct.snd_azf3328* %0, %struct.snd_azf3328_codec_data* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_azf3328*, align 8
  %5 = alloca %struct.snd_azf3328_codec_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_azf3328_codec_data*, align 8
  store %struct.snd_azf3328* %0, %struct.snd_azf3328** %4, align 8
  store %struct.snd_azf3328_codec_data* %1, %struct.snd_azf3328_codec_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %5, align 8
  store %struct.snd_azf3328_codec_data* %10, %struct.snd_azf3328_codec_data** %9, align 8
  %11 = load i32, i32* @AZF_CODEC_PLAYBACK, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %78, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @AZF_CODEC_I2S_OUT, align 4
  %15 = icmp ule i32 %13, %14
  br i1 %15, label %16, label %83

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %78

23:                                               ; preds = %16
  %24 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %9, align 8
  %25 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @spin_lock(i32 %26)
  %28 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %9, align 8
  %29 = load i32, i32* @IDX_IO_CODEC_IRQTYPE, align 4
  %30 = call i32 @snd_azf3328_codec_inb(%struct.snd_azf3328_codec_data* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %9, align 8
  %32 = load i32, i32* @IDX_IO_CODEC_IRQTYPE, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @snd_azf3328_codec_outb(%struct.snd_azf3328_codec_data* %31, i32 %32, i32 %33)
  %35 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %9, align 8
  %36 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @spin_unlock(i32 %37)
  %39 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %9, align 8
  %40 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %23
  %44 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %9, align 8
  %45 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @snd_pcm_period_elapsed(i64 %46)
  %48 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %49 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %9, align 8
  %54 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %9, align 8
  %58 = load i32, i32* @IDX_IO_CODEC_DMA_CURRPOS, align 4
  %59 = call i32 @snd_azf3328_codec_inl(%struct.snd_azf3328_codec_data* %57, i32 %58)
  %60 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %59)
  br label %68

61:                                               ; preds = %23
  %62 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %63 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_warn(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %61, %43
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @IRQ_SOMETHING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @snd_azf3328_irq_log_unknown_type(%struct.snd_azf3328* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %68
  br label %78

78:                                               ; preds = %77, %22
  %79 = load i32, i32* %8, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %8, align 4
  %81 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %9, align 8
  %82 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %81, i32 1
  store %struct.snd_azf3328_codec_data* %82, %struct.snd_azf3328_codec_data** %9, align 8
  br label %12

83:                                               ; preds = %12
  ret void
}

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @snd_azf3328_codec_inb(%struct.snd_azf3328_codec_data*, i32) #1

declare dso_local i32 @snd_azf3328_codec_outb(%struct.snd_azf3328_codec_data*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @snd_azf3328_codec_inl(%struct.snd_azf3328_codec_data*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_azf3328_irq_log_unknown_type(%struct.snd_azf3328*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
