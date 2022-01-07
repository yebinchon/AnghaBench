; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_micfil_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_micfil_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_micfil = type { i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@REG_MICFIL_STAT = common dso_local global i32 0, align 4
@REG_MICFIL_CTRL1 = common dso_local global i32 0, align 4
@REG_MICFIL_FIFO_STAT = common dso_local global i32 0, align 4
@MICFIL_OUTPUT_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Data available in Data Channel %d\0A\00", align 1
@MICFIL_FIFO_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"FIFO Overflow Exception flag for channel %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"FIFO Underflow Exception flag for channel %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @micfil_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micfil_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsl_micfil*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.fsl_micfil*
  store %struct.fsl_micfil* %13, %struct.fsl_micfil** %5, align 8
  %14 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %15 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %14, i32 0, i32 1
  %16 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  store %struct.platform_device* %16, %struct.platform_device** %6, align 8
  %17 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %18 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @REG_MICFIL_STAT, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %7)
  %22 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %23 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @REG_MICFIL_CTRL1, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i32* %9)
  %27 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %28 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @REG_MICFIL_FIFO_STAT, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %8)
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @MICFIL_DMA_ENABLED(i32 %32)
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %61, %2
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @MICFIL_OUTPUT_CHANNELS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @MICFIL_STAT_CHXF_MASK(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %54 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @REG_MICFIL_STAT, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @MICFIL_STAT_CHXF_MASK(i32 %57)
  %59 = call i32 @regmap_write_bits(i32 %55, i32 %56, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %52, %49
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %34

64:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %92, %64
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @MICFIL_FIFO_NUM, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @MICFIL_FIFO_STAT_FIFOX_OVER_MASK(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @dev_dbg(i32* %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %69
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @MICFIL_FIFO_STAT_FIFOX_UNDER_MASK(i32 %82)
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @dev_dbg(i32* %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %86, %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %65

95:                                               ; preds = %65
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %96
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @MICFIL_DMA_ENABLED(i32) #1

declare dso_local i32 @MICFIL_STAT_CHXF_MASK(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @MICFIL_FIFO_STAT_FIFOX_OVER_MASK(i32) #1

declare dso_local i32 @MICFIL_FIFO_STAT_FIFOX_UNDER_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
