; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_snd_ps3.c_snd_ps3_program_dma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_snd_ps3.c_snd_ps3_program_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ps3_card_info = type { i32, i32, i32* }

@PS3_AUDIO_KICK_EVENT_ALWAYS = common dso_local global i32 0, align 4
@PS3_AUDIO_KICK_EVENT_SERIALOUT0_EMPTY = common dso_local global i32 0, align 4
@PS3_AUDIO_SOURCE_TARGET_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@PS3_AUDIO_DEST_TARGET_AUDIOFIFO = common dso_local global i32 0, align 4
@PS3_AUDIO_DMAC_BLOCK_SIZE = common dso_local global i32 0, align 4
@PS3_AUDIO_KICK_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ps3_card_info*, i32)* @snd_ps3_program_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ps3_program_dma(%struct.snd_ps3_card_info* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ps3_card_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.snd_ps3_card_info* %0, %struct.snd_ps3_card_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %20 [
    i32 129, label %14
    i32 131, label %15
    i32 128, label %17
    i32 130, label %18
  ]

14:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %15

15:                                               ; preds = %2, %14
  %16 = load i32, i32* @PS3_AUDIO_KICK_EVENT_ALWAYS, align 4
  store i32 %16, i32* %10, align 4
  br label %20

17:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %18

18:                                               ; preds = %2, %17
  %19 = load i32, i32* @PS3_AUDIO_KICK_EVENT_SERIALOUT0_EMPTY, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %2, %18, %15
  %21 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %22 = call i32 @snd_ps3_verify_dma_stop(%struct.snd_ps3_card_info* %21, i32 700, i32 0)
  store i32 4, i32* %6, align 4
  %23 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %24 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %23, i32 0, i32 1
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %114, %20
  %28 = load i32, i32* %9, align 4
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %117

30:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %110, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %113

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %44 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %5, align 4
  br label %57

46:                                               ; preds = %35
  %47 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %48 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %49 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @v_to_bus(%struct.snd_ps3_card_info* %47, i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %46, %42
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @PS3_AUDIO_SOURCE(i32 %58)
  %60 = load i32, i32* @PS3_AUDIO_SOURCE_TARGET_SYSTEM_MEMORY, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @write_reg(i32 %59, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @PS3_AUDIO_DEST(i32 %67)
  %69 = load i32, i32* @PS3_AUDIO_DEST_TARGET_AUDIOFIFO, align 4
  %70 = call i32 @PS3_AUDIO_AO_3W_LDATA(i32 0)
  %71 = or i32 %69, %70
  %72 = call i32 @write_reg(i32 %68, i32 %71)
  br label %80

73:                                               ; preds = %57
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @PS3_AUDIO_DEST(i32 %74)
  %76 = load i32, i32* @PS3_AUDIO_DEST_TARGET_AUDIOFIFO, align 4
  %77 = call i32 @PS3_AUDIO_AO_3W_RDATA(i32 0)
  %78 = or i32 %76, %77
  %79 = call i32 @write_reg(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %73, %66
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @PS3_AUDIO_DMASIZE(i32 %81)
  %83 = call i32 @write_reg(i32 %82, i32 0)
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @PS3_AUDIO_DMAC_BLOCK_SIZE, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @snd_ps3_bump_buffer(%struct.snd_ps3_card_info* %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %86, %80
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @PS3_AUDIO_KICK(i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @write_reg(i32 %97, i32 %98)
  br label %109

100:                                              ; preds = %92
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @PS3_AUDIO_KICK(i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call i32 @PS3_AUDIO_KICK_EVENT_AUDIO_DMA(i32 %104)
  %106 = load i32, i32* @PS3_AUDIO_KICK_REQUEST, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @write_reg(i32 %102, i32 %107)
  br label %109

109:                                              ; preds = %100, %95
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %31

113:                                              ; preds = %31
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %27

117:                                              ; preds = %27
  %118 = call i32 (...) @wmb()
  %119 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %120 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %119, i32 0, i32 1
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  ret i32 0
}

declare dso_local i32 @snd_ps3_verify_dma_stop(%struct.snd_ps3_card_info*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @v_to_bus(%struct.snd_ps3_card_info*, i32, i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @PS3_AUDIO_SOURCE(i32) #1

declare dso_local i32 @PS3_AUDIO_DEST(i32) #1

declare dso_local i32 @PS3_AUDIO_AO_3W_LDATA(i32) #1

declare dso_local i32 @PS3_AUDIO_AO_3W_RDATA(i32) #1

declare dso_local i32 @PS3_AUDIO_DMASIZE(i32) #1

declare dso_local i32 @snd_ps3_bump_buffer(%struct.snd_ps3_card_info*, i32, i32, i32) #1

declare dso_local i32 @PS3_AUDIO_KICK(i32) #1

declare dso_local i32 @PS3_AUDIO_KICK_EVENT_AUDIO_DMA(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
