; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_snd_ps3.c_snd_ps3_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_snd_ps3.c_snd_ps3_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ps3_card_info = type { i32, i64, i32 }

@PS3_AUDIO_AX_IS = common dso_local global i32 0, align 4
@PS3_AUDIO_INTR_0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL = common dso_local global i32 0, align 4
@SND_PS3_DMA_FILLTYPE_SILENT_RUNNING = common dso_local global i32 0, align 4
@SND_PS3_DMA_FILLTYPE_FIRSTFILL = common dso_local global i32 0, align 4
@SND_PS3_DMA_FILLTYPE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_ps3_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ps3_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_ps3_card_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.snd_ps3_card_info*
  store %struct.snd_ps3_card_info* %10, %struct.snd_ps3_card_info** %8, align 8
  %11 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %12 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @PS3_AUDIO_AX_IS, align 4
  %17 = call i32 @update_reg(i32 %16, i32 0)
  %18 = load i32, i32* @PS3_AUDIO_INTR_0, align 4
  %19 = call i32 @update_reg(i32 %18, i32 0)
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %20, i32* %3, align 4
  br label %102

21:                                               ; preds = %2
  %22 = load i32, i32* @PS3_AUDIO_AX_IS, align 4
  %23 = call i32 @read_reg(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @PS3_AUDIO_AX_IE_ASOBEIE(i32 0)
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %80

28:                                               ; preds = %21
  %29 = load i32, i32* @PS3_AUDIO_AX_IS, align 4
  %30 = call i32 @PS3_AUDIO_AX_IE_ASOBEIE(i32 0)
  %31 = call i32 @write_reg(i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @PS3_AUDIO_AX_IE_ASOBUIE(i32 0)
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @PS3_AUDIO_AX_IS, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @write_reg(i32 %37, i32 %38)
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %28
  %41 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %42 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @SND_PS3_DMA_FILLTYPE_SILENT_RUNNING, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = call i32 @snd_ps3_program_dma(%struct.snd_ps3_card_info* %46, i32 %54)
  %56 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %57 = call i32 @snd_ps3_kick_dma(%struct.snd_ps3_card_info* %56)
  %58 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %59 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  br label %79

62:                                               ; preds = %40
  %63 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @SND_PS3_DMA_FILLTYPE_FIRSTFILL, align 4
  br label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @SND_PS3_DMA_FILLTYPE_RUNNING, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = call i32 @snd_ps3_program_dma(%struct.snd_ps3_card_info* %63, i32 %71)
  %73 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %74 = call i32 @snd_ps3_kick_dma(%struct.snd_ps3_card_info* %73)
  %75 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %76 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @snd_pcm_period_elapsed(i32 %77)
  br label %79

79:                                               ; preds = %70, %53
  br label %100

80:                                               ; preds = %21
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @PS3_AUDIO_AX_IE_ASOBUIE(i32 0)
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load i32, i32* @PS3_AUDIO_AX_IS, align 4
  %87 = call i32 @PS3_AUDIO_AX_IE_ASOBUIE(i32 0)
  %88 = call i32 @write_reg(i32 %86, i32 %87)
  %89 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %90 = load i32, i32* @SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL, align 4
  %91 = call i32 @snd_ps3_program_dma(%struct.snd_ps3_card_info* %89, i32 %90)
  %92 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %93 = call i32 @snd_ps3_kick_dma(%struct.snd_ps3_card_info* %92)
  %94 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %95 = load i32, i32* @SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL, align 4
  %96 = call i32 @snd_ps3_program_dma(%struct.snd_ps3_card_info* %94, i32 %95)
  %97 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %8, align 8
  %98 = call i32 @snd_ps3_kick_dma(%struct.snd_ps3_card_info* %97)
  br label %99

99:                                               ; preds = %85, %80
  br label %100

100:                                              ; preds = %99, %79
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @update_reg(i32, i32) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @PS3_AUDIO_AX_IE_ASOBEIE(i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @PS3_AUDIO_AX_IE_ASOBUIE(i32) #1

declare dso_local i32 @snd_ps3_program_dma(%struct.snd_ps3_card_info*, i32) #1

declare dso_local i32 @snd_ps3_kick_dma(%struct.snd_ps3_card_info*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
