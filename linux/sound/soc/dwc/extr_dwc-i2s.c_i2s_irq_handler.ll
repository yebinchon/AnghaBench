; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_i2s_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_i2s_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2s_dev = type { i32, i64, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@ISR_TXFE = common dso_local global i32 0, align 4
@ISR_RXDA = common dso_local global i32 0, align 4
@ISR_TXFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TX overrun (ch_id=%d)\0A\00", align 1
@ISR_RXFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"RX overrun (ch_id=%d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i2s_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dw_i2s_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.dw_i2s_dev*
  store %struct.dw_i2s_dev* %11, %struct.dw_i2s_dev** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %17 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ISR(i32 %19)
  %21 = call i32 @i2s_read_reg(i32 %18, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %30 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %31 = call i32 @i2s_clear_irqs(%struct.dw_i2s_dev* %29, i32 %30)
  %32 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %33 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %34 = call i32 @i2s_clear_irqs(%struct.dw_i2s_dev* %32, i32 %33)
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %105, %28
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %108

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ISR_TXFE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %51 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %56 = call i32 @dw_pcm_push_tx(%struct.dw_i2s_dev* %55)
  store i32 1, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %49, %46, %38
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ISR_RXDA, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %70 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %75 = call i32 @dw_pcm_pop_rx(%struct.dw_i2s_dev* %74)
  store i32 1, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %68, %65, %57
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ISR_TXFO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %86 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %88)
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %84, %76
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ISR_RXFO, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %100 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  store i32 1, i32* %7, align 4
  br label %104

104:                                              ; preds = %98, %90
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %35

108:                                              ; preds = %35
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %112, i32* %3, align 4
  br label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @IRQ_NONE, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @i2s_read_reg(i32, i32) #1

declare dso_local i32 @ISR(i32) #1

declare dso_local i32 @i2s_clear_irqs(%struct.dw_i2s_dev*, i32) #1

declare dso_local i32 @dw_pcm_push_tx(%struct.dw_i2s_dev*) #1

declare dso_local i32 @dw_pcm_pop_rx(%struct.dw_i2s_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
