; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_dw_configure_dai_by_dt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_dw_configure_dai_by_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2s_dev = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i8*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i8*, i64 }
%struct.snd_soc_dai_driver = type { i32 }
%struct.resource = type { i64 }

@I2S_COMP_PARAM_1 = common dso_local global i32 0, align 4
@I2S_COMP_PARAM_2 = common dso_local global i32 0, align 4
@bus_widths = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_8000_192000 = common dso_local global i32 0, align 4
@DWC_I2S_PLAY = common dso_local global i32 0, align 4
@I2S_TXDMA = common dso_local global i64 0, align 8
@fifo_width = common dso_local global i64* null, align 8
@DWC_I2S_RECORD = common dso_local global i32 0, align 4
@I2S_RXDMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i2s_dev*, %struct.snd_soc_dai_driver*, %struct.resource*)* @dw_configure_dai_by_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_configure_dai_by_dt(%struct.dw_i2s_dev* %0, %struct.snd_soc_dai_driver* %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_i2s_dev*, align 8
  %6 = alloca %struct.snd_soc_dai_driver*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dw_i2s_dev* %0, %struct.dw_i2s_dev** %5, align 8
  store %struct.snd_soc_dai_driver* %1, %struct.snd_soc_dai_driver** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  %14 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %15 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @I2S_COMP_PARAM_1, align 4
  %18 = call i64 @i2s_read_reg(i32 %16, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %20 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @I2S_COMP_PARAM_2, align 4
  %23 = call i64 @i2s_read_reg(i32 %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @COMP1_FIFO_DEPTH_GLOBAL(i64 %24)
  %26 = add nsw i32 1, %25
  %27 = shl i32 1, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @COMP1_APB_DATA_WIDTH(i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i8**, i8*** @bus_widths, align 8
  %33 = call i64 @ARRAY_SIZE(i8** %32)
  %34 = icmp uge i64 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %139

41:                                               ; preds = %3
  %42 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %43 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %44 = load i32, i32* @SNDRV_PCM_RATE_8000_192000, align 4
  %45 = call i32 @dw_configure_dai(%struct.dw_i2s_dev* %42, %struct.snd_soc_dai_driver* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %4, align 4
  br label %139

50:                                               ; preds = %41
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @COMP1_TX_ENABLED(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @COMP1_TX_WORDSIZE_0(i64 %55)
  store i64 %56, i64* %12, align 8
  %57 = load i32, i32* @DWC_I2S_PLAY, align 4
  %58 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %59 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.resource*, %struct.resource** %7, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @I2S_TXDMA, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %68 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  store i64 %66, i64* %70, align 8
  %71 = load i8**, i8*** @bus_widths, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %76 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i8* %74, i8** %78, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64*, i64** @fifo_width, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = mul i64 %79, %83
  %85 = lshr i64 %84, 8
  %86 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %87 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i64 %85, i64* %89, align 8
  %90 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %91 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32 16, i32* %93, align 8
  br label %94

94:                                               ; preds = %54, %50
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @COMP1_RX_ENABLED(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %94
  %99 = load i64, i64* %9, align 8
  %100 = call i64 @COMP2_RX_WORDSIZE_0(i64 %99)
  store i64 %100, i64* %12, align 8
  %101 = load i32, i32* @DWC_I2S_RECORD, align 4
  %102 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %103 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.resource*, %struct.resource** %7, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @I2S_RXDMA, align 8
  %110 = add nsw i64 %108, %109
  %111 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %112 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  store i64 %110, i64* %114, align 8
  %115 = load i8**, i8*** @bus_widths, align 8
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %120 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  store i8* %118, i8** %122, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64*, i64** @fifo_width, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = lshr i64 %127, 8
  %129 = mul i64 %123, %128
  %130 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %131 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i64 %129, i64* %133, align 8
  %134 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %5, align 8
  %135 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store i32 16, i32* %137, align 8
  br label %138

138:                                              ; preds = %98, %94
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %48, %38
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @i2s_read_reg(i32, i32) #1

declare dso_local i32 @COMP1_FIFO_DEPTH_GLOBAL(i64) #1

declare dso_local i64 @COMP1_APB_DATA_WIDTH(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @dw_configure_dai(%struct.dw_i2s_dev*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i64 @COMP1_TX_ENABLED(i64) #1

declare dso_local i64 @COMP1_TX_WORDSIZE_0(i64) #1

declare dso_local i64 @COMP1_RX_ENABLED(i64) #1

declare dso_local i64 @COMP2_RX_WORDSIZE_0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
