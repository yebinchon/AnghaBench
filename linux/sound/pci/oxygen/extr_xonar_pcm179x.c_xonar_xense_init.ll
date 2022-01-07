; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_xonar_xense_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_xonar_xense_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { i32, i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@OXYGEN_GPI_DATA = common dso_local global i32 0, align 4
@OXYGEN_GPI_INTERRUPT_MASK = common dso_local global i32 0, align 4
@GPI_EXT_POWER = common dso_local global i32 0, align 4
@CS2000_REF_CLK_DIV_1 = common dso_local global i32 0, align 4
@CS2000_FUN_CFG_1 = common dso_local global i64 0, align 8
@OXYGEN_I2S_A_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_RATE_48000 = common dso_local global i32 0, align 4
@OXYGEN_I2S_FORMAT_I2S = common dso_local global i32 0, align 4
@MCLK_512 = common dso_local global i32 0, align 4
@OXYGEN_I2S_BITS_16 = common dso_local global i32 0, align 4
@OXYGEN_I2S_MASTER = common dso_local global i32 0, align 4
@OXYGEN_I2S_BCLK_64 = common dso_local global i32 0, align 4
@GPIO_XENSE_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@OXYGEN_GPIO_CONTROL = common dso_local global i32 0, align 4
@GPIO_INPUT_ROUTE = common dso_local global i32 0, align 4
@GPIO_ST_HP_REAR = common dso_local global i32 0, align 4
@GPIO_ST_MAGIC = common dso_local global i32 0, align 4
@GPIO_XENSE_SPEAKERS = common dso_local global i32 0, align 4
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PCM1796\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CS5381\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CS2000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_xense_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_xense_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 1
  %6 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %5, align 8
  store %struct.xonar_pcm179x* %6, %struct.xonar_pcm179x** %3, align 8
  %7 = load i32, i32* @OXYGEN_GPI_DATA, align 4
  %8 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %9 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @OXYGEN_GPI_INTERRUPT_MASK, align 4
  %12 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %13 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @GPI_EXT_POWER, align 4
  %16 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %17 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %20 = call i32 @xonar_init_ext_power(%struct.oxygen* %19)
  %21 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %22 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 100, i32* %23, align 4
  %24 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %25 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* @CS2000_REF_CLK_DIV_1, align 4
  %27 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %28 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @CS2000_FUN_CFG_1, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %26, i32* %31, align 4
  %32 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %33 = load i32, i32* @OXYGEN_I2S_A_FORMAT, align 4
  %34 = load i32, i32* @OXYGEN_RATE_48000, align 4
  %35 = load i32, i32* @OXYGEN_I2S_FORMAT_I2S, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MCLK_512, align 4
  %38 = call i32 @OXYGEN_I2S_MCLK(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* @OXYGEN_I2S_BITS_16, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @OXYGEN_I2S_MASTER, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @OXYGEN_I2S_BCLK_64, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @oxygen_write16(%struct.oxygen* %32, i32 %33, i32 %45)
  %47 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %48 = call i32 @xonar_st_init_i2c(%struct.oxygen* %47)
  %49 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %50 = call i32 @cs2000_registers_init(%struct.oxygen* %49)
  %51 = load i32, i32* @GPIO_XENSE_OUTPUT_ENABLE, align 4
  %52 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %53 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %56 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %58 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %57, i32 0, i32 2
  store i32 -36, i32* %58, align 8
  %59 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %60 = call i32 @pcm1796_init(%struct.oxygen* %59)
  %61 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %62 = load i32, i32* @OXYGEN_GPIO_CONTROL, align 4
  %63 = load i32, i32* @GPIO_INPUT_ROUTE, align 4
  %64 = load i32, i32* @GPIO_ST_HP_REAR, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @GPIO_ST_MAGIC, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @GPIO_XENSE_SPEAKERS, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @oxygen_set_bits16(%struct.oxygen* %61, i32 %62, i32 %69)
  %71 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %72 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %73 = load i32, i32* @GPIO_INPUT_ROUTE, align 4
  %74 = load i32, i32* @GPIO_ST_HP_REAR, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @GPIO_XENSE_SPEAKERS, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @oxygen_clear_bits16(%struct.oxygen* %71, i32 %72, i32 %77)
  %79 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %80 = call i32 @xonar_init_cs53x1(%struct.oxygen* %79)
  %81 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %82 = call i32 @xonar_enable_output(%struct.oxygen* %81)
  %83 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %84 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @snd_component_add(i32 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %88 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @snd_component_add(i32 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %92 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @snd_component_add(i32 %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @xonar_init_ext_power(%struct.oxygen*) #1

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @OXYGEN_I2S_MCLK(i32) #1

declare dso_local i32 @xonar_st_init_i2c(%struct.oxygen*) #1

declare dso_local i32 @cs2000_registers_init(%struct.oxygen*) #1

declare dso_local i32 @pcm1796_init(%struct.oxygen*) #1

declare dso_local i32 @oxygen_set_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_clear_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @xonar_init_cs53x1(%struct.oxygen*) #1

declare dso_local i32 @xonar_enable_output(%struct.oxygen*) #1

declare dso_local i32 @snd_component_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
