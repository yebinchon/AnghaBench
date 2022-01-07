; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_modem = type { i32, i32, i32* }

@ISR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ATI_REG_ISR_MODEM_OUT1_XRUN = common dso_local global i32 0, align 4
@ATI_DMA_PLAYBACK = common dso_local global i64 0, align 8
@ATI_REG_ISR_MODEM_OUT1_STATUS = common dso_local global i32 0, align 4
@ATI_REG_ISR_MODEM_IN_XRUN = common dso_local global i32 0, align 4
@ATI_DMA_CAPTURE = common dso_local global i64 0, align 8
@ATI_REG_ISR_MODEM_IN_STATUS = common dso_local global i32 0, align 4
@CODEC_CHECK_BITS = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_atiixp_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.atiixp_modem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.atiixp_modem*
  store %struct.atiixp_modem* %10, %struct.atiixp_modem** %6, align 8
  %11 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %12 = load i32, i32* @ISR, align 4
  %13 = call i32 @atiixp_read(%struct.atiixp_modem* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %102

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ATI_REG_ISR_MODEM_OUT1_XRUN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %25 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %26 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @ATI_DMA_PLAYBACK, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = call i32 @snd_atiixp_xrun_dma(%struct.atiixp_modem* %24, i32* %29)
  br label %45

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ATI_REG_ISR_MODEM_OUT1_STATUS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %38 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %39 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @ATI_DMA_PLAYBACK, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @snd_atiixp_update_dma(%struct.atiixp_modem* %37, i32* %42)
  br label %44

44:                                               ; preds = %36, %31
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ATI_REG_ISR_MODEM_IN_XRUN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %52 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %53 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @ATI_DMA_CAPTURE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i32 @snd_atiixp_xrun_dma(%struct.atiixp_modem* %51, i32* %56)
  br label %72

58:                                               ; preds = %45
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @ATI_REG_ISR_MODEM_IN_STATUS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %65 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %66 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @ATI_DMA_CAPTURE, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = call i32 @snd_atiixp_update_dma(%struct.atiixp_modem* %64, i32* %69)
  br label %71

71:                                               ; preds = %63, %58
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @CODEC_CHECK_BITS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @CODEC_CHECK_BITS, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %8, align 4
  %81 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %82 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %81, i32 0, i32 1
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %86 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %90 = load i32, i32* @IER, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @atiixp_update(%struct.atiixp_modem* %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %94 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %93, i32 0, i32 1
  %95 = call i32 @spin_unlock(i32* %94)
  br label %96

96:                                               ; preds = %77, %72
  %97 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %98 = load i32, i32* @ISR, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @atiixp_write(%struct.atiixp_modem* %97, i32 %98, i32 %99)
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %96, %16
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @atiixp_read(%struct.atiixp_modem*, i32) #1

declare dso_local i32 @snd_atiixp_xrun_dma(%struct.atiixp_modem*, i32*) #1

declare dso_local i32 @snd_atiixp_update_dma(%struct.atiixp_modem*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atiixp_update(%struct.atiixp_modem*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atiixp_write(%struct.atiixp_modem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
