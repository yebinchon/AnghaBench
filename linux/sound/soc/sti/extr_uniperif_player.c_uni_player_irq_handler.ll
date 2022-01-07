; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniperif = type { i64, i32, i32, i32, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@UNIPERIF_STATE_STOPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"FIFO underflow error detected\0A\00", align 1
@UNIPERIF_STATE_UNDERFLOW = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"DMA error detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unexpected Underflow recovering\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Underflow recovered (%d LR clocks max)\0A\00", align 1
@UNIPERIF_STATE_STARTED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Underflow recovery failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @uni_player_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni_player_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uniperif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @IRQ_NONE, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.uniperif*
  store %struct.uniperif* %11, %struct.uniperif** %6, align 8
  %12 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %13 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %16 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %140

20:                                               ; preds = %2
  %21 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %22 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snd_pcm_stream_lock(i32 %23)
  %25 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %26 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UNIPERIF_STATE_STOPPED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %135

31:                                               ; preds = %20
  %32 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %33 = call i32 @GET_UNIPERIF_ITS(%struct.uniperif* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @SET_UNIPERIF_ITS_BCLR(%struct.uniperif* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %39 = call i32 @UNIPERIF_ITS_FIFO_ERROR_MASK(%struct.uniperif* %38)
  %40 = and i32 %37, %39
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %31
  %44 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %45 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %49 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i64, i64* @UNIPERIF_STATE_UNDERFLOW, align 8
  %54 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %55 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %63

56:                                               ; preds = %43
  %57 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %58 = call i32 @SET_UNIPERIF_ITM_BCLR_FIFO_ERROR(%struct.uniperif* %57)
  %59 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %60 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snd_pcm_stop_xrun(i32 %61)
  br label %63

63:                                               ; preds = %56, %52
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %31
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %68 = call i32 @UNIPERIF_ITS_DMA_ERROR_MASK(%struct.uniperif* %67)
  %69 = and i32 %66, %68
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %74 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %78 = call i32 @SET_UNIPERIF_ITM_BCLR_DMA_ERROR(%struct.uniperif* %77)
  %79 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %80 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @snd_pcm_stop_xrun(i32 %81)
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %72, %65
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %87 = call i32 @UNIPERIF_ITM_UNDERFLOW_REC_DONE_MASK(%struct.uniperif* %86)
  %88 = and i32 %85, %87
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %84
  %92 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %93 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %98 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* @EPERM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %135

103:                                              ; preds = %91
  %104 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %105 = call i32 @GET_UNIPERIF_STATUS_1_UNDERFLOW_DURATION(%struct.uniperif* %104)
  store i32 %105, i32* %8, align 4
  %106 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %107 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @dev_dbg(i32 %108, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %112 = call i32 @SET_UNIPERIF_BIT_CONTROL_CLR_UNDERFLOW_DURATION(%struct.uniperif* %111)
  %113 = load i64, i64* @UNIPERIF_STATE_STARTED, align 8
  %114 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %115 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %103, %84
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %120 = call i32 @UNIPERIF_ITM_UNDERFLOW_REC_FAILED_MASK(%struct.uniperif* %119)
  %121 = and i32 %118, %120
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %126 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @dev_err(i32 %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %129 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %130 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @snd_pcm_stop_xrun(i32 %131)
  %133 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %124, %117
  br label %135

135:                                              ; preds = %134, %96, %30
  %136 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %137 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @snd_pcm_stream_unlock(i32 %138)
  br label %140

140:                                              ; preds = %135, %19
  %141 = load %struct.uniperif*, %struct.uniperif** %6, align 8
  %142 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %141, i32 0, i32 1
  %143 = call i32 @spin_unlock(i32* %142)
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_pcm_stream_lock(i32) #1

declare dso_local i32 @GET_UNIPERIF_ITS(%struct.uniperif*) #1

declare dso_local i32 @SET_UNIPERIF_ITS_BCLR(%struct.uniperif*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @UNIPERIF_ITS_FIFO_ERROR_MASK(%struct.uniperif*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @SET_UNIPERIF_ITM_BCLR_FIFO_ERROR(%struct.uniperif*) #1

declare dso_local i32 @snd_pcm_stop_xrun(i32) #1

declare dso_local i32 @UNIPERIF_ITS_DMA_ERROR_MASK(%struct.uniperif*) #1

declare dso_local i32 @SET_UNIPERIF_ITM_BCLR_DMA_ERROR(%struct.uniperif*) #1

declare dso_local i32 @UNIPERIF_ITM_UNDERFLOW_REC_DONE_MASK(%struct.uniperif*) #1

declare dso_local i32 @GET_UNIPERIF_STATUS_1_UNDERFLOW_DURATION(%struct.uniperif*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @SET_UNIPERIF_BIT_CONTROL_CLR_UNDERFLOW_DURATION(%struct.uniperif*) #1

declare dso_local i32 @UNIPERIF_ITM_UNDERFLOW_REC_FAILED_MASK(%struct.uniperif*) #1

declare dso_local i32 @snd_pcm_stream_unlock(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
